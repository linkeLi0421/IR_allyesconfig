; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.zd_usb = type { %struct.zd_usb_interrupt, %struct.zd_usb_rx, %struct.zd_usb_tx, ptr, %struct.usb_anchor, ptr, i32, [64 x i8], i8 }
%struct.zd_usb_interrupt = type { %struct.read_regs_int, %struct.spinlock, ptr, ptr, i32, i32, %struct.atomic_t, i8 }
%struct.read_regs_int = type { %struct.completion, ptr, i32, [64 x i8], i32, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.zd_usb_rx = type { %struct.spinlock, %struct.mutex, %struct.delayed_work, %struct.tasklet_struct, [9600 x i8], i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.zd_usb_tx = type { %struct.atomic_t, %struct.spinlock, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, i32, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_int_header = type { i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.zd_mac = type { %struct.zd_chip, %struct.spinlock, %struct.spinlock, ptr, ptr, %struct.housekeeping, %struct.beacon, %struct.work_struct, %struct.work_struct, %struct.zd_mc_hash, [64 x i8], i8, i8, i8, i32, i32, i32, %struct.sk_buff_head, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, i8, i32 }
%struct.zd_chip = type { %struct.zd_usb, %struct.zd_rf, %struct.mutex, i16, [14 x i8], [14 x i8], [3 x [14 x i8]], i16, i16 }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.housekeeping = type { %struct.delayed_work }
%struct.beacon = type { %struct.delayed_work, ptr, i32, i16, i8 }
%struct.zd_mc_hash = type { i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.reg_data = type { i16, i16 }
%struct.usb_req_write_regs = type { i16, [0 x %struct.reg_data] }
%struct.zd_ioreq16 = type { i16, i16 }
%struct.usb_req_read_regs = type { i16, [0 x i16] }
%struct.rx_length_info = type { [3 x i16], i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }

@__UNIQUE_ID_file357 = internal constant [59 x i8] c"zd1211rw.file=drivers/net/wireless/zydas/zd1211rw/zd1211rw\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [21 x i8] c"zd1211rw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [66 x i8] c"zd1211rw.description=USB driver for devices with the ZD1211 chip.\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [30 x i8] c"zd1211rw.author=Ulrich Kunitz\00", section ".modinfo", align 1
@__UNIQUE_ID_author361 = internal constant [29 x i8] c"zd1211rw.author=Daniel Drake\00", section ".modinfo", align 1
@__UNIQUE_ID_version362 = internal constant [21 x i8] c"zd1211rw.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_firmware363 = internal constant [36 x i8] c"zd1211rw.firmware=zd1211/zd1211b_ur\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [35 x i8] c"zd1211rw.firmware=zd1211/zd1211_ur\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [36 x i8] c"zd1211rw.firmware=zd1211/zd1211b_ub\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [35 x i8] c"zd1211rw.firmware=zd1211/zd1211_ub\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [38 x i8] c"zd1211rw.firmware=zd1211/zd1211b_uphr\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware368 = internal constant [37 x i8] c"zd1211rw.firmware=zd1211/zd1211_uphr\00", section ".modinfo", align 1
@zd_usb_read_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"read over firmware interface failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd_usb_read_fw\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_usb.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd_usb_read_fw._entry_ptr = internal global ptr @zd_usb_read_fw._entry, section ".printk_index", align 4
@zd_usb_read_fw._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"incomplete read over firmware interface: %d/%d\0A\00", [48 x i8] zeroinitializer }, align 32
@zd_usb_read_fw._entry_ptr.10 = internal global ptr @zd_usb_read_fw._entry.8, section ".printk_index", align 4
@zd_usb_enable_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 520, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s() \0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_usb_enable_int\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@zd_usb_enable_int._entry_ptr = internal global ptr @zd_usb_enable_int._entry, section ".printk_index", align 4
@zd_usb_enable_int.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.5, ptr @.str.14, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [300 x i8], [84 x i8] } { [300 x i8] c"!({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); })\00", [84 x i8] zeroinitializer }, align 32
@zd_usb_enable_int._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 543, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s() couldn't allocate transfer_buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@zd_usb_enable_int._entry_ptr.18 = internal global ptr @zd_usb_enable_int._entry.16, section ".printk_index", align 4
@zd_usb_enable_int._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.5, i32 554, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() submit urb %p\0A\00", [44 x i8] zeroinitializer }, align 32
@zd_usb_enable_int._entry_ptr.21 = internal global ptr @zd_usb_enable_int._entry.19, section ".printk_index", align 4
@zd_usb_enable_int._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.5, i32 558, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s() Couldn't submit urb. Error number %d\0A\00", [53 x i8] zeroinitializer }, align 32
@zd_usb_enable_int._entry_ptr.24 = internal global ptr @zd_usb_enable_int._entry.22, section ".printk_index", align 4
@zd_usb_disable_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 598, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() urb %p killed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zd_usb_disable_int\00", [45 x i8] zeroinitializer }, align 32
@zd_usb_disable_int._entry_ptr = internal global ptr @zd_usb_disable_int._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zd_usb_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 1043, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() error submit urb %p %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zd_usb_tx\00", [22 x i8] zeroinitializer }, align 32
@zd_usb_tx._entry_ptr = internal global ptr @zd_usb_tx._entry, section ".printk_index", align 4
@zd_tx_watchdog_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.29, ptr @.str.5, i32 1108, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zd_tx_watchdog_enable\00", [42 x i8] zeroinitializer }, align 32
@zd_tx_watchdog_enable._entry_ptr = internal global ptr @zd_tx_watchdog_enable._entry, section ".printk_index", align 4
@zd_workqueue = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@zd_tx_watchdog_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.30, ptr @.str.5, i32 1120, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd_tx_watchdog_disable\00", [41 x i8] zeroinitializer }, align 32
@zd_tx_watchdog_disable._entry_ptr = internal global ptr @zd_tx_watchdog_disable._entry, section ".printk_index", align 4
@zd_usb_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.31, ptr @.str.5, i32 1320, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd_usb_init_hw\00", [17 x i8] zeroinitializer }, align 32
@zd_usb_init_hw._entry_ptr = internal global ptr @zd_usb_init_hw._entry, section ".printk_index", align 4
@zd_usb_init_hw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 1325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't load firmware. Error number %d\0A\00", [55 x i8] zeroinitializer }, align 32
@zd_usb_init_hw._entry_ptr.34 = internal global ptr @zd_usb_init_hw._entry.32, section ".printk_index", align 4
@zd_usb_init_hw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.5, i32 1332, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s() couldn't reset configuration. Error number %d\0A\00", [44 x i8] zeroinitializer }, align 32
@zd_usb_init_hw._entry_ptr.37 = internal global ptr @zd_usb_init_hw._entry.35, section ".printk_index", align 4
@zd_usb_init_hw._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.5, i32 1339, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s() couldn't initialize mac. Error number %d\0A\00", [49 x i8] zeroinitializer }, align 32
@zd_usb_init_hw._entry_ptr.40 = internal global ptr @zd_usb_init_hw._entry.38, section ".printk_index", align 4
@usb_exit.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 1, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s usb_exit()\0A\00", [17 x i8] zeroinitializer }, align 32
@driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @probe, ptr @disconnect, ptr null, ptr null, ptr null, ptr null, ptr @pre_reset, ptr @post_reset, ptr @usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_zd1211rw__379_1569_usb_init6 = internal global ptr @usb_init, section ".initcall6.init", align 4
@__exitcall_usb_exit = internal global ptr @usb_exit, section ".exitcall.exit", align 4
@zd_usb_ioread16v._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 1704, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() error: count is zero\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd_usb_ioread16v\00", [47 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr = internal global ptr @zd_usb_ioread16v._entry, section ".printk_index", align 4
@zd_usb_ioread16v._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 1710, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() error: count %u exceeds possible max %u\0A\00", [50 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.47 = internal global ptr @zd_usb_ioread16v._entry.45, section ".printk_index", align 4
@zd_usb_ioread16v._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 1715, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s() error: usb interrupt not enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.50 = internal global ptr @zd_usb_ioread16v._entry.48, section ".printk_index", align 4
@zd_usb_ioread16v.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.5, ptr @.str.14, i8 1, i8 -83, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)\00", [51 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.5, i32 1739, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s() error in zd_ep_regs_out_msg(). Error number %d\0A\00", [43 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.54 = internal global ptr @zd_usb_ioread16v._entry.52, section ".printk_index", align 4
@zd_usb_ioread16v._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.5, i32 1745, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s() error in zd_ep_regs_out_msg()\0A req_len %d != actual_req_len %d\0A\00", [59 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.57 = internal global ptr @zd_usb_ioread16v._entry.55, section ".printk_index", align 4
@zd_usb_ioread16v._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.5, i32 1754, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() read timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.60 = internal global ptr @zd_usb_ioread16v._entry.58, section ".printk_index", align 4
@zd_usb_ioread16v._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.44, ptr @.str.5, i32 1762, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() read retry, tries so far: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@zd_usb_ioread16v._entry_ptr.63 = internal global ptr @zd_usb_ioread16v._entry.61, section ".printk_index", align 4
@zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.14, i8 1, i8 -60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zd_usb_iowrite16v_async_start\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"usb_anchor_empty(&usb->submitted_cmds)\00", [57 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.14, i8 1, i8 -59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb->urb_async_waiting == ((void *)0)\00", [58 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.14, i8 1, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!usb->in_async\00", [17 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.14, i8 1, i8 -59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.14, i8 1, i8 -56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zd_usb_iowrite16v_async_end\00", [36 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.14, i8 1, i8 -56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb->in_async\00", [18 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.5, i32 1834, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s() error in zd_submit_waiting_usb(). Error number %d\0A\00", [40 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_end._entry_ptr = internal global ptr @zd_usb_iowrite16v_async_end._entry, section ".printk_index", align 4
@zd_usb_iowrite16v_async_end._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.5, i32 1846, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() timed out\00", [17 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async_end._entry_ptr.73 = internal global ptr @zd_usb_iowrite16v_async_end._entry.71, section ".printk_index", align 4
@zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.5, ptr @.str.14, i8 1, i8 -45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zd_usb_iowrite16v_async\00", [40 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.5, ptr @.str.14, i8 1, i8 -45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@zd_usb_iowrite16v_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.74, ptr @.str.5, i32 1876, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async._entry_ptr = internal global ptr @zd_usb_iowrite16v_async._entry, section ".printk_index", align 4
@zd_usb_iowrite16v_async._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.74, ptr @.str.5, i32 1922, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@zd_usb_iowrite16v_async._entry_ptr.76 = internal global ptr @zd_usb_iowrite16v_async._entry.75, section ".printk_index", align 4
@zd_usb_rfwrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1962, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s() error: bits %d are smaller than USB_MIN_RFWRITE_BIT_COUNT %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd_usb_rfwrite\00", [17 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr = internal global ptr @zd_usb_rfwrite._entry, section ".printk_index", align 4
@zd_usb_rfwrite._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 1968, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s() error: bits %d exceed USB_MAX_RFWRITE_BIT_COUNT %d\0A\00", [39 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.81 = internal global ptr @zd_usb_rfwrite._entry.79, section ".printk_index", align 4
@zd_usb_rfwrite._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.5, i32 1975, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s() error: value %#09x has bits >= %d set\0A\00", [52 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.84 = internal global ptr @zd_usb_rfwrite._entry.82, section ".printk_index", align 4
@zd_usb_rfwrite._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.5, i32 1980, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() value %#09x bits %d\0A\00", [38 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.87 = internal global ptr @zd_usb_rfwrite._entry.85, section ".printk_index", align 4
@zd_usb_rfwrite._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.5, i32 1985, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s() error %d: Couldn't read ZD_CR203\0A\00", [57 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.90 = internal global ptr @zd_usb_rfwrite._entry.88, section ".printk_index", align 4
@zd_usb_rfwrite.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.5, ptr @.str.14, i8 1, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@zd_usb_rfwrite._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.78, ptr @.str.5, i32 2016, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.92 = internal global ptr @zd_usb_rfwrite._entry.91, section ".printk_index", align 4
@zd_usb_rfwrite._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.78, ptr @.str.5, i32 2022, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s() error in zd_ep_regs_out_msg() req_len %d != actual_req_len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@zd_usb_rfwrite._entry_ptr.95 = internal global ptr @zd_usb_rfwrite._entry.93, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@int_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 439, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s() urb %p error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"int_urb_complete\00", [47 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr = internal global ptr @int_urb_complete._entry, section ".printk_index", align 4
@int_urb_complete._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 442, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr.99 = internal global ptr @int_urb_complete._entry.98, section ".printk_index", align 4
@int_urb_complete._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.97, ptr @.str.5, i32 447, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() error: urb %p to small\0A\00", [35 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr.102 = internal global ptr @int_urb_complete._entry.100, section ".printk_index", align 4
@int_urb_complete._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.97, ptr @.str.5, i32 453, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() error: urb %p wrong type\0A\00", [33 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr.105 = internal global ptr @int_urb_complete._entry.103, section ".printk_index", align 4
@int_urb_complete._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.97, ptr @.str.5, i32 474, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() error: urb %p unknown id %x\0A\00", [62 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr.108 = internal global ptr @int_urb_complete._entry.106, section ".printk_index", align 4
@int_urb_complete._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.97, ptr @.str.5, i32 482, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s() error: resubmit urb %p err code %d\0A\00", [55 x i8] zeroinitializer }, align 32
@int_urb_complete._entry_ptr.111 = internal global ptr @int_urb_complete._entry.109, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@check_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.5, i32 1634, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s() error: actual length %d less than expected %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_read_regs\00", [16 x i8] zeroinitializer }, align 32
@check_read_regs._entry_ptr = internal global ptr @check_read_regs._entry, section ".printk_index", align 4
@check_read_regs._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.5, i32 1641, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s() error: actual length %d exceeds buffer size %zu\0A\00", [42 x i8] zeroinitializer }, align 32
@check_read_regs._entry_ptr.116 = internal global ptr @check_read_regs._entry.114, section ".printk_index", align 4
@check_read_regs._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.5, i32 1651, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s() rd[%d] addr %#06hx expected %#06hx\0A\00", [55 x i8] zeroinitializer }, align 32
@check_read_regs._entry_ptr.119 = internal global ptr @check_read_regs._entry.117, section ".printk_index", align 4
@__zd_usb_enable_rx._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.120, ptr @.str.5, i32 751, ptr @.str.13, ptr @.str.7 }, align 1
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__zd_usb_enable_rx\00", [45 x i8] zeroinitializer }, align 32
@__zd_usb_enable_rx._entry_ptr = internal global ptr @__zd_usb_enable_rx._entry, section ".printk_index", align 4
@__zd_usb_enable_rx.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.5, ptr @.str.14, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rx_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.121, ptr @.str.5, i32 665, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_urb_complete\00", [16 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry_ptr = internal global ptr @rx_urb_complete._entry, section ".printk_index", align 4
@rx_urb_complete._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.121, ptr @.str.5, i32 668, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry_ptr.123 = internal global ptr @rx_urb_complete._entry.122, section ".printk_index", align 4
@rx_urb_complete._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.121, ptr @.str.5, i32 681, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() *** first fragment ***\0A\00", [35 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry_ptr.126 = internal global ptr @rx_urb_complete._entry.124, section ".printk_index", align 4
@rx_urb_complete.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.5, ptr @.str.14, i8 0, i8 -86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [184 x i8], [40 x i8] } { [184 x i8] c"length <= (sizeof(rx->fragment) / sizeof((rx->fragment)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((rx->fragment)), typeof(&(rx->fragment)[0])))); }))))\00", [40 x i8] zeroinitializer }, align 32
@rx_urb_complete.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.5, ptr @.str.14, i8 0, i8 -83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [206 x i8], [50 x i8] } { [206 x i8] c"length + rx->fragment_length <= (sizeof(rx->fragment) / sizeof((rx->fragment)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((rx->fragment)), typeof(&(rx->fragment)[0])))); }))))\00", [50 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.121, ptr @.str.5, i32 695, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() *** second fragment ***\0A\00", [34 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry_ptr.131 = internal global ptr @rx_urb_complete._entry.129, section ".printk_index", align 4
@rx_urb_complete._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.121, ptr @.str.5, i32 709, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() urb %p resubmit error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rx_urb_complete._entry_ptr.134 = internal global ptr @rx_urb_complete._entry.132, section ".printk_index", align 4
@handle_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.5, i32 613, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s() invalid, small RX packet : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_rx_packet\00", [47 x i8] zeroinitializer }, align 32
@handle_rx_packet._entry_ptr = internal global ptr @handle_rx_packet._entry, section ".printk_index", align 4
@tx_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.137, ptr @.str.5, i32 981, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_urb_complete\00", [16 x i8] zeroinitializer }, align 32
@tx_urb_complete._entry_ptr = internal global ptr @tx_urb_complete._entry, section ".printk_index", align 4
@tx_urb_complete._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.137, ptr @.str.5, i32 984, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@tx_urb_complete._entry_ptr.139 = internal global ptr @tx_urb_complete._entry.138, section ".printk_index", align 4
@tx_urb_complete._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.137, ptr @.str.5, i32 998, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() error resubmit urb %p %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tx_urb_complete._entry_ptr.142 = internal global ptr @tx_urb_complete._entry.140, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.144 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@init_usb_interrupt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&intr->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@init_usb_tx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tx->lock\00", [22 x i8] zeroinitializer }, align 32
@init_usb_tx.__key.149 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&tx->watchdog_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@init_usb_tx.__key.151 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&tx->watchdog_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@zd_tx_watchdog_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.5, i32 1092, ptr @.str.156, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TX-stall detected, resetting device...\00", [57 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd_tx_watchdog_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zd_tx_watchdog_handler._entry_ptr = internal global ptr @zd_tx_watchdog_handler._entry, section ".printk_index", align 4
@init_usb_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rx->lock\00", [22 x i8] zeroinitializer }, align 32
@init_usb_rx.__key.158 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rx->setup_mutex\00", [47 x i8] zeroinitializer }, align 32
@init_usb_rx.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.160, ptr @.str.5, ptr @.str.14, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_usb_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx->fragment_length == 0\00", [39 x i8] zeroinitializer }, align 32
@init_usb_rx.__key.162 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&rx->idle_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@init_usb_rx.__key.164 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.165 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&rx->idle_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@zd_rx_idle_timer_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.166, ptr @.str.5, i32 1135, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zd_rx_idle_timer_handler\00", [39 x i8] zeroinitializer }, align 32
@zd_rx_idle_timer_handler._entry_ptr = internal global ptr @zd_rx_idle_timer_handler._entry, section ".printk_index", align 4
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%04hx:%04hx v%04hx %s\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown speed\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ub\00", [29 x i8] zeroinitializer }, align 32
@upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.5, i32 280, ptr @.str.175, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"firmware version %#06x and device bootcode version %#06x differ\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"upload_firmware\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@upload_firmware._entry_ptr = internal global ptr @upload_firmware._entry, section ".printk_index", align 4
@upload_firmware._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.174, ptr @.str.5, i32 283, ptr @.str.156, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"device has old bootcode, please report success or failure\0A\00", [37 x i8] zeroinitializer }, align 32
@upload_firmware._entry_ptr.178 = internal global ptr @upload_firmware._entry.176, section ".printk_index", align 4
@upload_firmware._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.174, ptr @.str.5, i32 291, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s() firmware device id %#06x is equal to the actual device id\0A\00", [32 x i8] zeroinitializer }, align 32
@upload_firmware._entry_ptr.181 = internal global ptr @upload_firmware._entry.179, section ".printk_index", align 4
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uphr\00", [27 x i8] zeroinitializer }, align 32
@upload_firmware._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.174, ptr @.str.5, i32 305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Could not upload firmware code uph. Error number %d\0A\00", [43 x i8] zeroinitializer }, align 32
@upload_firmware._entry_ptr.185 = internal global ptr @upload_firmware._entry.183, section ".printk_index", align 4
@request_fw_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.5, i32 112, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s() fw name %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request_fw_file\00", [16 x i8] zeroinitializer }, align 32
@request_fw_file._entry_ptr = internal global ptr @request_fw_file._entry, section ".printk_index", align 4
@request_fw_file._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.5, i32 118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not load firmware file %s. Error number %d\0A\00", [46 x i8] zeroinitializer }, align 32
@request_fw_file._entry_ptr.190 = internal global ptr @request_fw_file._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd1211/zd1211b_\00", [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd1211/zd1211_\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ur\00", [29 x i8] zeroinitializer }, align 32
@upload_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.5, i32 153, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() transfer size %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"upload_code\00", [20 x i8] zeroinitializer }, align 32
@upload_code._entry_ptr = internal global ptr @upload_code._entry, section ".printk_index", align 4
@upload_code._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.5, i32 163, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"USB control request for firmware upload failed. Error number %d\0A\00", [63 x i8] zeroinitializer }, align 32
@upload_code._entry_ptr.199 = internal global ptr @upload_code._entry.197, section ".printk_index", align 4
@upload_code._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.196, ptr @.str.5, i32 184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"control request firmware confirmation failed. Return value %d\0A\00", [33 x i8] zeroinitializer }, align 32
@upload_code._entry_ptr.202 = internal global ptr @upload_code._entry.200, section ".printk_index", align 4
@upload_code._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.196, ptr @.str.5, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Internal error while downloading. Firmware confirm return value %#04x\0A\00", [57 x i8] zeroinitializer }, align 32
@upload_code._entry_ptr.205 = internal global ptr @upload_code._entry.203, section ".printk_index", align 4
@upload_code._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.196, ptr @.str.5, i32 199, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() firmware confirm return value %#04x\0A\00", [54 x i8] zeroinitializer }, align 32
@upload_code._entry_ptr.208 = internal global ptr @upload_code._entry.206, section ".printk_index", align 4
@usb_ids = internal constant { [59 x %struct.usb_device_id], [376 x i8] } { [59 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 261, i16 5215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13319, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 13321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1947, i16 74, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2766, i16 4625, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2766, i16 -24047, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 5900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2875, i16 5680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2875, i16 22064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 -28559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 -28555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4719, i16 -24570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4763, i16 5734, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 30, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 1809, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5354, i16 -21744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5354, i16 -21741, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12804, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5502, i16 12807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 26769, i16 -22745, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 83, i16 21249, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1033, i16 584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1041, i16 218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1137, i16 4662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1137, i16 4663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1293, i16 28764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1356, i16 599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1414, i16 13322, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1414, i16 13327, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1414, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1414, i16 13330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1414, i16 13331, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1947, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2042, i16 4502, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 17669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 -6911, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 -6909, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 -6906, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2766, i16 4629, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2766, i16 -19947, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2821, i16 5915, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2991, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3294, i16 26, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3574, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4763, i16 5735, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5041, i16 36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5502, i16 12301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5506, i16 24579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8217, i16 21251, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4863, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2766, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2766, i16 8447, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [376 x i8] zeroinitializer }, align 32
@probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.5, i32 1365, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() Unknown USB speed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@probe._entry_ptr = internal global ptr @probe._entry, section ".printk_index", align 4
@probe._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.5, i32 1373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"couldn't reset usb device. Error number %d\0A\00", [52 x i8] zeroinitializer }, align 32
@probe._entry_ptr.213 = internal global ptr @probe._entry.211, section ".printk_index", align 4
@probe._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.210, ptr @.str.5, i32 1389, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@probe._entry_ptr.215 = internal global ptr @probe._entry.214, section ".printk_index", align 4
@probe._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.210, ptr @.str.5, i32 1396, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s() couldn't register device. Error number %d\0A\00", [48 x i8] zeroinitializer }, align 32
@probe._entry_ptr.218 = internal global ptr @probe._entry.216, section ".printk_index", align 4
@probe._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.210, ptr @.str.5, i32 1400, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s() successful\0A\00", [47 x i8] zeroinitializer }, align 32
@probe._entry_ptr.221 = internal global ptr @probe._entry.219, section ".printk_index", align 4
@probe._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.210, ptr @.str.5, i32 1401, ptr @.str.175, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@probe._entry_ptr.224 = internal global ptr @probe._entry.222, section ".printk_index", align 4
@print_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.5, i32 1254, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s() %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"print_id\00", [23 x i8] zeroinitializer }, align 32
@print_id._entry_ptr = internal global ptr @print_id._entry, section ".printk_index", align 4
@eject_installer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.5, i32 1283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"zd1211rw: Could not find bulk out endpoint\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eject_installer\00", [16 x i8] zeroinitializer }, align 32
@eject_installer._entry_ptr = internal global ptr @eject_installer._entry, section ".printk_index", align 4
@eject_installer._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.5, i32 1301, ptr @.str.175, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Ejecting virtual installer media...\0A\00", [59 x i8] zeroinitializer }, align 32
@eject_installer._entry_ptr.231 = internal global ptr @eject_installer._entry.229, section ".printk_index", align 4
@disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.232, ptr @.str.5, i32 1426, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@disconnect._entry_ptr = internal global ptr @disconnect._entry, section ".printk_index", align 4
@disconnect.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.232, ptr @.str.5, ptr @.str.233, i8 1, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@zd_usb_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.234, ptr @.str.5, i32 1476, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zd_usb_stop\00", [20 x i8] zeroinitializer }, align 32
@zd_usb_stop._entry_ptr = internal global ptr @zd_usb_stop._entry, section ".printk_index", align 4
@zd_usb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.235, ptr @.str.5, i32 1452, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zd_usb_resume\00", [18 x i8] zeroinitializer }, align 32
@zd_usb_resume._entry_ptr = internal global ptr @zd_usb_resume._entry, section ".printk_index", align 4
@zd_usb_resume._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.235, ptr @.str.5, i32 1457, ptr @.str.156, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Device resume failed with error code %d. Retrying...\0A\00", [42 x i8] zeroinitializer }, align 32
@zd_usb_resume._entry_ptr.238 = internal global ptr @zd_usb_resume._entry.236, section ".printk_index", align 4
@zd_usb_resume.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.235, ptr @.str.5, ptr @.str.239, i8 1, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to restore settings, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_init.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.240, ptr @.str.5, ptr @.str.241, i8 1, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_init\00", [23 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s usb_init()\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.240, ptr @.str.5, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s couldn't create workqueue\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_init._entry_ptr = internal global ptr @usb_init._entry, section ".printk_index", align 4
@usb_init._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.240, ptr @.str.5, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s usb_register() failed. Error number %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_init._entry_ptr.246 = internal global ptr @usb_init._entry.244, section ".printk_index", align 4
@usb_init.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.240, ptr @.str.5, ptr @.str.247, i8 1, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.247 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s initialized\0A\00", [16 x i8] zeroinitializer }, align 32
@get_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.5, i32 1679, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() error: invalid read regs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_results\00", [20 x i8] zeroinitializer }, align 32
@get_results._entry_ptr = internal global ptr @get_results._entry, section ".printk_index", align 4
@zd_submit_waiting_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.5, i32 1799, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s() error in usb_submit_urb(). Error number %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zd_submit_waiting_urb\00", [42 x i8] zeroinitializer }, align 32
@zd_submit_waiting_urb._entry_ptr = internal global ptr @zd_submit_waiting_urb._entry, section ".printk_index", align 4
@switch.table.zd_usb_scnprint_id = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.170], [20 x i8] zeroinitializer }, align 32
@switch.table.probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.170], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967274, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 8, i64 144, i64 160]
@__sancov_gen_cov_switch_values.253 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967274, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.254 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967274, i64 4294967277, i64 4294967294]
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 95, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 338, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 342, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 520, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 528, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 542, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 554, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 557, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 598, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1043, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1108, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [13 x i8] c"zd_workqueue\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1536, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1120, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1320, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1324, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1331, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1338, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1564, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1526, i32 26 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1704, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1708, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1714, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1719, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1738, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1743, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1754, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1761, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1811, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1812, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1813, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1826, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1827, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1832, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1846, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1868, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1874, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1920, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1959, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1966, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1973, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1980, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1984, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 2015, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 2020, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 439, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 442, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 447, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 453, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 473, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 481, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1632, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1639, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1648, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 751, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 665, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 668, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 681, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 682, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 693, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 695, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 709, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 612, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 981, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 984, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 998, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1367, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.646, i32 1368, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1159, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 87, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1188, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1195, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.682, i32 1984, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1092, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1170, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1171, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1177, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1178, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1135, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1234, i32 33 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1222, i32 10 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1224, i32 10 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1226, i32 10 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1228, i32 10 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 270, i32 46 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 278, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 282, i32 4 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 289, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 296, i32 46 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 303, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 112, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 116, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 217, i32 26 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 219, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 219, i32 24 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 234, i32 46 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 153, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 161, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 182, i32 4 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 191, i32 4 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 198, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant [8 x i8] c"usb_ids\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 26, i32 35 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1365, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1372, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1388, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1395, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1400, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1401, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1254, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1282, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1301, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1426, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1444, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1476, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1452, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1456, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1467, i32 4 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1542, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1544, i32 17 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1546, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1553, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1558, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1679, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.976 = private constant [48 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.976, i32 1798, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant [32 x i8] c"switch.table.zd_usb_scnprint_id\00", align 1
@___asan_gen_.979 = private unnamed_addr constant [19 x i8] c"switch.table.probe\00", align 1
@llvm.compiler.used = appending global [341 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmware368, ptr @__UNIQUE_ID_license358, ptr @__UNIQUE_ID_version362, ptr @__exitcall_usb_exit, ptr @__initcall__kmod_zd1211rw__379_1569_usb_init6, ptr @__modver_attr, ptr @__zd_usb_enable_rx._entry, ptr @__zd_usb_enable_rx._entry_ptr, ptr @check_read_regs._entry, ptr @check_read_regs._entry.114, ptr @check_read_regs._entry.117, ptr @check_read_regs._entry_ptr, ptr @check_read_regs._entry_ptr.116, ptr @check_read_regs._entry_ptr.119, ptr @disconnect._entry, ptr @disconnect._entry_ptr, ptr @eject_installer._entry, ptr @eject_installer._entry.229, ptr @eject_installer._entry_ptr, ptr @eject_installer._entry_ptr.231, ptr @get_results._entry, ptr @get_results._entry_ptr, ptr @handle_rx_packet._entry, ptr @handle_rx_packet._entry_ptr, ptr @int_urb_complete._entry, ptr @int_urb_complete._entry.100, ptr @int_urb_complete._entry.103, ptr @int_urb_complete._entry.106, ptr @int_urb_complete._entry.109, ptr @int_urb_complete._entry.98, ptr @int_urb_complete._entry_ptr, ptr @int_urb_complete._entry_ptr.102, ptr @int_urb_complete._entry_ptr.105, ptr @int_urb_complete._entry_ptr.108, ptr @int_urb_complete._entry_ptr.111, ptr @int_urb_complete._entry_ptr.99, ptr @print_id._entry, ptr @print_id._entry_ptr, ptr @probe._entry, ptr @probe._entry.211, ptr @probe._entry.214, ptr @probe._entry.216, ptr @probe._entry.219, ptr @probe._entry.222, ptr @probe._entry_ptr, ptr @probe._entry_ptr.213, ptr @probe._entry_ptr.215, ptr @probe._entry_ptr.218, ptr @probe._entry_ptr.221, ptr @probe._entry_ptr.224, ptr @request_fw_file._entry, ptr @request_fw_file._entry.188, ptr @request_fw_file._entry_ptr, ptr @request_fw_file._entry_ptr.190, ptr @rx_urb_complete._entry, ptr @rx_urb_complete._entry.122, ptr @rx_urb_complete._entry.124, ptr @rx_urb_complete._entry.129, ptr @rx_urb_complete._entry.132, ptr @rx_urb_complete._entry_ptr, ptr @rx_urb_complete._entry_ptr.123, ptr @rx_urb_complete._entry_ptr.126, ptr @rx_urb_complete._entry_ptr.131, ptr @rx_urb_complete._entry_ptr.134, ptr @tx_urb_complete._entry, ptr @tx_urb_complete._entry.138, ptr @tx_urb_complete._entry.140, ptr @tx_urb_complete._entry_ptr, ptr @tx_urb_complete._entry_ptr.139, ptr @tx_urb_complete._entry_ptr.142, ptr @upload_code._entry, ptr @upload_code._entry.197, ptr @upload_code._entry.200, ptr @upload_code._entry.203, ptr @upload_code._entry.206, ptr @upload_code._entry_ptr, ptr @upload_code._entry_ptr.199, ptr @upload_code._entry_ptr.202, ptr @upload_code._entry_ptr.205, ptr @upload_code._entry_ptr.208, ptr @upload_firmware._entry, ptr @upload_firmware._entry.176, ptr @upload_firmware._entry.179, ptr @upload_firmware._entry.183, ptr @upload_firmware._entry_ptr, ptr @upload_firmware._entry_ptr.178, ptr @upload_firmware._entry_ptr.181, ptr @upload_firmware._entry_ptr.185, ptr @usb_exit, ptr @usb_init._entry, ptr @usb_init._entry.244, ptr @usb_init._entry_ptr, ptr @usb_init._entry_ptr.246, ptr @zd_rx_idle_timer_handler._entry, ptr @zd_rx_idle_timer_handler._entry_ptr, ptr @zd_submit_waiting_urb._entry, ptr @zd_submit_waiting_urb._entry_ptr, ptr @zd_tx_watchdog_disable._entry, ptr @zd_tx_watchdog_disable._entry_ptr, ptr @zd_tx_watchdog_enable._entry, ptr @zd_tx_watchdog_enable._entry_ptr, ptr @zd_tx_watchdog_handler._entry, ptr @zd_tx_watchdog_handler._entry_ptr, ptr @zd_usb_disable_int._entry, ptr @zd_usb_disable_int._entry_ptr, ptr @zd_usb_enable_int._entry, ptr @zd_usb_enable_int._entry.16, ptr @zd_usb_enable_int._entry.19, ptr @zd_usb_enable_int._entry.22, ptr @zd_usb_enable_int._entry_ptr, ptr @zd_usb_enable_int._entry_ptr.18, ptr @zd_usb_enable_int._entry_ptr.21, ptr @zd_usb_enable_int._entry_ptr.24, ptr @zd_usb_init_hw._entry, ptr @zd_usb_init_hw._entry.32, ptr @zd_usb_init_hw._entry.35, ptr @zd_usb_init_hw._entry.38, ptr @zd_usb_init_hw._entry_ptr, ptr @zd_usb_init_hw._entry_ptr.34, ptr @zd_usb_init_hw._entry_ptr.37, ptr @zd_usb_init_hw._entry_ptr.40, ptr @zd_usb_ioread16v._entry, ptr @zd_usb_ioread16v._entry.45, ptr @zd_usb_ioread16v._entry.48, ptr @zd_usb_ioread16v._entry.52, ptr @zd_usb_ioread16v._entry.55, ptr @zd_usb_ioread16v._entry.58, ptr @zd_usb_ioread16v._entry.61, ptr @zd_usb_ioread16v._entry_ptr, ptr @zd_usb_ioread16v._entry_ptr.47, ptr @zd_usb_ioread16v._entry_ptr.50, ptr @zd_usb_ioread16v._entry_ptr.54, ptr @zd_usb_ioread16v._entry_ptr.57, ptr @zd_usb_ioread16v._entry_ptr.60, ptr @zd_usb_ioread16v._entry_ptr.63, ptr @zd_usb_iowrite16v_async._entry, ptr @zd_usb_iowrite16v_async._entry.75, ptr @zd_usb_iowrite16v_async._entry_ptr, ptr @zd_usb_iowrite16v_async._entry_ptr.76, ptr @zd_usb_iowrite16v_async_end._entry, ptr @zd_usb_iowrite16v_async_end._entry.71, ptr @zd_usb_iowrite16v_async_end._entry_ptr, ptr @zd_usb_iowrite16v_async_end._entry_ptr.73, ptr @zd_usb_read_fw._entry, ptr @zd_usb_read_fw._entry.8, ptr @zd_usb_read_fw._entry_ptr, ptr @zd_usb_read_fw._entry_ptr.10, ptr @zd_usb_resume._entry, ptr @zd_usb_resume._entry.236, ptr @zd_usb_resume._entry_ptr, ptr @zd_usb_resume._entry_ptr.238, ptr @zd_usb_rfwrite._entry, ptr @zd_usb_rfwrite._entry.79, ptr @zd_usb_rfwrite._entry.82, ptr @zd_usb_rfwrite._entry.85, ptr @zd_usb_rfwrite._entry.88, ptr @zd_usb_rfwrite._entry.91, ptr @zd_usb_rfwrite._entry.93, ptr @zd_usb_rfwrite._entry_ptr, ptr @zd_usb_rfwrite._entry_ptr.81, ptr @zd_usb_rfwrite._entry_ptr.84, ptr @zd_usb_rfwrite._entry_ptr.87, ptr @zd_usb_rfwrite._entry_ptr.90, ptr @zd_usb_rfwrite._entry_ptr.92, ptr @zd_usb_rfwrite._entry_ptr.95, ptr @zd_usb_stop._entry, ptr @zd_usb_stop._entry_ptr, ptr @zd_usb_tx._entry, ptr @zd_usb_tx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @zd_workqueue, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @driver, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.141, ptr @init_usb_anchor.__key, ptr @.str.143, ptr @init_usb_anchor.__key.144, ptr @.str.145, ptr @init_usb_interrupt.__key, ptr @.str.146, ptr @init_completion.__key, ptr @.str.147, ptr @init_usb_tx.__key, ptr @.str.148, ptr @init_usb_tx.__key.149, ptr @.str.150, ptr @init_usb_tx.__key.151, ptr @.str.152, ptr @skb_queue_head_init.__key, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @init_usb_rx.__key, ptr @.str.157, ptr @init_usb_rx.__key.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @init_usb_rx.__key.162, ptr @.str.163, ptr @init_usb_rx.__key.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @usb_ids, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @switch.table.zd_usb_scnprint_id, ptr @switch.table.probe], section "llvm.metadata"
@0 = internal global [243 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_read_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_read_fw._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_enable_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_enable_int._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_enable_int._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_enable_int._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_disable_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_tx_watchdog_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_tx_watchdog_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_init_hw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_init_hw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_init_hw._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_ioread16v._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_iowrite16v_async_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_iowrite16v_async_end._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_iowrite16v_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_iowrite16v_async._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_rfwrite._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_urb_complete._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_read_regs._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_read_regs._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_urb_complete._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_urb_complete._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 206, i32 256, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_urb_complete._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_urb_complete._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_urb_complete._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_urb_complete._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_interrupt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_tx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_tx.__key.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_tx.__key.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_tx_watchdog_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_rx.__key.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_rx.__key.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_rx.__key.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_rx_idle_timer_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_firmware._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_firmware._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_firmware._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_fw_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_fw_file._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_code._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_code._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_code._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_code._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ids to i32), i32 1416, i32 1792, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eject_installer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eject_installer._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_usb_resume._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_init._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_submit_waiting_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zd_usb_scnprint_id to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_read_fw(ptr nocapture noundef readonly %usb, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data, i16 noundef zeroext %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %conv = zext i16 %len to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %5, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or3, i8 noundef zeroext 50, i8 noundef zeroext -64, i16 noundef zeroext %addr, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %len, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %call4) #14
  br label %exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv)
  %cmp8.not = icmp eq i32 %call4, %conv
  br i1 %cmp8.not, label %if.end17, label %do.end13

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %call4, i32 noundef %conv) #14
  br label %exit

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %conv)
  br label %exit

exit:                                             ; preds = %if.end17, %do.end13, %do.end
  %r.0 = phi i32 [ %call4, %do.end ], [ -5, %do.end13 ], [ 0, %if.end17 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_enable_int(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #14
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !506
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %do.body3.do.end40_crit_edge, label %do.body22, !prof !507

do.body3.do.end40_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.body22:                                        ; preds = %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_enable_int.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_enable_int, %do.end37)) #10
          to label %if.then34 [label %do.end37], !srcloc !508

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_enable_int.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 528, ptr noundef nonnull @.str.15) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body22
  tail call void @dump_stack() #14
  br label %do.end40

do.end40:                                         ; preds = %do.end37, %do.body3.do.end40_crit_edge
  %lock = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %urb41 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 2
  %5 = ptrtoint ptr %urb41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb41, align 4
  %tobool42.not = icmp eq ptr %6, null
  br i1 %tobool42.not, label %if.end45, label %do.end40.error_free_urb_crit_edge

do.end40.error_free_urb_crit_edge:                ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free_urb

if.end45:                                         ; preds = %do.end40
  %7 = ptrtoint ptr %urb41 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %urb41, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %buffer_dma = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 4
  %call48 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef 3264, ptr noundef %buffer_dma) #10
  %buffer = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 3
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call48, ptr %buffer, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf.i, align 4
  %dev56 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev56, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) #14
  br label %error_set_urb_null

if.end57:                                         ; preds = %if.end45
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %12, 8
  %or59 = or i32 %shl.i, 1073840256
  %interval = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 5
  %13 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or59, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call48, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @int_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %usb, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %3, i32 -100
  %21 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i = icmp eq i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp6.i = icmp ugt i32 %22, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end57.usb_fill_int_urb.exit_crit_edge

if.end57.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.smax.i32(i32 %14, i32 1) #10
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 16) #10
  %sub.i = add nsw i32 %24, -1
  %shl.i119 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end57.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i119, %if.then.i ], [ %14, %if.end57.usb_fill_int_urb.exit_crit_edge ]
  %25 = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 25
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %interval.sink.i, ptr %25, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 23
  %27 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %start_frame.i, align 4
  %28 = ptrtoint ptr %buffer_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_dma, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 15
  %30 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %transfer_dma, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_flags, align 4
  %or62 = or i32 %32, 4
  store i32 %or62, ptr %transfer_flags, align 4
  %33 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i, align 4
  %dev67 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %urb41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb41, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev67, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef %36) #14
  %call69 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %usb_fill_int_urb.exit.cleanup_crit_edge, label %do.end74

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end74:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf.i, align 4
  %dev76 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev76, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12, i32 noundef %call69) #14
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %41 = ptrtoint ptr %buffer_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buffer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i.i, i32 noundef 64, ptr noundef %40, i32 noundef %42) #10
  br label %error_set_urb_null

error_set_urb_null:                               ; preds = %do.end74, %do.end54
  %r.0 = phi i32 [ %call69, %do.end74 ], [ -12, %do.end54 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %43 = ptrtoint ptr %urb41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %urb41, align 4
  br label %error_free_urb

error_free_urb:                                   ; preds = %error_set_urb_null, %do.end40.error_free_urb_crit_edge
  %r.1 = phi i32 [ %r.0, %error_set_urb_null ], [ 0, %do.end40.error_free_urb_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %error_free_urb, %usb_fill_int_urb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %usb_fill_int_urb.exit.cleanup_crit_edge ], [ %r.1, %error_free_urb ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @int_urb_complete(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end5 [
    i32 0, label %sw.epilog
    i32 -108, label %entry.do.end_crit_edge
    i32 -22, label %entry.do.end_crit_edge88
    i32 -19, label %entry.do.end_crit_edge89
    i32 -2, label %entry.do.end_crit_edge90
    i32 -104, label %entry.do.end_crit_edge91
    i32 -32, label %entry.do.end_crit_edge92
  ]

entry.do.end_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge88, %entry.do.end_crit_edge89, %entry.do.end_crit_edge90, %entry.do.end_crit_edge91, %entry.do.end_crit_edge92
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev1, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef %urb, i32 noundef %1) #14
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev7, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef %urb, i32 noundef %1) #14
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp ult i32 %8, 4
  br i1 %cmp, label %do.end11, label %if.end

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev13, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.97, ptr noundef %urb) #14
  br label %resubmit

if.end:                                           ; preds = %sw.epilog
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp14.not = icmp eq i8 %14, 1
  br i1 %cmp14.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev21, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.97, ptr noundef %urb) #14
  br label %resubmit

if.end22:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.usb_int_header, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %18)
  %cmp25.not = icmp eq i8 %18, -112
  br i1 %cmp25.not, label %if.end22.sw.bb31_crit_edge, label %land.lhs.true

if.end22.sw.bb31_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

land.lhs.true:                                    ; preds = %if.end22
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  %read_regs_enabled = getelementptr inbounds %struct.zd_usb_interrupt, ptr %20, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_regs_enabled, i32 noundef 4) #10
  %21 = ptrtoint ptr %read_regs_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %read_regs_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.end28_crit_edge, label %if.then27

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  %lock.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %24, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %read_regs_enabled.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %24, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_regs_enabled.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %read_regs_enabled.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %read_regs_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then27.handle_regs_int_override.exit_crit_edge, label %if.then.i

if.then27.handle_regs_int_override.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_regs_int_override.exit

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %read_regs_enabled.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %read_regs_enabled.i, align 4
  %read_regs_int_overridden.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %24, i32 0, i32 7
  %28 = ptrtoint ptr %read_regs_int_overridden.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %read_regs_int_overridden.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %read_regs_int_overridden.i, align 4
  tail call void @complete(ptr noundef %24) #10
  br label %handle_regs_int_override.exit

handle_regs_int_override.exit:                    ; preds = %if.then.i, %if.then27.handle_regs_int_override.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  br label %if.end28

if.end28:                                         ; preds = %handle_regs_int_override.exit, %land.lhs.true.if.end28_crit_edge
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %id, align 1
  %30 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %.pr, label %do.end36 [
    i8 -112, label %if.end28.sw.bb31_crit_edge
    i8 -96, label %sw.bb32
  ]

if.end28.sw.bb31_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end28.sw.bb31_crit_edge, %if.end22.sw.bb31_crit_edge
  %context.i79 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %31 = ptrtoint ptr %context.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context.i79, align 4
  %lock.i80 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %32, i32 0, i32 1
  %call3.i81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i80) #10
  %33 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 2
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4245, i16 %36)
  %cmp7.i = icmp eq i16 %36, 4245
  br i1 %cmp7.i, label %if.then.i83, label %if.else.i

if.then.i83:                                      ; preds = %sw.bb31
  %37 = ptrtoint ptr %context.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context.i79, align 4
  %intf.i.i = getelementptr inbounds %struct.zd_usb, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i.i, align 8
  %lock12.i = getelementptr inbounds %struct.zd_mac, ptr %44, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock12.i) #10
  %intr_buffer.i = getelementptr inbounds %struct.zd_mac, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_buffer, align 4
  %47 = call ptr @memcpy(ptr %intr_buffer.i, ptr %46, i32 64)
  tail call void @_raw_spin_unlock(ptr noundef %lock12.i) #10
  %process_intr.i = getelementptr inbounds %struct.zd_mac, ptr %44, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i69.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %process_intr.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i80, i32 noundef %call3.i81) #10
  %read_regs_enabled37.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %32, i32 0, i32 6
  %call.i.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_regs_enabled37.i, i32 noundef 4) #10
  %49 = ptrtoint ptr %read_regs_enabled37.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %read_regs_enabled37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool39.not.i = icmp eq i32 %50, 0
  br i1 %tobool39.not.i, label %if.then.i83.resubmit_crit_edge, label %if.then40.i

if.then.i83.resubmit_crit_edge:                   ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

if.else.i:                                        ; preds = %sw.bb31
  %read_regs_enabled.i84 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %32, i32 0, i32 6
  %call.i.i67.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_regs_enabled.i84, i32 noundef 4) #10
  %51 = ptrtoint ptr %read_regs_enabled.i84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %read_regs_enabled.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i85 = icmp eq i32 %52, 0
  br i1 %tobool.not.i85, label %if.end41.critedge.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  %53 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length, align 4
  %length.i = getelementptr inbounds %struct.read_regs_int, ptr %32, i32 0, i32 4
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %length.i, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %54, i32 64) #10
  %buffer.i = getelementptr inbounds %struct.read_regs_int, ptr %32, i32 0, i32 3
  %57 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %transfer_buffer, align 4
  %59 = call ptr @memcpy(ptr %buffer.i, ptr %58, i32 %56)
  %req.i = getelementptr inbounds %struct.read_regs_int, ptr %32, i32 0, i32 1
  %60 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req.i, align 4
  %req_count.i = getelementptr inbounds %struct.read_regs_int, ptr %32, i32 0, i32 2
  %62 = ptrtoint ptr %req_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %req_count.i, align 4
  %call26.i = tail call fastcc zeroext i1 @check_read_regs(ptr noundef %32, ptr noundef %61, i32 noundef %63) #10
  br i1 %call26.i, label %if.end28.i, label %if.end41.critedge65.i

if.end28.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled.i84, i32 noundef 4) #10
  %64 = ptrtoint ptr %read_regs_enabled.i84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %read_regs_enabled.i84, align 4
  %read_regs_int_overridden.i86 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %32, i32 0, i32 7
  %65 = ptrtoint ptr %read_regs_int_overridden.i86 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i87 = load i8, ptr %read_regs_int_overridden.i86, align 4
  %bf.clear.i = and i8 %bf.load.i87, 127
  store i8 %bf.clear.i, ptr %read_regs_int_overridden.i86, align 4
  tail call void @complete(ptr noundef %32) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i80, i32 noundef %call3.i81) #10
  br label %resubmit

if.then40.i:                                      ; preds = %if.then.i83
  %66 = ptrtoint ptr %context.i79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context.i79, align 4
  %lock.i.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %67, i32 0, i32 1
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %read_regs_enabled.i.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %67, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_regs_enabled.i.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %read_regs_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %read_regs_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i, label %if.then40.i.handle_regs_int_override.exit.i_crit_edge, label %if.then.i.i

if.then40.i.handle_regs_int_override.exit.i_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_regs_int_override.exit.i

if.then.i.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled.i.i, i32 noundef 4) #10
  %70 = ptrtoint ptr %read_regs_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %read_regs_enabled.i.i, align 4
  %read_regs_int_overridden.i.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %67, i32 0, i32 7
  %71 = ptrtoint ptr %read_regs_int_overridden.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %read_regs_int_overridden.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %read_regs_int_overridden.i.i, align 4
  tail call void @complete(ptr noundef %67) #10
  br label %handle_regs_int_override.exit.i

handle_regs_int_override.exit.i:                  ; preds = %if.then.i.i, %if.then40.i.handle_regs_int_override.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #10
  br label %resubmit

if.end41.critedge.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i80, i32 noundef %call3.i81) #10
  br label %resubmit

if.end41.critedge65.i:                            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i80, i32 noundef %call3.i81) #10
  br label %resubmit

sw.bb32:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zd_mac_tx_failed(ptr noundef %urb) #10
  br label %resubmit

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %conv30 = zext i8 %.pr to i32
  %dev37 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %72 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev37, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev38, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.97, ptr noundef %urb, i32 noundef %conv30) #14
  br label %resubmit

resubmit:                                         ; preds = %do.end36, %sw.bb32, %if.end41.critedge65.i, %if.end41.critedge.i, %handle_regs_int_override.exit.i, %if.end28.i, %if.then.i83.resubmit_crit_edge, %do.end19, %do.end11, %do.end5
  %call42 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %resubmit.cleanup_crit_edge, label %do.end47

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %dev48 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %74 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev48, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev49, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.97, ptr noundef %urb, i32 noundef %call42) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %resubmit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_disable_int(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %lock = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %urb7 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 2
  %4 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb7, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %urb7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %urb7, align 4
  %buffer10 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 3
  %7 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer10, align 4
  %buffer_dma11 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 4
  %9 = ptrtoint ptr %buffer_dma11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_dma11, align 4
  store ptr null, ptr %buffer10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #10
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull %5) #14
  tail call void @usb_free_urb(ptr noundef nonnull %5) #10
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i.i, i32 noundef 64, ptr noundef %8, i32 noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_enable_rx(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_mutex = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @__zd_usb_enable_rx(ptr noundef %usb)
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %0 = load ptr, ptr @zd_workqueue, align 4
  %idle_work.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2
  %call.i = tail call i32 @round_jiffies_relative(i32 noundef 3000) #10
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %idle_work.i, i32 noundef %call.i) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__zd_usb_enable_rx(ptr noundef %usb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.120) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -128
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.preheader.alloc_rx_urb.exit.thread_crit_edge, label %if.end.i

for.body.preheader.alloc_rx_urb.exit.thread_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_rx_urb.exit.thread

if.end.i:                                         ; preds = %for.body.preheader
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 15
  %call2.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i, i32 noundef 4800, i32 noundef 3264, ptr noundef %transfer_dma.i) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then4.i_crit_edge, label %for.inc

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.4.if.then4.i_crit_edge, %if.end.i.3.if.then4.i_crit_edge, %if.end.i.2.if.then4.i_crit_edge, %if.end.i.1.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %i.0136.lcssa144 = phi i32 [ 0, %if.end.i.if.then4.i_crit_edge ], [ 1, %if.end.i.1.if.then4.i_crit_edge ], [ 2, %if.end.i.2.if.then4.i_crit_edge ], [ 3, %if.end.i.3.if.then4.i_crit_edge ], [ 4, %if.end.i.4.if.then4.i_crit_edge ]
  %call1.i.lcssa142 = phi ptr [ %call1.i, %if.end.i.if.then4.i_crit_edge ], [ %call1.i.1, %if.end.i.1.if.then4.i_crit_edge ], [ %call1.i.2, %if.end.i.2.if.then4.i_crit_edge ], [ %call1.i.3, %if.end.i.3.if.then4.i_crit_edge ], [ %call1.i.4, %if.end.i.4.if.then4.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i.lcssa142) #10
  br label %alloc_rx_urb.exit.thread

alloc_rx_urb.exit.thread:                         ; preds = %for.inc.3.alloc_rx_urb.exit.thread_crit_edge, %for.inc.2.alloc_rx_urb.exit.thread_crit_edge, %for.inc.1.alloc_rx_urb.exit.thread_crit_edge, %for.inc.alloc_rx_urb.exit.thread_crit_edge, %if.then4.i, %for.body.preheader.alloc_rx_urb.exit.thread_crit_edge
  %i.0136146 = phi i32 [ %i.0136.lcssa144, %if.then4.i ], [ 0, %for.body.preheader.alloc_rx_urb.exit.thread_crit_edge ], [ 1, %for.inc.alloc_rx_urb.exit.thread_crit_edge ], [ 2, %for.inc.1.alloc_rx_urb.exit.thread_crit_edge ], [ 3, %for.inc.2.alloc_rx_urb.exit.thread_crit_edge ], [ 4, %for.inc.3.alloc_rx_urb.exit.thread_crit_edge ]
  %arrayidx127 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.0136146
  %7 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx127, align 4
  br label %for.body82.preheader

for.inc:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i.i = shl i32 %9, 8
  %or7.i = or i32 %shl.i.i, -1073676160
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i.i, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %11 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or7.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4800, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %14 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rx_urb_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %15 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %usb, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_flags.i, align 4
  %or8.i = or i32 %17, 4
  store i32 %or8.i, ptr %transfer_flags.i, align 4
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %19 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf, align 4
  %parent.i.i.i.1 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %parent.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i.i.1, align 8
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %22, i32 -128
  %call1.i.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i.1 = icmp eq ptr %call1.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.alloc_rx_urb.exit.thread_crit_edge, label %if.end.i.1

for.inc.alloc_rx_urb.exit.thread_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_rx_urb.exit.thread

if.end.i.1:                                       ; preds = %for.inc
  %transfer_dma.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 15
  %call2.i.1 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i.1, i32 noundef 4800, i32 noundef 3264, ptr noundef %transfer_dma.i.1) #10
  %tobool3.not.i.1 = icmp eq ptr %call2.i.1, null
  br i1 %tobool3.not.i.1, label %if.end.i.1.if.then4.i_crit_edge, label %for.inc.1

if.end.i.1.if.then4.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.inc.1:                                        ; preds = %if.end.i.1
  %23 = ptrtoint ptr %add.ptr.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i.i.1, align 8
  %shl.i.i.1 = shl i32 %24, 8
  %or7.i.1 = or i32 %shl.i.i.1, -1073676160
  %dev1.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i.i.1, ptr %dev1.i.i.1, align 4
  %pipe2.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or7.i.1, ptr %pipe2.i.i.1, align 4
  %transfer_buffer3.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call2.i.1, ptr %transfer_buffer3.i.i.1, align 4
  %transfer_buffer_length.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4800, ptr %transfer_buffer_length.i.i.1, align 4
  %complete.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rx_urb_complete, ptr %complete.i.i.1, align 4
  %context4.i.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %usb, ptr %context4.i.i.1, align 4
  %transfer_flags.i.1 = getelementptr inbounds %struct.urb, ptr %call1.i.1, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_flags.i.1, align 4
  %or8.i.1 = or i32 %32, 4
  store i32 %or8.i.1, ptr %transfer_flags.i.1, align 4
  %arrayidx.1 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i.1, ptr %arrayidx.1, align 4
  %34 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf, align 4
  %parent.i.i.i.2 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %parent.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i.i.2, align 8
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %37, i32 -128
  %call1.i.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i.2 = icmp eq ptr %call1.i.2, null
  br i1 %tobool.not.i.2, label %for.inc.1.alloc_rx_urb.exit.thread_crit_edge, label %if.end.i.2

for.inc.1.alloc_rx_urb.exit.thread_crit_edge:     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_rx_urb.exit.thread

if.end.i.2:                                       ; preds = %for.inc.1
  %transfer_dma.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 15
  %call2.i.2 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i.2, i32 noundef 4800, i32 noundef 3264, ptr noundef %transfer_dma.i.2) #10
  %tobool3.not.i.2 = icmp eq ptr %call2.i.2, null
  br i1 %tobool3.not.i.2, label %if.end.i.2.if.then4.i_crit_edge, label %for.inc.2

if.end.i.2.if.then4.i_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.inc.2:                                        ; preds = %if.end.i.2
  %38 = ptrtoint ptr %add.ptr.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i.2, align 8
  %shl.i.i.2 = shl i32 %39, 8
  %or7.i.2 = or i32 %shl.i.i.2, -1073676160
  %dev1.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 8
  %40 = ptrtoint ptr %dev1.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i.i.2, ptr %dev1.i.i.2, align 4
  %pipe2.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 10
  %41 = ptrtoint ptr %pipe2.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or7.i.2, ptr %pipe2.i.i.2, align 4
  %transfer_buffer3.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2.i.2, ptr %transfer_buffer3.i.i.2, align 4
  %transfer_buffer_length.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4800, ptr %transfer_buffer_length.i.i.2, align 4
  %complete.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rx_urb_complete, ptr %complete.i.i.2, align 4
  %context4.i.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 27
  %45 = ptrtoint ptr %context4.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %usb, ptr %context4.i.i.2, align 4
  %transfer_flags.i.2 = getelementptr inbounds %struct.urb, ptr %call1.i.2, i32 0, i32 13
  %46 = ptrtoint ptr %transfer_flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %transfer_flags.i.2, align 4
  %or8.i.2 = or i32 %47, 4
  store i32 %or8.i.2, ptr %transfer_flags.i.2, align 4
  %arrayidx.2 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call1.i.2, ptr %arrayidx.2, align 8
  %49 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf, align 4
  %parent.i.i.i.3 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %parent.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i.i.i.3, align 8
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %52, i32 -128
  %call1.i.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i.3 = icmp eq ptr %call1.i.3, null
  br i1 %tobool.not.i.3, label %for.inc.2.alloc_rx_urb.exit.thread_crit_edge, label %if.end.i.3

for.inc.2.alloc_rx_urb.exit.thread_crit_edge:     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_rx_urb.exit.thread

if.end.i.3:                                       ; preds = %for.inc.2
  %transfer_dma.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 15
  %call2.i.3 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i.3, i32 noundef 4800, i32 noundef 3264, ptr noundef %transfer_dma.i.3) #10
  %tobool3.not.i.3 = icmp eq ptr %call2.i.3, null
  br i1 %tobool3.not.i.3, label %if.end.i.3.if.then4.i_crit_edge, label %for.inc.3

if.end.i.3.if.then4.i_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.inc.3:                                        ; preds = %if.end.i.3
  %53 = ptrtoint ptr %add.ptr.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i.i.3, align 8
  %shl.i.i.3 = shl i32 %54, 8
  %or7.i.3 = or i32 %shl.i.i.3, -1073676160
  %dev1.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 8
  %55 = ptrtoint ptr %dev1.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i.i.i.3, ptr %dev1.i.i.3, align 4
  %pipe2.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 10
  %56 = ptrtoint ptr %pipe2.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or7.i.3, ptr %pipe2.i.i.3, align 4
  %transfer_buffer3.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call2.i.3, ptr %transfer_buffer3.i.i.3, align 4
  %transfer_buffer_length.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4800, ptr %transfer_buffer_length.i.i.3, align 4
  %complete.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @rx_urb_complete, ptr %complete.i.i.3, align 4
  %context4.i.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 27
  %60 = ptrtoint ptr %context4.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %usb, ptr %context4.i.i.3, align 4
  %transfer_flags.i.3 = getelementptr inbounds %struct.urb, ptr %call1.i.3, i32 0, i32 13
  %61 = ptrtoint ptr %transfer_flags.i.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %transfer_flags.i.3, align 4
  %or8.i.3 = or i32 %62, 4
  store i32 %or8.i.3, ptr %transfer_flags.i.3, align 4
  %arrayidx.3 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %63 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call1.i.3, ptr %arrayidx.3, align 4
  %64 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intf, align 4
  %parent.i.i.i.4 = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %parent.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent.i.i.i.4, align 8
  %add.ptr.i.i.i.4 = getelementptr i8, ptr %67, i32 -128
  %call1.i.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i.4 = icmp eq ptr %call1.i.4, null
  br i1 %tobool.not.i.4, label %for.inc.3.alloc_rx_urb.exit.thread_crit_edge, label %if.end.i.4

for.inc.3.alloc_rx_urb.exit.thread_crit_edge:     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_rx_urb.exit.thread

if.end.i.4:                                       ; preds = %for.inc.3
  %transfer_dma.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 15
  %call2.i.4 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i.4, i32 noundef 4800, i32 noundef 3264, ptr noundef %transfer_dma.i.4) #10
  %tobool3.not.i.4 = icmp eq ptr %call2.i.4, null
  br i1 %tobool3.not.i.4, label %if.end.i.4.if.then4.i_crit_edge, label %for.inc.4

if.end.i.4.if.then4.i_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.inc.4:                                        ; preds = %if.end.i.4
  %68 = ptrtoint ptr %add.ptr.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i.i.4, align 8
  %shl.i.i.4 = shl i32 %69, 8
  %or7.i.4 = or i32 %shl.i.i.4, -1073676160
  %dev1.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 8
  %70 = ptrtoint ptr %dev1.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i.i.i.4, ptr %dev1.i.i.4, align 4
  %pipe2.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 10
  %71 = ptrtoint ptr %pipe2.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or7.i.4, ptr %pipe2.i.i.4, align 4
  %transfer_buffer3.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 14
  %72 = ptrtoint ptr %transfer_buffer3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call2.i.4, ptr %transfer_buffer3.i.i.4, align 4
  %transfer_buffer_length.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4800, ptr %transfer_buffer_length.i.i.4, align 4
  %complete.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 28
  %74 = ptrtoint ptr %complete.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @rx_urb_complete, ptr %complete.i.i.4, align 4
  %context4.i.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 27
  %75 = ptrtoint ptr %context4.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %usb, ptr %context4.i.i.4, align 4
  %transfer_flags.i.4 = getelementptr inbounds %struct.urb, ptr %call1.i.4, i32 0, i32 13
  %76 = ptrtoint ptr %transfer_flags.i.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transfer_flags.i.4, align 4
  %or8.i.4 = or i32 %77, 4
  store i32 %or8.i.4, ptr %transfer_flags.i.4, align 4
  %arrayidx.4 = getelementptr ptr, ptr %call7.i.i.i, i32 4
  %78 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call1.i.4, ptr %arrayidx.4, align 8
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !506
  %and.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not = icmp eq i32 %and.i, 0
  br i1 %tobool21.not, label %for.inc.4.do.end45_crit_edge, label %do.body27, !prof !507

for.inc.4.do.end45_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.body27:                                        ; preds = %for.inc.4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__zd_usb_enable_rx.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__zd_usb_enable_rx, %do.end42)) #10
          to label %if.then39 [label %do.end42], !srcloc !508

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__zd_usb_enable_rx.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 763, ptr noundef nonnull @.str.15) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  tail call void @dump_stack() #14
  br label %do.end45

do.end45:                                         ; preds = %do.end42, %for.inc.4.do.end45_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %rx1) #10
  %urbs46 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 7
  %80 = ptrtoint ptr %urbs46 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %urbs46, align 4
  %tobool47.not = icmp eq ptr %81, null
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx1) #10
  br label %for.body82.preheader

if.end50:                                         ; preds = %do.end45
  %82 = ptrtoint ptr %urbs46 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i, ptr %urbs46, align 4
  %urbs_count = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 8
  %83 = ptrtoint ptr %urbs_count to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 5, ptr %urbs_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx1) #10
  %84 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i.i.i, align 8
  %call58 = tail call i32 @usb_submit_urb(ptr noundef %85, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %for.cond53, label %if.end50.for.cond65.preheader_crit_edge

if.end50.for.cond65.preheader_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond65.preheader

for.cond53:                                       ; preds = %if.end50
  %86 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.1, align 4
  %call58.1 = tail call i32 @usb_submit_urb(ptr noundef %87, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.1)
  %tobool59.not.1 = icmp eq i32 %call58.1, 0
  br i1 %tobool59.not.1, label %for.cond53.1, label %for.cond53.for.cond65.preheader_crit_edge

for.cond53.for.cond65.preheader_crit_edge:        ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond65.preheader

for.cond53.1:                                     ; preds = %for.cond53
  %88 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.2, align 8
  %call58.2 = tail call i32 @usb_submit_urb(ptr noundef %89, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.2)
  %tobool59.not.2 = icmp eq i32 %call58.2, 0
  br i1 %tobool59.not.2, label %for.cond53.2, label %for.cond53.1.for.cond65.preheader_crit_edge

for.cond53.1.for.cond65.preheader_crit_edge:      ; preds = %for.cond53.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond65.preheader

for.cond53.2:                                     ; preds = %for.cond53.1
  %90 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.3, align 4
  %call58.3 = tail call i32 @usb_submit_urb(ptr noundef %91, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.3)
  %tobool59.not.3 = icmp eq i32 %call58.3, 0
  br i1 %tobool59.not.3, label %for.cond53.3, label %for.cond53.2.for.cond65.preheader_crit_edge

for.cond53.2.for.cond65.preheader_crit_edge:      ; preds = %for.cond53.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond65.preheader

for.cond53.3:                                     ; preds = %for.cond53.2
  %92 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.4, align 8
  %call58.4 = tail call i32 @usb_submit_urb(ptr noundef %93, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.4)
  %tobool59.not.4 = icmp eq i32 %call58.4, 0
  br i1 %tobool59.not.4, label %for.cond53.3.cleanup_crit_edge, label %for.cond53.3.for.cond65.preheader_crit_edge

for.cond53.3.for.cond65.preheader_crit_edge:      ; preds = %for.cond53.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond65.preheader

for.cond53.3.cleanup_crit_edge:                   ; preds = %for.cond53.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond65.preheader:                             ; preds = %for.cond53.3.for.cond65.preheader_crit_edge, %for.cond53.2.for.cond65.preheader_crit_edge, %for.cond53.1.for.cond65.preheader_crit_edge, %for.cond53.for.cond65.preheader_crit_edge, %if.end50.for.cond65.preheader_crit_edge
  %call58.lcssa = phi i32 [ %call58, %if.end50.for.cond65.preheader_crit_edge ], [ %call58.1, %for.cond53.for.cond65.preheader_crit_edge ], [ %call58.2, %for.cond53.1.for.cond65.preheader_crit_edge ], [ %call58.3, %for.cond53.2.for.cond65.preheader_crit_edge ], [ %call58.4, %for.cond53.3.for.cond65.preheader_crit_edge ]
  %94 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @usb_kill_urb(ptr noundef %95) #10
  %96 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %97) #10
  %98 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.2, align 8
  tail call void @usb_kill_urb(ptr noundef %99) #10
  %100 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %101) #10
  %102 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.4, align 8
  tail call void @usb_kill_urb(ptr noundef %103) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %rx1) #10
  %104 = ptrtoint ptr %urbs46 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %urbs46, align 4
  %105 = ptrtoint ptr %urbs_count to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %urbs_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx1) #10
  br label %for.body82.preheader

for.body82.preheader:                             ; preds = %for.cond65.preheader, %if.then48, %alloc_rx_urb.exit.thread
  %r.0 = phi i32 [ 0, %if.then48 ], [ %call58.lcssa, %for.cond65.preheader ], [ -12, %alloc_rx_urb.exit.thread ]
  %106 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i123 = icmp eq ptr %107, null
  br i1 %tobool.not.i123, label %for.body82.preheader.free_rx_urb.exit_crit_edge, label %if.end.i125

for.body82.preheader.free_rx_urb.exit_crit_edge:  ; preds = %for.body82.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_urb.exit

if.end.i125:                                      ; preds = %for.body82.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 19
  %110 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %transfer_buffer_length.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 14
  %112 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i124 = getelementptr inbounds %struct.urb, ptr %107, i32 0, i32 15
  %114 = ptrtoint ptr %transfer_dma.i124 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %transfer_dma.i124, align 4
  tail call void @usb_free_coherent(ptr noundef %109, i32 noundef %111, ptr noundef %113, i32 noundef %115) #10
  tail call void @usb_free_urb(ptr noundef nonnull %107) #10
  br label %free_rx_urb.exit

free_rx_urb.exit:                                 ; preds = %if.end.i125, %for.body82.preheader.free_rx_urb.exit_crit_edge
  %arrayidx83.1 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %116 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx83.1, align 4
  %tobool.not.i123.1 = icmp eq ptr %117, null
  br i1 %tobool.not.i123.1, label %free_rx_urb.exit.free_rx_urb.exit.1_crit_edge, label %if.end.i125.1

free_rx_urb.exit.free_rx_urb.exit.1_crit_edge:    ; preds = %free_rx_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_urb.exit.1

if.end.i125.1:                                    ; preds = %free_rx_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.1 = getelementptr inbounds %struct.urb, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.1, align 4
  %transfer_buffer_length.i.1 = getelementptr inbounds %struct.urb, ptr %117, i32 0, i32 19
  %120 = ptrtoint ptr %transfer_buffer_length.i.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %transfer_buffer_length.i.1, align 4
  %transfer_buffer.i.1 = getelementptr inbounds %struct.urb, ptr %117, i32 0, i32 14
  %122 = ptrtoint ptr %transfer_buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %transfer_buffer.i.1, align 4
  %transfer_dma.i124.1 = getelementptr inbounds %struct.urb, ptr %117, i32 0, i32 15
  %124 = ptrtoint ptr %transfer_dma.i124.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %transfer_dma.i124.1, align 4
  tail call void @usb_free_coherent(ptr noundef %119, i32 noundef %121, ptr noundef %123, i32 noundef %125) #10
  tail call void @usb_free_urb(ptr noundef nonnull %117) #10
  br label %free_rx_urb.exit.1

free_rx_urb.exit.1:                               ; preds = %if.end.i125.1, %free_rx_urb.exit.free_rx_urb.exit.1_crit_edge
  %arrayidx83.2 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %126 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx83.2, align 8
  %tobool.not.i123.2 = icmp eq ptr %127, null
  br i1 %tobool.not.i123.2, label %free_rx_urb.exit.1.free_rx_urb.exit.2_crit_edge, label %if.end.i125.2

free_rx_urb.exit.1.free_rx_urb.exit.2_crit_edge:  ; preds = %free_rx_urb.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_urb.exit.2

if.end.i125.2:                                    ; preds = %free_rx_urb.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.2 = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %dev.i.2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i.2, align 4
  %transfer_buffer_length.i.2 = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 19
  %130 = ptrtoint ptr %transfer_buffer_length.i.2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %transfer_buffer_length.i.2, align 4
  %transfer_buffer.i.2 = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 14
  %132 = ptrtoint ptr %transfer_buffer.i.2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %transfer_buffer.i.2, align 4
  %transfer_dma.i124.2 = getelementptr inbounds %struct.urb, ptr %127, i32 0, i32 15
  %134 = ptrtoint ptr %transfer_dma.i124.2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %transfer_dma.i124.2, align 4
  tail call void @usb_free_coherent(ptr noundef %129, i32 noundef %131, ptr noundef %133, i32 noundef %135) #10
  tail call void @usb_free_urb(ptr noundef nonnull %127) #10
  br label %free_rx_urb.exit.2

free_rx_urb.exit.2:                               ; preds = %if.end.i125.2, %free_rx_urb.exit.1.free_rx_urb.exit.2_crit_edge
  %arrayidx83.3 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %136 = ptrtoint ptr %arrayidx83.3 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx83.3, align 4
  %tobool.not.i123.3 = icmp eq ptr %137, null
  br i1 %tobool.not.i123.3, label %free_rx_urb.exit.2.free_rx_urb.exit.3_crit_edge, label %if.end.i125.3

free_rx_urb.exit.2.free_rx_urb.exit.3_crit_edge:  ; preds = %free_rx_urb.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_urb.exit.3

if.end.i125.3:                                    ; preds = %free_rx_urb.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.3 = getelementptr inbounds %struct.urb, ptr %137, i32 0, i32 8
  %138 = ptrtoint ptr %dev.i.3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i.3, align 4
  %transfer_buffer_length.i.3 = getelementptr inbounds %struct.urb, ptr %137, i32 0, i32 19
  %140 = ptrtoint ptr %transfer_buffer_length.i.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %transfer_buffer_length.i.3, align 4
  %transfer_buffer.i.3 = getelementptr inbounds %struct.urb, ptr %137, i32 0, i32 14
  %142 = ptrtoint ptr %transfer_buffer.i.3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %transfer_buffer.i.3, align 4
  %transfer_dma.i124.3 = getelementptr inbounds %struct.urb, ptr %137, i32 0, i32 15
  %144 = ptrtoint ptr %transfer_dma.i124.3 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %transfer_dma.i124.3, align 4
  tail call void @usb_free_coherent(ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %145) #10
  tail call void @usb_free_urb(ptr noundef nonnull %137) #10
  br label %free_rx_urb.exit.3

free_rx_urb.exit.3:                               ; preds = %if.end.i125.3, %free_rx_urb.exit.2.free_rx_urb.exit.3_crit_edge
  %arrayidx83.4 = getelementptr ptr, ptr %call7.i.i.i, i32 4
  %146 = ptrtoint ptr %arrayidx83.4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx83.4, align 8
  %tobool.not.i123.4 = icmp eq ptr %147, null
  br i1 %tobool.not.i123.4, label %free_rx_urb.exit.3.cleanup_crit_edge, label %if.end.i125.4

free_rx_urb.exit.3.cleanup_crit_edge:             ; preds = %free_rx_urb.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i125.4:                                    ; preds = %free_rx_urb.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.4 = getelementptr inbounds %struct.urb, ptr %147, i32 0, i32 8
  %148 = ptrtoint ptr %dev.i.4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i.4, align 4
  %transfer_buffer_length.i.4 = getelementptr inbounds %struct.urb, ptr %147, i32 0, i32 19
  %150 = ptrtoint ptr %transfer_buffer_length.i.4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %transfer_buffer_length.i.4, align 4
  %transfer_buffer.i.4 = getelementptr inbounds %struct.urb, ptr %147, i32 0, i32 14
  %152 = ptrtoint ptr %transfer_buffer.i.4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %transfer_buffer.i.4, align 4
  %transfer_dma.i124.4 = getelementptr inbounds %struct.urb, ptr %147, i32 0, i32 15
  %154 = ptrtoint ptr %transfer_dma.i124.4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %transfer_dma.i124.4, align 4
  tail call void @usb_free_coherent(ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %155) #10
  tail call void @usb_free_urb(ptr noundef nonnull %147) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i125.4, %free_rx_urb.exit.3.cleanup_crit_edge, %for.cond53.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond53.3.cleanup_crit_edge ], [ %r.0, %if.end.i125.4 ], [ %r.0, %free_rx_urb.exit.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_reset_rx_idle_timer(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zd_workqueue, align 4
  %idle_work = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2
  %call = tail call i32 @round_jiffies_relative(i32 noundef 3000) #10
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %idle_work, i32 noundef %call) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_disable_rx(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_mutex = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  tail call fastcc void @__zd_usb_disable_rx(ptr noundef %usb)
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %reset_timer_tasklet = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 3
  tail call void @tasklet_kill(ptr noundef %reset_timer_tasklet) #10
  %idle_work = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__zd_usb_disable_rx(ptr noundef %usb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx1) #10
  %urbs6 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %urbs6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urbs6, align 4
  %urbs_count = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %urbs_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %urbs_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx1, i32 noundef %call3) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp846.not = icmp eq i32 %3, 0
  br i1 %cmp846.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %free_rx_urb.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %free_rx_urb.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.free_rx_urb.exit_crit_edge, label %if.end.i

for.body.free_rx_urb.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_rx_urb.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15) #10
  tail call void @usb_free_urb(ptr noundef nonnull %7) #10
  br label %free_rx_urb.exit

free_rx_urb.exit:                                 ; preds = %if.end.i, %for.body.free_rx_urb.exit_crit_edge
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %free_rx_urb.exit.for.end_crit_edge, label %free_rx_urb.exit.for.body_crit_edge

free_rx_urb.exit.for.body_crit_edge:              ; preds = %free_rx_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

free_rx_urb.exit.for.end_crit_edge:               ; preds = %free_rx_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %free_rx_urb.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx1) #10
  %16 = ptrtoint ptr %urbs6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %urbs6, align 4
  %17 = ptrtoint ptr %urbs_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %urbs_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx1, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_disable_tx(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx1, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %tx1, align 4
  %submitted = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #10
  %lock = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %submitted_skbs = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %submitted_skbs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %submitted_skbs, align 4
  %cmp.i.not = icmp eq ptr %2, %submitted_skbs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end18, !prof !507

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 890, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end18, %entry.if.end_crit_edge
  %submitted_urbs = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %submitted_urbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %submitted_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp32.not = icmp eq i32 %4, 0
  br i1 %cmp32.not, label %if.end.if.end55_crit_edge, label %do.end49, !prof !507

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end49:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 891, i32 noundef 9, ptr noundef null) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end.if.end55_crit_edge
  %5 = ptrtoint ptr %submitted_urbs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %submitted_urbs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_enable_tx(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2
  %lock = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx1, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %tx1, align 4
  %submitted_urbs = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %submitted_urbs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %submitted_urbs, align 4
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %2 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %5) #10
  %stopped = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %stopped, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %stopped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_tx(ptr noundef %usb, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %tx2 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx2, i32 noundef 4) #10
  %4 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -1073709056
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tx_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %skb, ptr %context4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = inttoptr i32 %18 to ptr
  %arrayidx = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx, align 4
  %submitted_skbs = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3
  tail call void @skb_queue_tail(ptr noundef %submitted_skbs, ptr noundef %skb) #10
  %submitted = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %submitted) #10
  %call9 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull %call4, i32 noundef %call9) #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #10
  tail call void @skb_unlink(ptr noundef %skb, ptr noundef %submitted_skbs) #10
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %lock.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %submitted_urbs.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %submitted_urbs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %submitted_urbs.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %submitted_urbs.i, align 4
  %stopped.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp7.i = icmp sgt i32 %inc.i, 5
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %if.end13.tx_inc_submitted_urbs.exit_crit_edge

if.end13.tx_inc_submitted_urbs.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_inc_submitted_urbs.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %29) #10
  %30 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load11.i = load i8, ptr %stopped.i, align 4
  %bf.set.i = or i8 %bf.load11.i, -128
  store i8 %bf.set.i, ptr %stopped.i, align 4
  br label %tx_inc_submitted_urbs.exit

tx_inc_submitted_urbs.exit:                       ; preds = %if.then.i, %if.end13.tx_inc_submitted_urbs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  br label %cleanup

cleanup:                                          ; preds = %tx_inc_submitted_urbs.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tx_inc_submitted_urbs.exit ], [ %call9, %do.end ], [ -2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_urb_complete(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_driver_data, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %7, label %do.end8 [
    i32 0, label %entry.free_urb_crit_edge
    i32 -108, label %entry.do.end_crit_edge
    i32 -22, label %entry.do.end_crit_edge43
    i32 -19, label %entry.do.end_crit_edge44
    i32 -2, label %entry.do.end_crit_edge45
    i32 -104, label %entry.do.end_crit_edge46
    i32 -32, label %entry.do.end_crit_edge47
  ]

entry.do.end_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.free_urb_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_urb

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge43, %entry.do.end_crit_edge44, %entry.do.end_crit_edge45, %entry.do.end_crit_edge46, %entry.do.end_crit_edge47
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev4, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.137, ptr noundef %urb, i32 noundef %7) #14
  br label %free_urb

do.end8:                                          ; preds = %entry
  %dev9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev10, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.137, ptr noundef %urb, i32 noundef %7) #14
  %submitted = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 2, i32 4
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %submitted) #10
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %do.end8.cleanup_crit_edge, label %if.then

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_urb:                                         ; preds = %if.then, %do.end, %entry.free_urb_crit_edge
  %submitted_skbs = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 2, i32 3
  tail call void @skb_unlink(ptr noundef %1, ptr noundef %submitted_skbs) #10
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void @zd_mac_tx_to_dev(ptr noundef %1, i32 noundef %14) #10
  tail call void @usb_free_urb(ptr noundef %urb) #10
  %lock.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 2, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %submitted_urbs.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %submitted_urbs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %submitted_urbs.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %submitted_urbs.i, align 4
  %stopped.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i = icmp slt i8 %bf.load.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec.i)
  %cmp8.i = icmp slt i32 %dec.i, 3
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %free_urb.tx_dec_submitted_urbs.exit_crit_edge

free_urb.tx_dec_submitted_urbs.exit_crit_edge:    ; preds = %free_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %tx_dec_submitted_urbs.exit

if.then.i:                                        ; preds = %free_urb
  call void @__sanitizer_cov_trace_pc() #12
  %intf.i.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %21) #10
  %22 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load12.i = load i8, ptr %stopped.i, align 4
  %bf.clear.i = and i8 %bf.load12.i, 127
  store i8 %bf.clear.i, ptr %stopped.i, align 4
  br label %tx_dec_submitted_urbs.exit

tx_dec_submitted_urbs.exit:                       ; preds = %if.then.i, %free_urb.tx_dec_submitted_urbs.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  br label %cleanup

if.then:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_unanchor_urb(ptr noundef %urb) #10
  %23 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev19, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, ptr noundef %urb, i32 noundef %call14) #14
  br label %free_urb

cleanup:                                          ; preds = %tx_dec_submitted_urbs.exit, %do.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_tx_watchdog_enable(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_enabled = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %watchdog_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %watchdog_enabled, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.29) #14
  %4 = load ptr, ptr @zd_workqueue, align 4
  %watchdog_work = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2
  %call = tail call i32 @round_jiffies_relative(i32 noundef 100) #10
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %watchdog_work, i32 noundef %call) #10
  %5 = ptrtoint ptr %watchdog_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load4 = load i8, ptr %watchdog_enabled, align 4
  %bf.set = or i8 %bf.load4, 64
  store i8 %bf.set, ptr %watchdog_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_tx_watchdog_disable(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_enabled = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %watchdog_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %watchdog_enabled, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.30) #14
  %4 = ptrtoint ptr %watchdog_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load3 = load i8, ptr %watchdog_enabled, align 4
  %bf.clear4 = and i8 %bf.load3, -65
  store i8 %bf.clear4, ptr %watchdog_enabled, align 4
  %watchdog_work = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watchdog_work) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_init(ptr noundef %usb, ptr noundef %hw, ptr noundef %intf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %usb, i32 0, i32 10596)
  %call = tail call ptr @usb_get_intf(ptr noundef %intf) #10
  %intf1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %1 = ptrtoint ptr %intf1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %intf1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %driver_data.i.i, align 4
  %submitted_cmds = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  %3 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 104)
  %5 = ptrtoint ptr %submitted_cmds to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %submitted_cmds, ptr %submitted_cmds, align 4
  %prev.i.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %submitted_cmds, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.143, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_usb_anchor.__key.144, i16 noundef signext 3) #10
  %lock.i9 = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i9, ptr noundef nonnull @.str.146, ptr noundef nonnull @init_usb_interrupt.__key, i16 noundef signext 3) #10
  %7 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf1, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %speed.i.i = getelementptr i8, ptr %10, i32 -100
  %11 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %switch.selectcmp.i.i = icmp eq i32 %12, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 10, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp3.i.i = icmp eq i32 %12, 3
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 4, i32 %switch.select.i.i
  %interval.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 5
  %13 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.select4.i.i, ptr %interval.i, align 4
  %14 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %usb, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %usb, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.147, ptr noundef nonnull @init_completion.__key) #10
  %read_regs_enabled.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %read_regs_enabled.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %read_regs_enabled.i, align 4
  %cr_int_addr.i = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 5
  %16 = ptrtoint ptr %cr_int_addr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4245, ptr %cr_int_addr.i, align 4
  %tx1.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2
  %lock.i10 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i10, ptr noundef nonnull @.str.148, ptr noundef nonnull @init_usb_tx.__key, i16 noundef signext 3) #10
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx1.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %tx1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %tx1.i, align 4
  %stopped.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %stopped.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %stopped.i, align 4
  %submitted_skbs.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3
  %lock.i.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.153, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %19 = ptrtoint ptr %submitted_skbs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %submitted_skbs.i, ptr %submitted_skbs.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %submitted_skbs.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 3, i32 1
  %21 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i.i.i, align 4
  %submitted.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4
  %22 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4, i32 1
  %23 = call ptr @memset(ptr %22, i32 0, i32 104)
  %24 = ptrtoint ptr %submitted.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %submitted.i, ptr %submitted.i, align 4
  %prev.i.i36.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %submitted.i, ptr %prev.i.i36.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.143, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i37.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i37.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_usb_anchor.__key.144, i16 noundef signext 3) #10
  %submitted_urbs.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %submitted_urbs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %submitted_urbs.i, align 4
  %27 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load2.i = load i8, ptr %stopped.i, align 4
  %bf.clear3.i = and i8 %bf.load2.i, -65
  store i8 %bf.clear3.i, ptr %stopped.i, align 4
  %watchdog_work.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2
  tail call void @__init_work(ptr noundef %watchdog_work.i, i32 noundef 0) #10
  %28 = ptrtoint ptr %watchdog_work.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %watchdog_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @init_usb_tx.__key.149, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry13.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry13.i, ptr %entry13.i, align 4
  %prev.i.i12 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry13.i, ptr %prev.i.i12, align 4
  %func.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @zd_tx_watchdog_handler, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 2, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.152, ptr noundef nonnull @init_usb_tx.__key.151) #10
  tail call fastcc void @init_usb_rx(ptr noundef %usb)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_usb_rx(ptr noundef %usb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %rx1 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %rx1, ptr noundef nonnull @.str.157, ptr noundef nonnull @init_usb_rx.__key, i16 noundef signext 3) #10
  %setup_mutex = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %setup_mutex, ptr noundef nonnull @.str.159, ptr noundef nonnull @init_usb_rx.__key.158) #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %speed = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %spec.select = select i1 %cmp, i32 512, i32 64
  %6 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %fragment_length = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %fragment_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fragment_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.not = icmp eq i32 %9, 0
  br i1 %cmp8.not, label %entry.do.body31_crit_edge, label %do.body12, !prof !507

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body12:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_usb_rx.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_usb_rx, %do.end26)) #10
          to label %if.then23 [label %do.end26], !srcloc !508

if.then23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_usb_rx.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1177, ptr noundef nonnull @.str.161) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body12
  tail call void @dump_stack() #14
  br label %do.body31

do.body31:                                        ; preds = %do.end26, %entry.do.body31_crit_edge
  %idle_work = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #10
  %10 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %idle_work, align 4
  %lockdep_map = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.163, ptr noundef nonnull @init_usb_rx.__key.162, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry38 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @zd_rx_idle_timer_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.165, ptr noundef nonnull @init_usb_rx.__key.164) #10
  %reset_timer_tasklet = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 3
  %14 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 3, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @zd_usb_reset_rx_idle_timer_tasklet, ptr %14, align 4
  %16 = ptrtoint ptr %reset_timer_tasklet to i32
  %data51 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 1, i32 3, i32 5
  %17 = ptrtoint ptr %data51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_clear(ptr nocapture noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = load ptr, ptr %intf, align 4
  tail call void @usb_put_intf(ptr noundef %3) #10
  %4 = call ptr @memset(ptr %usb, i32 255, i32 10596)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_scnprint_id(ptr nocapture noundef readonly %usb, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %idVendor.i = getelementptr i8, ptr %3, i32 936
  %4 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor.i, align 8
  %idProduct.i = getelementptr i8, ptr %3, i32 938
  %6 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct.i, align 2
  %bcdDevice.i.i = getelementptr i8, ptr %3, i32 940
  %8 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bcdDevice.i.i, align 4
  %speed.i = getelementptr i8, ptr %3, i32 -100
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed.i, align 4
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %entry.scnprint_id.exit_crit_edge

entry.scnprint_id.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %scnprint_id.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.zd_usb_scnprint_id, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %scnprint_id.exit

scnprint_id.exit:                                 ; preds = %switch.lookup, %entry.scnprint_id.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.171, %entry.scnprint_id.exit_crit_edge ]
  %14 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %conv3.i = zext i16 %14 to i32
  %15 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %conv2.i = zext i16 %15 to i32
  %16 = tail call i16 @llvm.bswap.i16(i16 %5) #10
  %conv.i = zext i16 %16 to i32
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %size, ptr noundef nonnull @.str.167, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, ptr noundef nonnull %retval.0.i.i) #10
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_init_hw(ptr nocapture noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  %ur_fw.i.i = alloca ptr, align 4
  %fw_name.i.i = alloca [128 x i8], align 1
  %ub_fw.i = alloca ptr, align 4
  %uph_fw.i = alloca ptr, align 4
  %fw_name.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.31) #14
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ub_fw.i) #10
  %6 = ptrtoint ptr %ub_fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ub_fw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uph_fw.i) #10
  %7 = ptrtoint ptr %uph_fw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %uph_fw.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fw_name.i) #10
  %8 = call ptr @memset(ptr %fw_name.i, i32 255, i32 128)
  %bcdDevice.i.i = getelementptr i8, ptr %5, i32 940
  %9 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bcdDevice.i.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %is_zd1211b.i.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 8
  %12 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %is_zd1211b.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.193, ptr @.str.192
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %fw_name.i, i32 noundef 128, ptr noundef nonnull @.str.191, ptr noundef nonnull %cond.i.i, ptr noundef nonnull @.str.172) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %5, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef nonnull %fw_name.i) #14
  %call.i65.i = call i32 @request_firmware(ptr noundef nonnull %ub_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool.not.i66.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool.not.i66.i, label %if.end.i, label %request_fw_file.exit.i

request_fw_file.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.189, ptr noundef nonnull %fw_name.i, i32 noundef %call.i65.i) #14
  br label %upload_firmware.exit

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %ub_fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ub_fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %16, i32 23
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #10
  %conv.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %10)
  %cmp.not.i = icmp eq i16 %18, %10
  br i1 %cmp.not.i, label %do.end26.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %conv5.i = zext i16 %11 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.173, i32 noundef %conv.i, i32 noundef %conv5.i) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 17172, i16 %11)
  %cmp12.i = icmp ult i16 %11, 17172
  br i1 %cmp12.i, label %do.end17.i, label %do.end.i.if.end19.i_crit_edge

do.end.i.if.end19.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.177) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end17.i, %do.end.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %ub_fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ub_fw.i, align 4
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %parent.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ur_fw.i.i) #10
  %26 = ptrtoint ptr %ur_fw.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ur_fw.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fw_name.i.i) #10
  %27 = call ptr @memset(ptr %fw_name.i.i, i32 255, i32 128)
  %28 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i.i = load i8, ptr %is_zd1211b.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, ptr @.str.193, ptr @.str.192
  %call.i.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %fw_name.i.i, i32 noundef 128, ptr noundef nonnull @.str.191, ptr noundef nonnull %cond.i.i.i, ptr noundef nonnull @.str.194) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %25, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef nonnull %fw_name.i.i) #14
  %call.i17.i.i = call i32 @request_firmware(ptr noundef nonnull %ur_fw.i.i, ptr noundef nonnull %fw_name.i.i, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool.not.i18.i.i = icmp eq i32 %call.i17.i.i, 0
  br i1 %tobool.not.i18.i.i, label %if.end.i.i, label %request_fw_file.exit.i.i

request_fw_file.exit.i.i:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.189, ptr noundef nonnull %fw_name.i.i, i32 noundef %call.i17.i.i) #14
  br label %handle_version_mismatch.exit.thread.i

if.end.i.i:                                       ; preds = %if.end19.i
  %29 = ptrtoint ptr %ur_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ur_fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %call3.i.i = call fastcc i32 @upload_code(ptr noundef %add.ptr.i.i.i.i, ptr noundef %32, i32 noundef %34, i16 noundef zeroext -4608) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %handle_version_mismatch.exit.i, label %if.end.i.i.handle_version_mismatch.exit.thread.i_crit_edge

if.end.i.i.handle_version_mismatch.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_version_mismatch.exit.thread.i

handle_version_mismatch.exit.thread.i:            ; preds = %if.end.i.i.handle_version_mismatch.exit.thread.i_crit_edge, %request_fw_file.exit.i.i
  %r.0.i.ph.i = phi i32 [ %call3.i.i, %if.end.i.i.handle_version_mismatch.exit.thread.i_crit_edge ], [ %call.i17.i.i, %request_fw_file.exit.i.i ]
  %35 = ptrtoint ptr %ur_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ur_fw.i.i, align 4
  call void @release_firmware(ptr noundef %36) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_name.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ur_fw.i.i) #10
  br label %upload_firmware.exit

handle_version_mismatch.exit.i:                   ; preds = %if.end.i.i
  %data7.i.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %37 = ptrtoint ptr %data7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data7.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 298
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %21, align 4
  %sub.i.i = add i32 %40, -298
  %call9.i.i = call fastcc i32 @upload_code(ptr noundef %add.ptr.i.i.i.i, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, i16 noundef zeroext -1899) #10
  %41 = ptrtoint ptr %ur_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ur_fw.i.i, align 4
  call void @release_firmware(ptr noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_name.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ur_fw.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool21.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool21.not.i, label %handle_version_mismatch.exit.i.if.end29.i_crit_edge, label %handle_version_mismatch.exit.i.upload_firmware.exit_crit_edge

handle_version_mismatch.exit.i.upload_firmware.exit_crit_edge: ; preds = %handle_version_mismatch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %upload_firmware.exit

handle_version_mismatch.exit.i.if.end29.i_crit_edge: ; preds = %handle_version_mismatch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

do.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %5, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.174, i32 noundef %conv.i) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %handle_version_mismatch.exit.i.if.end29.i_crit_edge
  %43 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i68.i = load i8, ptr %is_zd1211b.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i68.i)
  %tobool.not.i69.i = icmp sgt i8 %bf.load.i68.i, -1
  %cond.i70.i = select i1 %tobool.not.i69.i, ptr @.str.193, ptr @.str.192
  %call.i71.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %fw_name.i, i32 noundef 128, ptr noundef nonnull @.str.191, ptr noundef nonnull %cond.i70.i, ptr noundef nonnull @.str.182) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %5, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef nonnull %fw_name.i) #14
  %call.i72.i = call i32 @request_firmware(ptr noundef nonnull %uph_fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool.not.i73.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool.not.i73.i, label %if.end36.i, label %request_fw_file.exit76.i

request_fw_file.exit76.i:                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.189, ptr noundef nonnull %fw_name.i, i32 noundef %call.i72.i) #14
  br label %upload_firmware.exit

if.end36.i:                                       ; preds = %if.end29.i
  %44 = ptrtoint ptr %uph_fw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uph_fw.i, align 4
  %data37.i = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data37.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data37.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %call38.i = call fastcc i32 @upload_code(ptr noundef %add.ptr.i.i.i, ptr noundef %47, i32 noundef %49, i16 noundef zeroext -4608) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end36.i.upload_firmware.exit_crit_edge, label %do.end43.i

if.end36.i.upload_firmware.exit_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %upload_firmware.exit

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.184, i32 noundef %call38.i) #14
  br label %upload_firmware.exit

upload_firmware.exit:                             ; preds = %do.end43.i, %if.end36.i.upload_firmware.exit_crit_edge, %request_fw_file.exit76.i, %handle_version_mismatch.exit.i.upload_firmware.exit_crit_edge, %handle_version_mismatch.exit.thread.i, %request_fw_file.exit.i
  %r.0.i = phi i32 [ %call.i65.i, %request_fw_file.exit.i ], [ %call9.i.i, %handle_version_mismatch.exit.i.upload_firmware.exit_crit_edge ], [ %call.i72.i, %request_fw_file.exit76.i ], [ %call38.i, %do.end43.i ], [ 0, %if.end36.i.upload_firmware.exit_crit_edge ], [ %r.0.i.ph.i, %handle_version_mismatch.exit.thread.i ]
  %50 = ptrtoint ptr %ub_fw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ub_fw.i, align 4
  call void @release_firmware(ptr noundef %51) #10
  %52 = ptrtoint ptr %uph_fw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uph_fw.i, align 4
  call void @release_firmware(ptr noundef %53) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uph_fw.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ub_fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not = icmp eq i32 %r.0.i, 0
  %54 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf, align 4
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %upload_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.33, i32 noundef %r.0.i) #14
  br label %cleanup

if.end:                                           ; preds = %upload_firmware.exit
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %57, i32 -128
  %call8 = call i32 @usb_reset_configuration(ptr noundef %add.ptr.i.i42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intf, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev15, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef %call8) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.zd_mac, ptr %usb, i32 0, i32 3
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %call17 = call i32 @zd_mac_init_hw(ptr noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf, align 4
  %dev24 = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev24, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.31, i32 noundef %call17) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %is_zd1211b.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %is_zd1211b.i.i, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %is_zd1211b.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end22, %do.end13, %do.end4
  %retval.0 = phi i32 [ %r.0.i, %do.end4 ], [ %call8, %do.end13 ], [ %call17, %do.end22 ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_mac_init_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_exit.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_exit, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !508

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_exit.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.42, ptr noundef %0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_deregister(ptr noundef nonnull @driver) #10
  %1 = load ptr, ptr @zd_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_init.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_init, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !508

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_init.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.241, ptr noundef %0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @driver, align 4
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.242, i32 noundef 917514, i32 noundef 1, ptr noundef %1) #10
  store ptr %call4, ptr @zd_workqueue, align 4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @driver, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef %2) #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @usb_register_driver(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body21, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @zd_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #10
  %4 = load ptr, ptr @driver, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef %4, i32 noundef %call12) #14
  br label %cleanup

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_init.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_init, %cleanup)) #10
          to label %if.then35 [label %cleanup], !srcloc !508

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load ptr, ptr @driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_init.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.247, ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body21, %if.then14, %do.end8
  %retval.0 = phi i32 [ -12, %do.end8 ], [ %call12, %if.then14 ], [ 0, %if.then35 ], [ 0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_ioread16v(ptr noundef %usb, ptr nocapture noundef writeonly %values, ptr nocapture noundef readonly %addresses, i32 noundef %count) local_unnamed_addr #1 align 64 {
entry:
  %actual_req_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_req_len) #10
  %0 = ptrtoint ptr %actual_req_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_req_len, align 4, !annotation !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count)
  %cmp1 = icmp ugt i32 %count, 15
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %intf6 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %3 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf6, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev7, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %count, i32 noundef 15) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %urb6.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 2
  %5 = ptrtoint ptr %urb6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  %cmp8.i.not = icmp eq ptr %6, null
  br i1 %cmp8.i.not, label %do.end12, label %do.body16

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %intf13 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %7 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf13, align 4
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev14, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44) #14
  br label %cleanup

do.body16:                                        ; preds = %if.end8
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %usb, i32 0, i32 2
  %call18 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call18, label %do.body16.for.body.preheader_crit_edge, label %do.body23, !prof !507

do.body16.for.body.preheader_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.body23:                                        ; preds = %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_ioread16v.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_ioread16v, %do.end37)) #10
          to label %if.then34 [label %do.end37], !srcloc !508

if.then34:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_ioread16v.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1719, ptr noundef nonnull @.str.51) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body23
  tail call void @dump_stack() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end37, %do.body16.for.body.preheader_crit_edge
  %mul = shl nuw nsw i32 %count, 1
  %add = add nuw nsw i32 %mul, 2
  %req_buf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7
  %9 = ptrtoint ptr %req_buf to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 8704, ptr %req_buf, align 1
  %addr = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7, i32 2
  br label %for.body

retry_read.preheader:                             ; preds = %for.body
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %read_regs_enabled.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 6
  %req2.i = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 1
  %req_count.i = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 2
  %read_regs_int_overridden.i = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 7
  %regs6.i = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 3, i32 2
  br label %retry_read

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0162 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %addresses, i32 %i.0162
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %arrayidx65 = getelementptr [0 x i16], ptr %addr, i32 0, i32 %i.0162
  %13 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %arrayidx65, align 1
  %inc = add nuw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %retry_read.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

retry_read:                                       ; preds = %do.end101, %retry_read.preheader
  %try_count.0 = phi i32 [ %inc66, %do.end101 ], [ 0, %retry_read.preheader ]
  %inc66 = add nuw nsw i32 %try_count.0, 1
  %14 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -128
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %read_regs_enabled.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %read_regs_enabled.i, align 4
  %19 = ptrtoint ptr %req2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %req_buf, ptr %req2.i, align 4
  %20 = ptrtoint ptr %req_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %count, ptr %req_count.i, align 4
  %21 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %usb, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, 1073872896
  %ep_out.i.i = getelementptr i8, ptr %17, i32 1024
  %shr.i.i = lshr i32 %or.i, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %ep_out.i.i, i32 %and2.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %retry_read.do.end73_crit_edge, label %if.end.i

retry_read.do.end73_crit_edge:                    ; preds = %retry_read
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end.i:                                         ; preds = %retry_read
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes.i.i, align 1
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i.not.i = icmp eq i8 %28, 3
  br i1 %cmp.i.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, ptr noundef %req_buf, i32 noundef %add, ptr noundef nonnull %actual_req_len, i32 noundef 50) #10
  br label %zd_ep_regs_out_msg.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i = or i32 %shl.i.i, -1073610752
  %call8.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or7.i, ptr noundef %req_buf, i32 noundef %add, ptr noundef nonnull %actual_req_len, i32 noundef 50) #10
  br label %zd_ep_regs_out_msg.exit

zd_ep_regs_out_msg.exit:                          ; preds = %if.else.i, %if.then4.i
  %retval.0.i148 = phi i32 [ %call5.i, %if.then4.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i148)
  %tobool69.not = icmp eq i32 %retval.0.i148, 0
  br i1 %tobool69.not, label %if.end76, label %zd_ep_regs_out_msg.exit.do.end73_crit_edge

zd_ep_regs_out_msg.exit.do.end73_crit_edge:       ; preds = %zd_ep_regs_out_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end73:                                         ; preds = %zd_ep_regs_out_msg.exit.do.end73_crit_edge, %retry_read.do.end73_crit_edge
  %retval.0.i148155 = phi i32 [ %retval.0.i148, %zd_ep_regs_out_msg.exit.do.end73_crit_edge ], [ -22, %retry_read.do.end73_crit_edge ]
  %29 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf.i, align 4
  %dev75 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev75, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i148155) #14
  br label %cleanup

if.end76:                                         ; preds = %zd_ep_regs_out_msg.exit
  %31 = ptrtoint ptr %actual_req_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_req_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %32)
  %cmp77.not = icmp eq i32 %add, %32
  br i1 %cmp77.not, label %if.end84, label %do.end81

do.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i, align 4
  %dev83 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev83, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.44, i32 noundef %add, i32 noundef %32) #14
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %call86 = call i32 @wait_for_completion_timeout(ptr noundef %usb, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.end94

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @disable_read_regs_int(ptr noundef %usb)
  %35 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf.i, align 4
  %dev93 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev93, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.44) #14
  br label %cleanup

if.end94:                                         ; preds = %if.end84
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %37 = ptrtoint ptr %read_regs_int_overridden.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %read_regs_int_overridden.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.i = icmp slt i8 %bf.load.i, 0
  br i1 %tobool.i, label %if.end94.get_results.exit_crit_edge, label %if.end.i150

if.end94.get_results.exit_crit_edge:              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_results.exit

if.end.i150:                                      ; preds = %if.end94
  %call.i = call fastcc zeroext i1 @check_read_regs(ptr noundef %usb, ptr noundef %req_buf, i32 noundef %count) #10
  br i1 %call.i, label %if.end.i150.for.body.i_crit_edge, label %get_results.exit.thread

if.end.i150.for.body.i_crit_edge:                 ; preds = %if.end.i150
  br label %for.body.i

get_results.exit.thread:                          ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.249) #14
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i150.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i150.for.body.i_crit_edge ]
  %value.i = getelementptr [0 x %struct.reg_data], ptr %regs6.i, i32 0, i32 %i.020.i, i32 1
  %40 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %value.i, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41) #10
  %arrayidx7.i = getelementptr i16, ptr %values, i32 %i.020.i
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx7.i, align 2
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.body.i.get_results.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.get_results.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_results.exit

get_results.exit:                                 ; preds = %for.body.i.get_results.exit_crit_edge, %if.end94.get_results.exit_crit_edge
  %r.0.i = phi i32 [ -5, %if.end94.get_results.exit_crit_edge ], [ 0, %for.body.i.get_results.exit_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %try_count.0)
  %cmp97 = icmp ult i32 %try_count.0, 19
  %or.cond = select i1 %tobool.i, i1 %cmp97, i1 false
  br i1 %or.cond, label %do.end101, label %get_results.exit.cleanup_crit_edge

get_results.exit.cleanup_crit_edge:               ; preds = %get_results.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end101:                                        ; preds = %get_results.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf.i, align 4
  %dev103 = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev103, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.44, i32 noundef %inc66) #14
  br label %retry_read

cleanup:                                          ; preds = %get_results.exit.cleanup_crit_edge, %get_results.exit.thread, %if.then88, %do.end81, %do.end73, %do.end12, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -11, %do.end12 ], [ %retval.0.i148155, %do.end73 ], [ -5, %do.end81 ], [ -110, %if.then88 ], [ -5, %get_results.exit.thread ], [ %r.0.i, %get_results.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_req_len) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_read_regs_int(ptr noundef %usb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %read_regs_enabled = getelementptr inbounds %struct.zd_usb_interrupt, ptr %usb, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_regs_enabled, i32 noundef 4) #10
  %0 = ptrtoint ptr %read_regs_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %read_regs_enabled, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_usb_iowrite16v_async_start(ptr noundef %usb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %submitted_cmds = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  %call = tail call i32 @usb_anchor_empty(ptr noundef %submitted_cmds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %entry.do.body18_crit_edge, !prof !510

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_start, %do.end)) #10
          to label %if.then15 [label %do.end], !srcloc !508

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1811, ptr noundef nonnull @.str.65) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #14
  br label %do.body18

do.body18:                                        ; preds = %do.end, %entry.do.body18_crit_edge
  %urb_async_waiting = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 5
  %0 = ptrtoint ptr %urb_async_waiting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_async_waiting, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.body18.do.body47_crit_edge, label %do.body28, !prof !507

do.body18.do.body47_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

do.body28:                                        ; preds = %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_start, %do.end44)) #10
          to label %if.then42 [label %do.end44], !srcloc !508

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1812, ptr noundef nonnull @.str.66) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then42, %do.body28
  tail call void @dump_stack() #14
  br label %do.body47

do.body47:                                        ; preds = %do.end44, %do.body18.do.body47_crit_edge
  %in_async = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 8
  %2 = ptrtoint ptr %in_async to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %in_async, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool48.not = icmp eq i8 %3, 0
  br i1 %tobool48.not, label %do.body47.do.body79_crit_edge, label %do.body60, !prof !507

do.body47.do.body79_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

do.body60:                                        ; preds = %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_start, %do.end76)) #10
          to label %if.then74 [label %do.end76], !srcloc !508

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1813, ptr noundef nonnull @.str.67) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then74, %do.body60
  tail call void @dump_stack() #14
  br label %do.body79

do.body79:                                        ; preds = %do.end76, %do.body47.do.body79_crit_edge
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %usb, i32 0, i32 2
  %call81 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call81, label %do.body79.do.end109_crit_edge, label %do.body91, !prof !507

do.body79.do.end109_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

do.body91:                                        ; preds = %do.body79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_start, %do.end107)) #10
          to label %if.then105 [label %do.end107], !srcloc !508

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1815, ptr noundef nonnull @.str.51) #10
  br label %do.end107

do.end107:                                        ; preds = %if.then105, %do.body91
  tail call void @dump_stack() #14
  br label %do.end109

do.end109:                                        ; preds = %do.end107, %do.body79.do.end109_crit_edge
  %4 = ptrtoint ptr %in_async to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load111 = load i8, ptr %in_async, align 4
  %bf.set = or i8 %bf.load111, 16
  store i8 %bf.set, ptr %in_async, align 4
  %cmd_error = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 6
  %5 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_error, align 4
  %6 = ptrtoint ptr %urb_async_waiting to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %urb_async_waiting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_anchor_empty(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_iowrite16v_async_end(ptr noundef %usb, i32 noundef %timeout) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %usb, i32 0, i32 2
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call1, label %entry.do.body19_crit_edge, label %do.body4, !prof !507

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_end, %do.end)) #10
          to label %if.then15 [label %do.end], !srcloc !508

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1826, ptr noundef nonnull @.str.51) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #14
  br label %do.body19

do.body19:                                        ; preds = %do.end, %entry.do.body19_crit_edge
  %in_async = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 8
  %0 = ptrtoint ptr %in_async to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %in_async, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool20.not = icmp eq i8 %1, 0
  br i1 %tobool20.not, label %do.body30, label %do.body19.do.end50_crit_edge, !prof !510

do.body19.do.end50_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.body30:                                        ; preds = %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async_end, %do.end47)) #10
          to label %if.then44 [label %do.end47], !srcloc !508

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1827, ptr noundef nonnull @.str.69) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body30
  tail call void @dump_stack() #14
  br label %do.end50

do.end50:                                         ; preds = %do.end47, %do.body19.do.end50_crit_edge
  %urb_async_waiting.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 5
  %2 = ptrtoint ptr %urb_async_waiting.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_async_waiting.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end50.if.end57_crit_edge, label %if.end.i

do.end50.if.end57_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end.i:                                         ; preds = %do.end50
  %4 = ptrtoint ptr %urb_async_waiting.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %urb_async_waiting.i, align 4
  %submitted_cmds.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %3, ptr noundef %submitted_cmds.i) #10
  %call.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %3, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %zd_submit_waiting_urb.exit.thread100, label %do.end56

zd_submit_waiting_urb.exit.thread100:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_free_urb(ptr noundef nonnull %3) #10
  br label %if.end57

do.end56:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_unanchor_urb(ptr noundef nonnull %3) #10
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %5 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, i32 noundef %call.i) #14
  tail call void @usb_free_urb(ptr noundef nonnull %3) #10
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %call.i) #14
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted_cmds.i) #10
  br label %error

if.end57:                                         ; preds = %zd_submit_waiting_urb.exit.thread100, %do.end50.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool58.not = icmp eq i32 %timeout, 0
  br i1 %tobool58.not, label %if.end57.if.then64_crit_edge, label %if.then59

if.end57.if.then64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then59:                                        ; preds = %if.end57
  %submitted_cmds60 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  %call61 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted_cmds60, i32 noundef %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %phi.cmp = icmp eq i32 %call61, 0
  br i1 %phi.cmp, label %if.then59.if.then64_crit_edge, label %if.then59.if.end73_crit_edge

if.then59.if.end73_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then59.if.then64_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %if.then59.if.then64_crit_edge, %if.end57.if.then64_crit_edge
  %submitted_cmds65 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted_cmds65) #10
  %cmd_error = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 6
  %9 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %cmp = icmp eq i32 %10, -2
  br i1 %cmp, label %do.end69, label %if.then64.if.end73_crit_edge

if.then64.if.end73_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end69:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %intf70 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %11 = ptrtoint ptr %intf70 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf70, align 4
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) #14
  br label %error

if.end73:                                         ; preds = %if.then64.if.end73_crit_edge, %if.then59.if.end73_crit_edge
  %cmd_error74 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 6
  %13 = ptrtoint ptr %cmd_error74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_error74, align 4
  br label %error

error:                                            ; preds = %if.end73, %do.end69, %do.end56
  %r.0 = phi i32 [ %call.i, %do.end56 ], [ %14, %if.end73 ], [ -110, %do.end69 ]
  %15 = ptrtoint ptr %in_async to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load76 = load i8, ptr %in_async, align 4
  %bf.clear77 = and i8 %bf.load76, -17
  store i8 %bf.clear77, ptr %in_async, align 4
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_iowrite16v_async(ptr noundef %usb, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %usb, i32 0, i32 2
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call1, label %entry.do.body19_crit_edge, label %do.body4, !prof !507

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async, %do.end)) #10
          to label %if.then15 [label %do.end], !srcloc !508

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1868, ptr noundef nonnull @.str.51) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #14
  br label %do.body19

do.body19:                                        ; preds = %do.end, %entry.do.body19_crit_edge
  %in_async = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 8
  %0 = ptrtoint ptr %in_async to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %in_async, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool20.not = icmp eq i8 %1, 0
  br i1 %tobool20.not, label %do.body30, label %do.body19.do.end50_crit_edge, !prof !510

do.body19.do.end50_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.body30:                                        ; preds = %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_iowrite16v_async, %do.end47)) #10
          to label %if.then44 [label %do.end47], !srcloc !508

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1869, ptr noundef nonnull @.str.69) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body30
  tail call void @dump_stack() #14
  br label %do.end50

do.end50:                                         ; preds = %do.end47, %do.body19.do.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end50.cleanup_crit_edge, label %if.end52

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count)
  %cmp53 = icmp ugt i32 %count, 15
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  br i1 %cmp53, label %do.end57, label %if.end58

do.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.74, i32 noundef %count, i32 noundef 15) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 8
  %ep_out.i = getelementptr i8, ptr %5, i32 1024
  %8 = lshr i32 %7, 7
  %shr.i = and i32 %8, 11
  %and2.i = or i32 %shr.i, 4
  %arrayidx.i = getelementptr ptr, ptr %ep_out.i, i32 %and2.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool62.not = icmp eq ptr %10, null
  br i1 %tobool62.not, label %if.end58.cleanup_crit_edge, label %if.end64

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %call65 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %if.end68

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %11 = shl nuw nsw i32 %count, 2
  %12 = or i32 %11, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #13
  %tobool71.not = icmp eq ptr %call9.i, null
  br i1 %tobool71.not, label %if.end68.error_crit_edge, label %for.body.preheader

if.end68.error_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

for.body.preheader:                               ; preds = %if.end68
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8448, ptr %call9.i, align 128
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0174 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.usb_req_write_regs, ptr %call9.i, i32 0, i32 1, i32 %i.0174
  %arrayidx75 = getelementptr %struct.zd_ioreq16, ptr %ioreqs, i32 %i.0174
  %14 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx75, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx, align 2
  %value = getelementptr %struct.zd_ioreq16, ptr %ioreqs, i32 %i.0174, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %value, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %value78 = getelementptr %struct.usb_req_write_regs, ptr %call9.i, i32 0, i32 1, i32 %i.0174, i32 1
  %21 = ptrtoint ptr %value78 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %value78, align 4
  %inc = add nuw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes.i, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.i146.not = icmp eq i8 %24, 3
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i147 = shl i32 %26, 8
  br i1 %cmp.i146.not, label %if.then81, label %if.else

if.then81:                                        ; preds = %for.end
  %or83 = or i32 %shl.i147, 1073872896
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 5
  %27 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterval, align 2
  %conv = zext i8 %28 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or83, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %12, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @iowrite16v_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %usb, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %5, i32 -100
  %35 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i149 = icmp eq i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp6.i = icmp ugt i32 %36, 4
  %or.cond.i = or i1 %cmp.i149, %cmp6.i
  br i1 %or.cond.i, label %if.then.i151, label %if.then81.usb_fill_int_urb.exit_crit_edge

if.then81.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i151:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i32 @llvm.smax.i32(i32 %conv, i32 1) #10
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 16) #10
  %sub.i = add nsw i32 %38, -1
  %shl.i150 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i151, %if.then81.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i150, %if.then.i151 ], [ %conv, %if.then81.usb_fill_int_urb.exit_crit_edge ]
  %39 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 25
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %interval.sink.i, ptr %39, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 23
  %41 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end87

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %or86 = or i32 %shl.i147, -1073610752
  %dev1.i155 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i155 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i, ptr %dev1.i155, align 4
  %pipe2.i156 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i156 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or86, ptr %pipe2.i156, align 4
  %transfer_buffer3.i157 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer3.i157 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i, ptr %transfer_buffer3.i157, align 4
  %transfer_buffer_length.i158 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i158 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %12, ptr %transfer_buffer_length.i158, align 4
  %complete.i159 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 28
  %46 = ptrtoint ptr %complete.i159 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @iowrite16v_urb_complete, ptr %complete.i159, align 4
  %context4.i160 = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 27
  %47 = ptrtoint ptr %context4.i160 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %usb, ptr %context4.i160, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else, %usb_fill_int_urb.exit
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call65, i32 0, i32 13
  %48 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %transfer_flags, align 4
  %or88 = or i32 %49, 256
  store i32 %or88, ptr %transfer_flags, align 4
  %urb_async_waiting.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 5
  %50 = ptrtoint ptr %urb_async_waiting.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %urb_async_waiting.i, align 4
  %tobool.not.i161 = icmp eq ptr %51, null
  br i1 %tobool.not.i161, label %if.end87.if.end97_crit_edge, label %if.end.i162

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.end.i162:                                      ; preds = %if.end87
  %52 = ptrtoint ptr %urb_async_waiting.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %urb_async_waiting.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags.i, align 4
  %or.i163 = or i32 %54, 128
  store i32 %or.i163, ptr %transfer_flags.i, align 4
  %submitted_cmds.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %51, ptr noundef %submitted_cmds.i) #10
  %call.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %51, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %zd_submit_waiting_urb.exit.thread171, label %do.end94

zd_submit_waiting_urb.exit.thread171:             ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_free_urb(ptr noundef nonnull %51) #10
  br label %if.end97

do.end94:                                         ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_unanchor_urb(ptr noundef nonnull %51) #10
  %55 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %intf, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %56, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, i32 noundef %call.i) #14
  tail call void @usb_free_urb(ptr noundef nonnull %51) #10
  %57 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf, align 4
  %dev96 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev96, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74, i32 noundef %call.i) #14
  br label %error

if.end97:                                         ; preds = %zd_submit_waiting_urb.exit.thread171, %if.end87.if.end97_crit_edge
  %59 = ptrtoint ptr %urb_async_waiting.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call65, ptr %urb_async_waiting.i, align 4
  br label %cleanup

error:                                            ; preds = %do.end94, %if.end68.error_crit_edge
  %r.0 = phi i32 [ %call.i, %do.end94 ], [ -12, %if.end68.error_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call65) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end97, %if.end64.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end57, %do.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end57 ], [ %r.0, %error ], [ 0, %if.end97 ], [ 0, %do.end50.cleanup_crit_edge ], [ -2, %if.end58.cleanup_crit_edge ], [ -12, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iowrite16v_urb_complete(ptr nocapture noundef readonly %urb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmd_error = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %cmd_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_error4 = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %cmd_error4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_error4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %land.lhs.true6.if.end9_crit_edge, label %if.then7

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %cmd_error4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %cmd_error4, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_iowrite16v(ptr noundef %usb, ptr nocapture noundef readonly %ioreqs, i32 noundef %count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zd_usb_iowrite16v_async_start(ptr noundef %usb)
  %call = tail call i32 @zd_usb_iowrite16v_async(ptr noundef %usb, ptr noundef %ioreqs, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %usb, i32 noundef 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @zd_usb_iowrite16v_async_end(ptr noundef %usb, i32 noundef 50)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_usb_rfwrite(ptr noundef %usb, i32 noundef %value, i8 noundef zeroext %bits) local_unnamed_addr #1 align 64 {
entry:
  %addr.addr.i = alloca i16, align 2
  %actual_req_len = alloca i32, align 4
  %bit_value_template = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_req_len) #10
  %0 = ptrtoint ptr %actual_req_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_req_len, align 4, !annotation !509
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bit_value_template) #10
  %1 = ptrtoint ptr %bit_value_template to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %bit_value_template, align 2, !annotation !509
  %conv = zext i8 %bits to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bits)
  %cmp = icmp ult i8 %bits, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef 16) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %bits)
  %cmp4 = icmp ugt i8 %bits, 28
  br i1 %cmp4, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %intf10 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %4 = ptrtoint ptr %intf10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf10, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev11, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef 28) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %shl = shl nsw i32 -1, %conv
  %and = and i32 %shl, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %intf26 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %6 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf26, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  br i1 %tobool.not, label %do.end25, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev27, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, i32 noundef %value, i32 noundef %conv) #14
  br label %cleanup

do.end25:                                         ; preds = %if.end13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev27, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.78, i32 noundef %value, i32 noundef %conv) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %8 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -27860, ptr %addr.addr.i, align 2
  %call.i = call i32 @zd_usb_ioread16v(ptr noundef %usb, ptr noundef nonnull %bit_value_template, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf26, align 4
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev35, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.78, i32 noundef %call.i) #14
  br label %cleanup

if.end36:                                         ; preds = %do.end25
  %11 = ptrtoint ptr %bit_value_template to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bit_value_template, align 2
  %13 = and i16 %12, -15
  store i16 %13, ptr %bit_value_template, align 2
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %usb, i32 0, i32 2
  %call42 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call42, label %if.end36.for.body.preheader_crit_edge, label %do.body47, !prof !507

if.end36.for.body.preheader_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

do.body47:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_rfwrite.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_rfwrite, %do.end61)) #10
          to label %if.then58 [label %do.end61], !srcloc !508

if.then58:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_usb_rfwrite.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 1990, ptr noundef nonnull @.str.51) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body47
  tail call void @dump_stack() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end61, %if.end36.for.body.preheader_crit_edge
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 6
  %req_buf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7
  %14 = ptrtoint ptr %req_buf to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 8960, ptr %req_buf, align 1
  %value91 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %value91 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 512, ptr %value91, align 1
  %conv92 = zext i8 %bits to i16
  %16 = shl nuw nsw i16 %conv92, 8
  %bits93 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %bits93 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %bits93, align 1
  %18 = or i16 %13, 8
  %bit_values = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 7, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0176 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %19 = xor i32 %i.0176, -1
  %sub98 = add nsw i32 %19, %conv
  %shl99 = shl nuw i32 1, %sub98
  %and100 = and i32 %shl99, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %spec.select = select i1 %tobool101.not, i16 %13, i16 %18
  %20 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %arrayidx = getelementptr [0 x i16], ptr %bit_values, i32 0, i32 %i.0176
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %22 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf26, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -128
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, 1073872896
  %ep_out.i.i = getelementptr i8, ptr %25, i32 1024
  %shr.i.i = lshr i32 %or.i, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %ep_out.i.i, i32 %and2.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %for.end.do.end112_crit_edge, label %if.end.i

for.end.do.end112_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end112

if.end.i:                                         ; preds = %for.end
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bmAttributes.i.i, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i.not.i = icmp eq i8 %32, 3
  br i1 %cmp.i.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 @usb_interrupt_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, ptr noundef %req_buf, i32 noundef %add, ptr noundef nonnull %actual_req_len, i32 noundef 50) #10
  br label %zd_ep_regs_out_msg.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or7.i = or i32 %shl.i.i, -1073610752
  %call8.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or7.i, ptr noundef %req_buf, i32 noundef %add, ptr noundef nonnull %actual_req_len, i32 noundef 50) #10
  br label %zd_ep_regs_out_msg.exit

zd_ep_regs_out_msg.exit:                          ; preds = %if.else.i, %if.then4.i
  %retval.0.i170 = phi i32 [ %call5.i, %if.then4.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i170)
  %tobool108.not = icmp eq i32 %retval.0.i170, 0
  br i1 %tobool108.not, label %if.end115, label %zd_ep_regs_out_msg.exit.do.end112_crit_edge

zd_ep_regs_out_msg.exit.do.end112_crit_edge:      ; preds = %zd_ep_regs_out_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end112

do.end112:                                        ; preds = %zd_ep_regs_out_msg.exit.do.end112_crit_edge, %for.end.do.end112_crit_edge
  %retval.0.i170174 = phi i32 [ %retval.0.i170, %zd_ep_regs_out_msg.exit.do.end112_crit_edge ], [ -22, %for.end.do.end112_crit_edge ]
  %33 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf26, align 4
  %dev114 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev114, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.78, i32 noundef %retval.0.i170174) #14
  br label %cleanup

if.end115:                                        ; preds = %zd_ep_regs_out_msg.exit
  %35 = ptrtoint ptr %actual_req_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_req_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %36)
  %cmp116.not = icmp eq i32 %add, %36
  br i1 %cmp116.not, label %if.end115.cleanup_crit_edge, label %do.end121

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf26, align 4
  %dev123 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev123, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.78, i32 noundef %add, i32 noundef %36) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %if.end115.cleanup_crit_edge, %do.end112, %do.end33, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %do.end18 ], [ %call.i, %do.end33 ], [ %retval.0.i170174, %do.end112 ], [ -5, %do.end121 ], [ 0, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bit_value_template) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_req_len) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_mac_tx_failed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_read_regs(ptr nocapture noundef readonly %usb, ptr nocapture noundef readonly %req, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 4) #10
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = or i32 %4, 2
  %retval.0.i = select i1 %3, i32 -1, i32 %5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %retval.0.i)
  %cmp = icmp ult i32 %1, %retval.0.i
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %1, i32 noundef %retval.0.i) #14
  br label %cleanup33

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp5 = icmp ugt i32 %1, 64
  br i1 %cmp5, label %do.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1456.not = icmp eq i32 %count, 0
  br i1 %cmp1456.not, label %for.cond.preheader.cleanup33_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup33_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regs15 = getelementptr inbounds %struct.read_regs_int, ptr %usb, i32 0, i32 3, i32 2
  br label %for.body

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %intf10 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %8 = ptrtoint ptr %intf10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf10, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev11, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, i32 noundef %1, i32 noundef 64) #14
  br label %cleanup33

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.reg_data], ptr %regs15, i32 0, i32 %i.057
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx, align 1
  %arrayidx17 = getelementptr %struct.usb_req_read_regs, ptr %req, i32 0, i32 1, i32 %i.057
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp19.not = icmp eq i16 %11, %13
  br i1 %cmp19.not, label %for.inc.critedge, label %do.end24

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf25 = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %14 = ptrtoint ptr %intf25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf25, align 4
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %16 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv28 = zext i16 %16 to i32
  %17 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv31 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev26, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.113, i32 noundef %i.057, i32 noundef %conv28, i32 noundef %conv31) #14
  br label %cleanup33

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.critedge.cleanup33_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.critedge.cleanup33_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

cleanup33:                                        ; preds = %for.inc.critedge.cleanup33_crit_edge, %do.end24, %do.end9, %for.cond.preheader.cleanup33_crit_edge, %do.end
  %retval.2 = phi i1 [ false, %do.end ], [ false, %do.end9 ], [ false, %do.end24 ], [ true, %for.cond.preheader.cleanup33_crit_edge ], [ true, %for.inc.critedge.cleanup33_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_urb_complete(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %1, label %do.end5 [
    i32 0, label %sw.epilog
    i32 -108, label %entry.do.end_crit_edge
    i32 -22, label %entry.do.end_crit_edge180
    i32 -19, label %entry.do.end_crit_edge181
    i32 -2, label %entry.do.end_crit_edge182
    i32 -104, label %entry.do.end_crit_edge183
    i32 -32, label %entry.do.end_crit_edge184
  ]

entry.do.end_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge180, %entry.do.end_crit_edge181, %entry.do.end_crit_edge182, %entry.do.end_crit_edge183, %entry.do.end_crit_edge184
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev1, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.121, ptr noundef %urb, i32 noundef %1) #14
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev7, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.121, ptr noundef %urb, i32 noundef %1) #14
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %rx9 = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.tasklet_schedule.exit_crit_edge

sw.epilog.tasklet_schedule.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %reset_timer_tasklet = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 3
  tail call void @__tasklet_schedule(ptr noundef %reset_timer_tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %sw.epilog.tasklet_schedule.exit_crit_edge
  %usb_packet_size = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %usb_packet_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_packet_size, align 4
  %rem = urem i32 %10, %14
  %sub = add i32 %14, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %sub)
  %cmp = icmp ugt i32 %rem, %sub
  br i1 %cmp, label %do.end13, label %do.body50

do.end13:                                         ; preds = %tasklet_schedule.exit
  %dev14 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev15, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.121) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %10)
  %cmp17 = icmp ugt i32 %10, 9600
  br i1 %cmp17, label %do.body21, label %do.end13.do.body38_crit_edge, !prof !510

do.end13.do.body38_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

do.body21:                                        ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_urb_complete.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_urb_complete, %do.end33)) #10
          to label %if.then31 [label %do.end33], !srcloc !508

if.then31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_urb_complete.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 682, ptr noundef nonnull @.str.127) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then31, %do.body21
  tail call void @dump_stack() #14
  br label %do.body38

do.body38:                                        ; preds = %do.end33, %do.end13.do.body38_crit_edge
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx9) #10
  %fragment = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 4
  %17 = call ptr @memcpy(ptr %fragment, ptr %8, i32 %10)
  %fragment_length = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %fragment_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %fragment_length, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx9, i32 noundef %call42) #10
  br label %resubmit

do.body50:                                        ; preds = %tasklet_schedule.exit
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx9) #10
  %fragment_length63 = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %fragment_length63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fragment_length63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp64.not = icmp eq i32 %20, 0
  br i1 %cmp64.not, label %if.else, label %do.body67

do.body67:                                        ; preds = %do.body50
  %add = add i32 %20, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %add)
  %cmp69 = icmp ugt i32 %add, 9600
  br i1 %cmp69, label %do.body80, label %do.body67.do.end103_crit_edge, !prof !510

do.body67.do.end103_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103

do.body80:                                        ; preds = %do.body67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_urb_complete.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_urb_complete, %do.end97)) #10
          to label %if.then94 [label %do.end97], !srcloc !508

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_urb_complete.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 694, ptr noundef nonnull @.str.128) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %do.body80
  tail call void @dump_stack() #14
  br label %do.end103

do.end103:                                        ; preds = %do.end97, %do.body67.do.end103_crit_edge
  %dev104 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %21 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev104, align 4
  %dev105 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev105, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.121) #14
  %fragment106 = getelementptr inbounds %struct.zd_usb, ptr %12, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %fragment_length63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fragment_length63, align 4
  %add.ptr = getelementptr i8, ptr %fragment106, i32 %24
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %8, i32 %10)
  %26 = load i32, ptr %fragment_length63, align 4
  %add112 = add i32 %26, %10
  tail call fastcc void @handle_rx_packet(ptr noundef %12, ptr noundef %fragment106, i32 noundef %add112)
  %27 = ptrtoint ptr %fragment_length63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %fragment_length63, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx9, i32 noundef %call58) #10
  br label %resubmit

if.else:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx9, i32 noundef %call58) #10
  tail call fastcc void @handle_rx_packet(ptr noundef %12, ptr noundef %8, i32 noundef %10)
  br label %resubmit

resubmit:                                         ; preds = %if.else, %do.end103, %do.body38, %do.end5
  %call117 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %resubmit.cleanup_crit_edge, label %do.end122

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end122:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %dev123 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %28 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev123, align 4
  %dev124 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev124, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.121, ptr noundef %urb, i32 noundef %call117) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %resubmit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_rx_packet(ptr nocapture noundef readonly %usb, ptr noundef %buffer, i32 noundef %length) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp = icmp ult i32 %length, 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, i32 noundef %length) #14
  br label %cleanup29

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buffer, i32 %length
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -8
  %tag = getelementptr inbounds %struct.rx_length_info, ptr %add.ptr1, i32 0, i32 1
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %tag, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32361, i16 %3)
  %cmp2 = icmp eq i16 %3, 32361
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  br i1 %cmp2, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %add.ptr1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp849 = icmp eq i16 %5, 0
  br i1 %cmp849, label %for.cond.preheader.cleanup29_crit_edge, label %if.end11.preheader

for.cond.preheader.cleanup29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end11.preheader:                               ; preds = %for.cond.preheader
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #10
  %conv752 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv752, i32 %length)
  %cmp12 = icmp ugt i32 %conv752, %length
  br i1 %cmp12, label %if.end11.preheader.cleanup29_crit_edge, label %if.end15

if.end11.preheader.cleanup29_crit_edge:           ; preds = %if.end11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end15:                                         ; preds = %if.end11.preheader
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call18 = tail call i32 @zd_mac_rx(ptr noundef %10, ptr noundef %buffer, i32 noundef %conv752) #10
  %add23 = add nuw nsw i32 %conv752, 3
  %and = and i32 %add23, 131068
  %arrayidx = getelementptr [3 x i16], ptr %add.ptr1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp8 = icmp eq i16 %12, 0
  br i1 %cmp8, label %if.end15.cleanup29_crit_edge, label %if.end11.1

if.end15.cleanup29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end11.1:                                       ; preds = %if.end15
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv752.1 = zext i16 %13 to i32
  %add.1 = add nuw nsw i32 %and, %conv752.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %length)
  %cmp12.1 = icmp ugt i32 %add.1, %length
  br i1 %cmp12.1, label %if.end11.1.cleanup29_crit_edge, label %if.end15.1

if.end11.1.cleanup29_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end15.1:                                       ; preds = %if.end11.1
  %14 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i.1 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i.1, align 4
  %add.ptr17.1 = getelementptr i8, ptr %buffer, i32 %and
  %call18.1 = tail call i32 @zd_mac_rx(ptr noundef %17, ptr noundef %add.ptr17.1, i32 noundef %conv752.1) #10
  %add23.1 = add nuw nsw i32 %add.1, 3
  %and.1 = and i32 %add23.1, 524284
  %arrayidx.1 = getelementptr [3 x i16], ptr %add.ptr1, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp8.1 = icmp eq i16 %19, 0
  br i1 %cmp8.1, label %if.end15.1.cleanup29_crit_edge, label %if.end11.2

if.end15.1.cleanup29_crit_edge:                   ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end11.2:                                       ; preds = %if.end15.1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  %conv752.2 = zext i16 %20 to i32
  %add.2 = add nuw nsw i32 %and.1, %conv752.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %length)
  %cmp12.2 = icmp ugt i32 %add.2, %length
  br i1 %cmp12.2, label %if.end11.2.cleanup29_crit_edge, label %if.end15.2

if.end11.2.cleanup29_crit_edge:                   ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup29

if.end15.2:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i.2 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i.i.2, align 4
  %add.ptr17.2 = getelementptr i8, ptr %buffer, i32 %and.1
  %call18.2 = tail call i32 @zd_mac_rx(ptr noundef %24, ptr noundef %add.ptr17.2, i32 noundef %conv752.2) #10
  br label %cleanup29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i47 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i47, align 4
  %call27 = tail call i32 @zd_mac_rx(ptr noundef %28, ptr noundef %buffer, i32 noundef %length) #10
  br label %cleanup29

cleanup29:                                        ; preds = %if.else, %if.end15.2, %if.end11.2.cleanup29_crit_edge, %if.end15.1.cleanup29_crit_edge, %if.end11.1.cleanup29_crit_edge, %if.end15.cleanup29_crit_edge, %if.end11.preheader.cleanup29_crit_edge, %for.cond.preheader.cleanup29_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_mac_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_mac_tx_to_dev(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_tx_watchdog_handler(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr i8, ptr %work, i32 -48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx1, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %watchdog_enabled = getelementptr i8, ptr %work, i32 272
  %2 = ptrtoint ptr %watchdog_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %watchdog_enabled, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %submitted_skbs.i = getelementptr i8, ptr %work, i32 100
  %lock.i = getelementptr i8, ptr %work, i32 112
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %submitted_skbs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %submitted_skbs.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %skb.0.i = phi ptr [ %5, %if.end ], [ %skbnext.0.i, %for.body.i.for.cond.i_crit_edge ]
  %cmp7.not.i = icmp eq ptr %skb.0.i, %submitted_skbs.i
  br i1 %cmp7.not.i, label %zd_tx_timeout.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %6 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %skbnext.0.i = load ptr, ptr %skb.0.i, align 8
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3, i32 28
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %add.i = add i32 %9, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  %cmp10.i = icmp slt i32 %sub.i, 0
  br i1 %cmp10.i, label %do.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

zd_tx_timeout.exit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  br label %out

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  %intf = getelementptr i8, ptr %work, i32 276
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.154) #14
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  tail call void @usb_queue_reset_device(ptr noundef %14) #10
  br label %cleanup

out:                                              ; preds = %zd_tx_timeout.exit, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %15 = load ptr, ptr @zd_workqueue, align 4
  %call7 = tail call i32 @round_jiffies_relative(i32 noundef 100) #10
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_rx_idle_timer_handler(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -340
  %flags = getelementptr i8, ptr %work, i32 10936
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr i8, ptr %work, i32 10064
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.166) #14
  %rx1.i = getelementptr i8, ptr %work, i32 -136
  %setup_mutex.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex.i, i32 noundef 0) #10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx1.i) #10
  %urbs.i = getelementptr i8, ptr %work, i32 9732
  %4 = ptrtoint ptr %urbs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urbs.i, align 4
  %cmp6.not.i = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx1.i, i32 noundef %call3.i) #10
  br i1 %cmp6.not.i, label %if.end13.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__zd_usb_disable_rx(ptr noundef %add.ptr) #10
  %call9.i = tail call fastcc i32 @__zd_usb_enable_rx(ptr noundef %add.ptr) #10
  tail call void @mutex_unlock(ptr noundef %setup_mutex.i) #10
  %6 = load ptr, ptr @zd_workqueue, align 4
  %call.i.i = tail call i32 @round_jiffies_relative(i32 noundef 3000) #10
  %call.i.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef %call.i.i) #10
  br label %cleanup

if.end13.critedge.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %setup_mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13.critedge.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_usb_reset_rx_idle_timer_tasklet(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zd_workqueue, align 4
  %idle_work.i = getelementptr i8, ptr %t, i32 -100
  %call.i = tail call i32 @round_jiffies_relative(i32 noundef 3000) #10
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %idle_work.i, i32 noundef %call.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @upload_code(ptr noundef %udev, ptr nocapture noundef readonly %data, i32 noundef %size, i16 noundef zeroext %code_offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %entry
  %and = and i32 %size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not15 = icmp eq i32 %and, 0
  br i1 %cmp.not15, label %if.end.if.then17_crit_edge, label %while.body.lr.ph

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

while.body.lr.ph:                                 ; preds = %if.end
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %code_offset.addr.018 = phi i16 [ %code_offset, %while.body.lr.ph ], [ %conv14, %cleanup.while.body_crit_edge ]
  %size.addr.017 = phi i32 [ %and, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %data.addr.016 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %1 = tail call i32 @llvm.umin.i32(i32 %size.addr.017, i32 4096)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef %1) #14
  %2 = call ptr @memcpy(ptr %call7.i, ptr %data.addr.016, i32 %1)
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %4, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %1 to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext %code_offset.addr.018, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.198, i32 noundef %call3) #14
  br label %error

cleanup:                                          ; preds = %while.body
  %and12 = and i32 %call3, -2
  %sub = sub i32 %size.addr.017, %and12
  %add.ptr = getelementptr i8, ptr %data.addr.016, i32 %and12
  %div1 = lshr i32 %call3, 1
  %5 = trunc i32 %div1 to i16
  %conv14 = add i16 %code_offset.addr.018, %5
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %cleanup.if.then17_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.if.then17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %cleanup.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %udev, align 8
  %shl.i6 = shl i32 %7, 8
  %or20 = or i32 %shl.i6, -2147483520
  %call21 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or20, i8 noundef zeroext 49, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %if.end33, label %do.end27

do.end27:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.201, i32 noundef %call21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp29 = icmp sgt i32 %call21, -1
  %spec.store.select = select i1 %cmp29, i32 -19, i32 %call21
  br label %error

if.end33:                                         ; preds = %if.then17
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i, align 8
  %conv34 = zext i8 %9 to i32
  %and35 = and i32 %conv34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %dev47 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  br i1 %tobool36.not, label %10, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.204, i32 noundef %conv34) #14
  br label %error

10:                                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev47, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.196, i32 noundef %conv34) #14
  br label %error

error:                                            ; preds = %10, %do.end40, %do.end27, %cleanup.thread, %entry.error_crit_edge
  %r.1 = phi i32 [ -12, %entry.error_crit_edge ], [ %call3, %cleanup.thread ], [ 0, %10 ], [ -19, %do.end40 ], [ %spec.store.select, %do.end27 ]
  tail call void @kfree(ptr noundef %call7.i) #10
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #1 align 64 {
entry:
  %buffer.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer.i) #10
  %2 = call ptr @memset(ptr %buffer.i, i32 255, i32 40)
  %idVendor.i.i = getelementptr i8, ptr %1, i32 936
  %3 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idVendor.i.i, align 8
  %idProduct.i.i = getelementptr i8, ptr %1, i32 938
  %5 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct.i.i, align 2
  %bcdDevice.i.i.i = getelementptr i8, ptr %1, i32 940
  %7 = ptrtoint ptr %bcdDevice.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bcdDevice.i.i.i, align 4
  %speed.i.i = getelementptr i8, ptr %1, i32 -100
  %9 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed.i.i, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %entry.print_id.exit_crit_edge

entry.print_id.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %print_id.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.probe, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %print_id.exit

print_id.exit:                                    ; preds = %switch.lookup, %entry.print_id.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.171, %entry.print_id.exit_crit_edge ]
  %13 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %conv3.i.i = zext i16 %13 to i32
  %14 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  %conv2.i.i = zext i16 %14 to i32
  %15 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %conv.i.i = zext i16 %15 to i32
  %call5.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buffer.i, i32 noundef 40, ptr noundef nonnull @.str.167, i32 noundef %conv.i.i, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i, ptr noundef nonnull %retval.0.i.i.i) #10
  %arrayidx.i = getelementptr inbounds [40 x i8], ptr %buffer.i, i32 0, i32 39
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx.i, align 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, ptr noundef nonnull %buffer.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer.i) #10
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %17 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_info, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %print_id.exit
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -128
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %21 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i = icmp ult i8 %24, 2
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %for.cond.preheader.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %endpoint4.i = getelementptr inbounds %struct.usb_host_interface, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %endpoint4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endpoint4.i, align 4
  %bEndpointAddress.i.i = getelementptr %struct.usb_host_endpoint, ptr %26, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp slt i8 %28, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %bmAttributes.i.i = getelementptr %struct.usb_host_endpoint, ptr %26, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bmAttributes.i.i, align 1
  %31 = and i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp.i.not.i = icmp eq i8 %31, 2
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %bEndpointAddress.i.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress.i.1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.1.i = icmp slt i8 %33, 0
  br i1 %tobool.not.1.i, label %for.inc.i.do.end.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %bmAttributes.i.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 3
  %34 = ptrtoint ptr %bmAttributes.i.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bmAttributes.i.1.i, align 1
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp.i.not.1.i = icmp eq i8 %36, 2
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.if.end14.i_crit_edge, label %land.lhs.true.1.i.do.end.i_crit_edge

land.lhs.true.1.i.do.end.i_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.1.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i:                                         ; preds = %land.lhs.true.1.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.227) #14
  br label %cleanup

if.end14.i:                                       ; preds = %land.lhs.true.1.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge
  %.lcssa.i = phi i8 [ %28, %land.lhs.true.i.if.end14.i_crit_edge ], [ %33, %land.lhs.true.1.i.if.end14.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 31) #15
  %cmp16.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp16.i, label %if.end14.i.cleanup_crit_edge, label %if.end19.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.end14.i
  %phi.cast.i = zext i8 %.lcssa.i to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 15
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 85, ptr %call7.i.i.i, align 8
  %arrayidx21.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 83, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %40 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 66, ptr %arrayidx22.i, align 2
  %arrayidx23.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 67, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %call7.i.i.i, i32 14
  %42 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %arrayidx24.i, align 2
  %arrayidx25.i = getelementptr i8, ptr %call7.i.i.i, i32 15
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 27, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %call7.i.i.i, i32 19
  %44 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %arrayidx26.i, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.230) #14
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %46, 8
  %phi.bo69.i = or i32 %phi.bo.i, %shl.i.i
  %or.i = or i32 %phi.bo69.i, -1073741824
  %call33.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 31, ptr noundef null, i32 noundef 2000) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver_data.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %print_id.exit
  %48 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed.i.i, align 4
  %.off = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %error.thread

sw.epilog:                                        ; preds = %if.end
  %call2 = call i32 @usb_reset_device(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.212, i32 noundef %call2) #14
  br label %error.thread

if.end9:                                          ; preds = %sw.epilog
  %call10 = call ptr @zd_mac_alloc_hw(ptr noundef %intf) #10
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.end9.error.thread_crit_edge, label %if.end12

if.end9.error.thread_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.thread

if.end12:                                         ; preds = %if.end9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call10, i32 0, i32 3
  %50 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.i, align 8
  %52 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp16 = icmp eq i32 %53, 1
  %is_zd1211b = getelementptr inbounds %struct.zd_usb, ptr %51, i32 0, i32 8
  %54 = ptrtoint ptr %is_zd1211b to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %is_zd1211b, align 4
  %bf.shl = select i1 %cmp16, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %is_zd1211b, align 4
  %call20 = call i32 @zd_mac_preinit_hw(ptr noundef nonnull %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev26, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.210, i32 noundef %call20) #14
  br label %if.then48

if.end27:                                         ; preds = %if.end12
  %call28 = call i32 @ieee80211_register_hw(ptr noundef nonnull %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %dev39 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %tobool29.not, label %do.end38, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev39, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.210, i32 noundef %call28) #14
  br label %if.then48

do.end38:                                         ; preds = %if.end27
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev39, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.210) #14
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %call10, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56, i32 3
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end38.wiphy_name.exit_crit_edge

do.end38.wiphy_name.exit_crit_edge:               ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i79 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  %59 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i79, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end38.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %60, %if.end.i.i ], [ %58, %do.end38.wiphy_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39, ptr noundef nonnull @.str.223, ptr noundef %retval.0.i.i) #14
  br label %cleanup

error.thread:                                     ; preds = %if.end9.error.thread_crit_edge, %do.end7, %do.end
  %r.0.ph = phi i32 [ -12, %if.end9.error.thread_crit_edge ], [ %call2, %do.end7 ], [ -19, %do.end ]
  %61 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i, align 8
  %add.ptr.i8185 = getelementptr i8, ptr %62, i32 -128
  %call4686 = call i32 @usb_reset_device(ptr noundef %add.ptr.i8185) #10
  br label %cleanup

if.then48:                                        ; preds = %do.end33, %do.end25
  %r.0 = phi i32 [ %call20, %do.end25 ], [ %call28, %do.end33 ]
  %63 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent.i, align 8
  %add.ptr.i81 = getelementptr i8, ptr %64, i32 -128
  %call46 = call i32 @usb_reset_device(ptr noundef %add.ptr.i81) #10
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 8
  call void @zd_mac_clear(ptr noundef %66) #10
  call void @ieee80211_free_hw(ptr noundef nonnull %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %error.thread, %wiphy_name.exit, %if.end36.i, %if.end19.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wiphy_name.exit ], [ %r.0, %if.then48 ], [ -19, %do.end.i ], [ 0, %if.end36.i ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.end14.i.cleanup_crit_edge ], [ %call33.i, %if.end19.i.cleanup_crit_edge ], [ %r.0.ph, %error.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disconnect(ptr noundef %intf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %intf3 = getelementptr inbounds %struct.zd_usb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %intf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf3, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.232) #14
  tail call void @ieee80211_unregister_hw(ptr noundef nonnull %1) #10
  tail call void @zd_usb_disable_tx(ptr noundef %3)
  %setup_mutex.i = getelementptr inbounds %struct.zd_usb, ptr %3, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex.i, i32 noundef 0) #10
  tail call fastcc void @__zd_usb_disable_rx(ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %setup_mutex.i) #10
  %reset_timer_tasklet.i = getelementptr inbounds %struct.zd_usb, ptr %3, i32 0, i32 1, i32 3
  tail call void @tasklet_kill(ptr noundef %reset_timer_tasklet.i) #10
  %idle_work.i = getelementptr inbounds %struct.zd_usb, ptr %3, i32 0, i32 1, i32 2
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work.i) #10
  tail call void @zd_usb_disable_int(ptr noundef %3)
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %call5 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #10
  tail call void @zd_mac_clear(ptr noundef %3) #10
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disconnect.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disconnect, %cleanup)) #10
          to label %if.then11 [label %cleanup], !srcloc !508

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disconnect.__UNIQUE_ID_ddebug374, ptr noundef %dev12, ptr noundef nonnull @.str.233) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pre_reset(ptr nocapture noundef readonly %intf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %condition = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 5
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %condition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %flags = getelementptr inbounds %struct.zd_mac, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = trunc i32 %7 to i8
  %was_running = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %was_running to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %was_running, align 4
  %conv = shl i8 %8, 5
  %bf.value = and i8 %conv, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %was_running, align 4
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.234) #14
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  tail call void @zd_op_stop(ptr noundef %15) #10
  tail call void @zd_usb_disable_tx(ptr noundef %5) #10
  %setup_mutex.i.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex.i.i, i32 noundef 0) #10
  tail call fastcc void @__zd_usb_disable_rx(ptr noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %setup_mutex.i.i) #10
  %reset_timer_tasklet.i.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 1, i32 3
  tail call void @tasklet_kill(ptr noundef %reset_timer_tasklet.i.i) #10
  %idle_work.i.i = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 1, i32 2
  %call.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work.i.i) #10
  tail call void @zd_usb_disable_int(ptr noundef %5) #10
  %16 = ptrtoint ptr %was_running to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %was_running, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %was_running, align 4
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @post_reset(ptr nocapture noundef readonly %intf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %condition = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 5
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %condition, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %5, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %was_running = getelementptr inbounds %struct.zd_usb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %was_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %was_running, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @zd_usb_resume(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zd_mac_alloc_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_mac_preinit_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_mac_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_op_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zd_usb_resume(ptr noundef %usb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.235) #14
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call2 = tail call i32 @zd_op_start(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end5, label %if.end10

do.end5:                                          ; preds = %entry
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.237, i32 noundef %call2) #14
  %was_running = getelementptr inbounds %struct.zd_usb, ptr %usb, i32 0, i32 8
  %8 = ptrtoint ptr %was_running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %was_running, align 4
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end5.if.end_crit_edge, label %if.then8

do.end5.if.end_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.zd_mac, ptr %usb, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then8, %do.end5.if.end_crit_edge
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  tail call void @usb_queue_reset_device(ptr noundef %11) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.zd_mac, ptr %usb, i32 0, i32 14
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i32 @zd_restore_settings(ptr noundef %usb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.body16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_usb_resume.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_usb_resume, %cleanup)) #10
          to label %if.then22 [label %cleanup], !srcloc !508

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev24 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd_usb_resume.__UNIQUE_ID_ddebug375, ptr noundef %dev24, ptr noundef nonnull @.str.239, i32 noundef %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body16, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_op_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_restore_settings(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !197, !198, !200, !201, !202, !204, !206, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !307, !308, !310, !311, !313, !314, !315, !316, !317, !319, !320, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !379, !381, !383, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !437, !439, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !470, !472, !473, !474, !476, !478, !479, !480, !482, !483, !484, !486, !487, !489, !490, !491, !492, !494, !495, !496}
!llvm.module.flags = !{!497, !498, !499, !500, !501, !502, !503, !504}
!llvm.ident = !{!505}

!0 = !{ptr @__UNIQUE_ID_file357, !1, !"__UNIQUE_ID_file357", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 91, i32 1}
!2 = !{ptr @__UNIQUE_ID_license358, !1, !"__UNIQUE_ID_license358", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description359, !4, !"__UNIQUE_ID_description359", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 92, i32 1}
!5 = !{ptr @__UNIQUE_ID_author360, !6, !"__UNIQUE_ID_author360", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 93, i32 1}
!7 = !{ptr @__UNIQUE_ID_author361, !8, !"__UNIQUE_ID_author361", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 94, i32 1}
!9 = !{ptr @__UNIQUE_ID_version362, !10, !"__UNIQUE_ID_version362", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 95, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_firmware363, !16, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 315, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware364, !18, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 316, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware365, !20, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 317, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware366, !22, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 318, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware367, !24, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 319, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware368, !26, !"__UNIQUE_ID_firmware368", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 320, i32 1}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 338, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @zd_usb_read_fw._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @zd_usb_read_fw._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 342, i32 3}
!37 = !{ptr @zd_usb_read_fw._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @zd_usb_read_fw._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 520, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @zd_usb_enable_int._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @zd_usb_enable_int._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 528, i32 2}
!47 = !{ptr @zd_usb_enable_int.__UNIQUE_ID_ddebug369, !46, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 542, i32 3}
!51 = !{ptr @zd_usb_enable_int._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @zd_usb_enable_int._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 554, i32 2}
!55 = !{ptr @zd_usb_enable_int._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @zd_usb_enable_int._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 557, i32 3}
!59 = !{ptr @zd_usb_enable_int._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @zd_usb_enable_int._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 598, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zd_usb_disable_int._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @zd_usb_disable_int._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1043, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @zd_usb_tx._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @zd_usb_tx._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1108, i32 3}
!73 = !{ptr @zd_tx_watchdog_enable._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @zd_tx_watchdog_enable._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1120, i32 3}
!77 = !{ptr @zd_tx_watchdog_disable._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @zd_tx_watchdog_disable._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1320, i32 2}
!81 = !{ptr @zd_usb_init_hw._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @zd_usb_init_hw._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1324, i32 3}
!85 = !{ptr @zd_usb_init_hw._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @zd_usb_init_hw._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1331, i32 3}
!89 = !{ptr @zd_usb_init_hw._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @zd_usb_init_hw._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1338, i32 3}
!93 = !{ptr @zd_usb_init_hw._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @zd_usb_init_hw._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1564, i32 2}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @usb_exit.__UNIQUE_ID_ddebug378, !96, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!99 = !{ptr @__initcall__kmod_zd1211rw__379_1569_usb_init6, !100, !"__initcall__kmod_zd1211rw__379_1569_usb_init6", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1569, i32 1}
!101 = !{ptr @__exitcall_usb_exit, !102, !"__exitcall_usb_exit", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1570, i32 1}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1704, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @zd_usb_ioread16v._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @zd_usb_ioread16v._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1708, i32 3}
!110 = !{ptr @zd_usb_ioread16v._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @zd_usb_ioread16v._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1714, i32 3}
!114 = !{ptr @zd_usb_ioread16v._entry.48, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @zd_usb_ioread16v._entry_ptr.50, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @zd_usb_ioread16v.__UNIQUE_ID_ddebug380, !117, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1719, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1738, i32 3}
!121 = !{ptr @zd_usb_ioread16v._entry.52, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @zd_usb_ioread16v._entry_ptr.54, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1743, i32 3}
!125 = !{ptr @zd_usb_ioread16v._entry.55, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @zd_usb_ioread16v._entry_ptr.57, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1754, i32 3}
!129 = !{ptr @zd_usb_ioread16v._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @zd_usb_ioread16v._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1761, i32 3}
!133 = !{ptr @zd_usb_ioread16v._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @zd_usb_ioread16v._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1811, i32 2}
!137 = !{ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug382, !136, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!138 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug383, !140, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1812, i32 2}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug384, !143, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1813, i32 2}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @zd_usb_iowrite16v_async_start.__UNIQUE_ID_ddebug385, !146, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1815, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1826, i32 2}
!149 = !{ptr @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug386, !148, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!150 = !{ptr @zd_usb_iowrite16v_async_end.__UNIQUE_ID_ddebug387, !151, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1827, i32 2}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1832, i32 3}
!155 = !{ptr @zd_usb_iowrite16v_async_end._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @zd_usb_iowrite16v_async_end._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1846, i32 4}
!159 = !{ptr @zd_usb_iowrite16v_async_end._entry.71, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @zd_usb_iowrite16v_async_end._entry_ptr.73, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1868, i32 2}
!163 = !{ptr @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug388, !162, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!164 = !{ptr @zd_usb_iowrite16v_async.__UNIQUE_ID_ddebug389, !165, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1869, i32 2}
!166 = !{ptr @zd_usb_iowrite16v_async._entry, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1874, i32 3}
!168 = !{ptr @zd_usb_iowrite16v_async._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @zd_usb_iowrite16v_async._entry.75, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1920, i32 3}
!171 = !{ptr @zd_usb_iowrite16v_async._entry_ptr.76, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1959, i32 3}
!174 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @zd_usb_rfwrite._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @zd_usb_rfwrite._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1966, i32 3}
!179 = !{ptr @zd_usb_rfwrite._entry.79, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @zd_usb_rfwrite._entry_ptr.81, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1973, i32 3}
!183 = !{ptr @zd_usb_rfwrite._entry.82, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @zd_usb_rfwrite._entry_ptr.84, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1980, i32 2}
!187 = !{ptr @zd_usb_rfwrite._entry.85, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @zd_usb_rfwrite._entry_ptr.87, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1984, i32 3}
!191 = !{ptr @zd_usb_rfwrite._entry.88, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @zd_usb_rfwrite._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @zd_usb_rfwrite.__UNIQUE_ID_ddebug390, !194, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1990, i32 2}
!195 = !{ptr @zd_usb_rfwrite._entry.91, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 2015, i32 3}
!197 = !{ptr @zd_usb_rfwrite._entry_ptr.92, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 2020, i32 3}
!200 = !{ptr @zd_usb_rfwrite._entry.93, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @zd_usb_rfwrite._entry_ptr.95, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @zd_workqueue, !203, !"zd_workqueue", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1536, i32 26}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 439, i32 3}
!206 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @int_urb_complete._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @int_urb_complete._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @int_urb_complete._entry.98, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 442, i32 3}
!211 = !{ptr @int_urb_complete._entry_ptr.99, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 447, i32 3}
!214 = !{ptr @int_urb_complete._entry.100, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @int_urb_complete._entry_ptr.102, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 453, i32 3}
!218 = !{ptr @int_urb_complete._entry.103, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @int_urb_complete._entry_ptr.105, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 473, i32 3}
!222 = !{ptr @int_urb_complete._entry.106, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @int_urb_complete._entry_ptr.108, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 481, i32 3}
!226 = !{ptr @int_urb_complete._entry.109, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @int_urb_complete._entry_ptr.111, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1632, i32 3}
!230 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @check_read_regs._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @check_read_regs._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1639, i32 3}
!235 = !{ptr @check_read_regs._entry.114, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @check_read_regs._entry_ptr.116, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1648, i32 4}
!239 = !{ptr @check_read_regs._entry.117, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @check_read_regs._entry_ptr.119, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 751, i32 2}
!243 = !{ptr @__zd_usb_enable_rx._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @__zd_usb_enable_rx._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @__zd_usb_enable_rx.__UNIQUE_ID_ddebug372, !246, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 763, i32 2}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 665, i32 3}
!249 = !{ptr @rx_urb_complete._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @rx_urb_complete._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @rx_urb_complete._entry.122, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 668, i32 3}
!253 = !{ptr @rx_urb_complete._entry_ptr.123, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 681, i32 3}
!256 = !{ptr @rx_urb_complete._entry.124, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @rx_urb_complete._entry_ptr.126, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @rx_urb_complete.__UNIQUE_ID_ddebug370, !259, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 682, i32 3}
!260 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @rx_urb_complete.__UNIQUE_ID_ddebug371, !262, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 693, i32 3}
!263 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 695, i32 3}
!266 = !{ptr @rx_urb_complete._entry.129, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @rx_urb_complete._entry_ptr.131, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 709, i32 3}
!270 = !{ptr @rx_urb_complete._entry.132, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @rx_urb_complete._entry_ptr.134, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 612, i32 3}
!274 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @handle_rx_packet._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @handle_rx_packet._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.137, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 981, i32 3}
!279 = !{ptr @tx_urb_complete._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @tx_urb_complete._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @tx_urb_complete._entry.138, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 984, i32 3}
!283 = !{ptr @tx_urb_complete._entry_ptr.139, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 998, i32 3}
!286 = !{ptr @tx_urb_complete._entry.140, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @tx_urb_complete._entry_ptr.142, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @init_usb_anchor.__key, !289, !"__key", i1 false, i1 false}
!289 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!290 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @init_usb_anchor.__key.144, !292, !"__key", i1 false, i1 false}
!292 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!293 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @init_usb_interrupt.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1159, i32 2}
!296 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @init_completion.__key, !298, !"__key", i1 false, i1 false}
!298 = !{!"../include/linux/completion.h", i32 87, i32 2}
!299 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @init_usb_tx.__key, !301, !"__key", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1188, i32 2}
!302 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @init_usb_tx.__key.149, !304, !"__key", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1195, i32 2}
!305 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @init_usb_tx.__key.151, !304, !"__key", i1 false, i1 false}
!307 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @skb_queue_head_init.__key, !309, !"__key", i1 false, i1 false}
!309 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!310 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1092, i32 2}
!313 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.156, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @zd_tx_watchdog_handler._entry, !312, !"_entry", i1 false, i1 false}
!316 = !{ptr @zd_tx_watchdog_handler._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @init_usb_rx.__key, !318, !"__key", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1170, i32 2}
!319 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @init_usb_rx.__key.158, !321, !"__key", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1171, i32 2}
!322 = !{ptr @.str.159, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1177, i32 2}
!325 = !{ptr @init_usb_rx.__UNIQUE_ID_ddebug373, !324, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!326 = !{ptr @.str.161, !324, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @init_usb_rx.__key.162, !328, !"__key", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1178, i32 2}
!329 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @init_usb_rx.__key.164, !328, !"__key", i1 false, i1 false}
!331 = !{ptr @.str.165, !328, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1135, i32 2}
!334 = !{ptr @zd_rx_idle_timer_handler._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @zd_rx_idle_timer_handler._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.167, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1234, i32 33}
!338 = !{ptr @.str.168, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1222, i32 10}
!340 = !{ptr @.str.169, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1224, i32 10}
!342 = !{ptr @.str.170, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1226, i32 10}
!344 = !{ptr @.str.171, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1228, i32 10}
!346 = !{ptr @.str.172, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 270, i32 46}
!348 = !{ptr @.str.173, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 278, i32 3}
!350 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.175, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @upload_firmware._entry, !349, !"_entry", i1 false, i1 false}
!353 = !{ptr @upload_firmware._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 282, i32 4}
!356 = !{ptr @upload_firmware._entry.176, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @upload_firmware._entry_ptr.178, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 289, i32 3}
!360 = !{ptr @upload_firmware._entry.179, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @upload_firmware._entry_ptr.181, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.182, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 296, i32 46}
!364 = !{ptr @.str.184, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 303, i32 3}
!366 = !{ptr @upload_firmware._entry.183, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @upload_firmware._entry_ptr.185, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.186, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 112, i32 2}
!370 = !{ptr @.str.187, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @request_fw_file._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @request_fw_file._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.189, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 116, i32 3}
!375 = !{ptr @request_fw_file._entry.188, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @request_fw_file._entry_ptr.190, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.191, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 217, i32 26}
!379 = !{ptr @.str.192, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 219, i32 4}
!381 = !{ptr @.str.193, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 219, i32 24}
!383 = !{ptr @.str.194, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 234, i32 46}
!385 = !{ptr @.str.195, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 153, i32 3}
!387 = !{ptr @.str.196, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @upload_code._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @upload_code._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.198, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 161, i32 4}
!392 = !{ptr @upload_code._entry.197, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @upload_code._entry_ptr.199, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.201, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 182, i32 4}
!396 = !{ptr @upload_code._entry.200, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @upload_code._entry_ptr.202, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.204, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 191, i32 4}
!400 = !{ptr @upload_code._entry.203, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @upload_code._entry_ptr.205, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.207, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 198, i32 3}
!404 = !{ptr @upload_code._entry.206, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @upload_code._entry_ptr.208, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @driver, !407, !"driver", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1526, i32 26}
!408 = !{ptr @.str.209, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1365, i32 3}
!410 = !{ptr @.str.210, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @probe._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @probe._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.212, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1372, i32 3}
!415 = !{ptr @probe._entry.211, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @probe._entry_ptr.213, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @probe._entry.214, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1388, i32 3}
!419 = !{ptr @probe._entry_ptr.215, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.217, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1395, i32 3}
!422 = !{ptr @probe._entry.216, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @probe._entry_ptr.218, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.220, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1400, i32 2}
!426 = !{ptr @probe._entry.219, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @probe._entry_ptr.221, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.223, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1401, i32 2}
!430 = !{ptr @probe._entry.222, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @probe._entry_ptr.224, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.225, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1254, i32 2}
!434 = !{ptr @.str.226, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @print_id._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @print_id._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.227, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1282, i32 3}
!439 = !{ptr @.str.228, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @eject_installer._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @eject_installer._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.230, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1301, i32 2}
!444 = !{ptr @eject_installer._entry.229, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @eject_installer._entry_ptr.231, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.232, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1426, i32 2}
!448 = !{ptr @disconnect._entry, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @disconnect._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.233, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1444, i32 2}
!452 = !{ptr @disconnect.__UNIQUE_ID_ddebug374, !451, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!453 = !{ptr @.str.234, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1476, i32 2}
!455 = !{ptr @zd_usb_stop._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @zd_usb_stop._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.235, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1452, i32 2}
!459 = !{ptr @zd_usb_resume._entry, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @zd_usb_resume._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.237, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1456, i32 3}
!463 = !{ptr @zd_usb_resume._entry.236, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @zd_usb_resume._entry_ptr.238, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.239, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1467, i32 4}
!467 = !{ptr @zd_usb_resume.__UNIQUE_ID_ddebug375, !466, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!468 = !{ptr @usb_ids, !469, !"usb_ids", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 26, i32 35}
!470 = !{ptr @.str.240, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1542, i32 2}
!472 = !{ptr @.str.241, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @usb_init.__UNIQUE_ID_ddebug376, !471, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!474 = !{ptr @.str.242, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1544, i32 17}
!476 = !{ptr @.str.243, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1546, i32 3}
!478 = !{ptr @usb_init._entry, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @usb_init._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.245, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1553, i32 3}
!482 = !{ptr @usb_init._entry.244, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @usb_init._entry_ptr.246, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.247, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1558, i32 2}
!486 = !{ptr @usb_init.__UNIQUE_ID_ddebug377, !485, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!487 = !{ptr @.str.248, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1679, i32 3}
!489 = !{ptr @.str.249, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @get_results._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @get_results._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.250, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_usb.c", i32 1798, i32 3}
!494 = !{ptr @.str.251, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @zd_submit_waiting_urb._entry, !493, !"_entry", i1 false, i1 false}
!496 = !{ptr @zd_submit_waiting_urb._entry_ptr, !493, !"_entry_ptr", i1 false, i1 false}
!497 = !{i32 1, !"wchar_size", i32 2}
!498 = !{i32 1, !"min_enum_size", i32 4}
!499 = !{i32 8, !"branch-target-enforcement", i32 0}
!500 = !{i32 8, !"sign-return-address", i32 0}
!501 = !{i32 8, !"sign-return-address-all", i32 0}
!502 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!503 = !{i32 7, !"uwtable", i32 1}
!504 = !{i32 7, !"frame-pointer", i32 2}
!505 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!506 = !{i64 653754}
!507 = !{!"branch_weights", i32 2000, i32 1}
!508 = !{i64 2148740356, i64 2148740361, i64 2148740374, i64 2148740418, i64 2148740452, i64 2148740473}
!509 = !{!"auto-init"}
!510 = !{!"branch_weights", i32 1, i32 2000}
