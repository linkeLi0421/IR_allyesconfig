; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/p54usb.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/p54usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.134 = type { i32, i32, ptr, [20 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.p54u_priv = type { %struct.p54_common, ptr, ptr, ptr, i32, %struct.spinlock, %struct.sk_buff_head, %struct.usb_anchor, ptr, %struct.completion }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.132, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.p54_hdr = type { i16, i16, i32, i16, i8, i8, [0 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.net2280_reg_write = type <{ i16, i32, i32 }>
%struct.net2280_reg_read = type <{ i16, i32 }>

@__UNIQUE_ID_author355 = internal constant [51 x i8] c"p54usb.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [47 x i8] c"p54usb.description=Prism54 USB wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [53 x i8] c"p54usb.file=drivers/net/wireless/intersil/p54/p54usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [19 x i8] c"p54usb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [24 x i8] c"p54usb.alias=prism54usb\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [27 x i8] c"p54usb.firmware=isl3886usb\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [27 x i8] c"p54usb.firmware=isl3887usb\00", section ".modinfo", align 1
@__initcall__kmod_p54usb__369_1140_p54u_driver_init6 = internal global ptr @p54u_driver_init, section ".initcall6.init", align 4
@p54u_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @p54u_probe, ptr @p54u_disconnect, ptr null, ptr @p54u_suspend, ptr @p54u_resume, ptr @p54u_resume, ptr @p54u_pre_reset, ptr @p54u_post_reset, ptr @p54u_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 48 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_p54u_driver_exit = internal global ptr @p54u_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p54usb\00", [25 x i8] zeroinitializer }, align 32
@p54u_table = internal constant { [66 x %struct.usb_device_id], [400 x i8] } { [66 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1041, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1286, i16 2577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1653, i16 1328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1721, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 -4602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 28, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 17665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 17666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 21761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16896, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16912, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2474, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3064, i16 4103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4219, i16 22002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4682, i16 16419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4682, i16 16422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 528, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5545, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5680, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6189, i16 2411, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6421, i16 8756, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6421, i16 8757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14081, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14083, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14178, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20545, i16 8756, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20545, i16 8757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 4656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1394, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1394, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1705, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1721, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 -4589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2051, i16 17168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 17697, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 17713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -15103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -2813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16960, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2325, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2325, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2991, i16 280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3064, i16 4105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3294, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3470, i16 14178, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4682, i16 16421, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4704, i16 -4574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5139, i16 21504, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5173, i16 1063, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5736, i16 4176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14084, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 14085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 21779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32508, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [400 x i8] zeroinitializer }, align 32
@p54u_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 996, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(p54usb) ieee80211 alloc failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p54u_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/p54/p54usb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54u_probe._entry_ptr = internal global ptr @p54u_probe._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@p54u_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(p54usb) unable to lock device for reset (%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"p54u_device_reset\00", [46 x i8] zeroinitializer }, align 32
@p54u_device_reset._entry_ptr = internal global ptr @p54u_device_reset._entry, section ".printk_index", align 4
@p54u_device_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(p54usb) unable to reset device (%d)!\0A\00", [57 x i8] zeroinitializer }, align 32
@p54u_device_reset._entry_ptr.14 = internal global ptr @p54u_device_reset._entry.12, section ".printk_index", align 4
@p54u_firmware_upload_3887 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<\0D\00", [29 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(p54usb) firmware upload failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p54u_upload_firmware_3887\00", [38 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry_ptr = internal global ptr @p54u_upload_firmware_3887._entry, section ".printk_index", align 4
@p54u_upload_firmware_3887._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry_ptr.19 = internal global ptr @p54u_upload_firmware_3887._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(p54usb) firmware boot timed out!\0A\00", [61 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry_ptr.24 = internal global ptr @p54u_upload_firmware_3887._entry.22, section ".printk_index", align 4
@p54u_upload_firmware_3887._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry_ptr.26 = internal global ptr @p54u_upload_firmware_3887._entry.25, section ".printk_index", align 4
@p54u_upload_firmware_3887._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.3, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(p54usb) firmware boot failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_3887._entry_ptr.29 = internal global ptr @p54u_upload_firmware_3887._entry.27, section ".printk_index", align 4
@p54u_romboot_3887 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"~~~~\00", [27 x i8] zeroinitializer }, align 32
@p54u_firmware_reset_3887._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(p54usb) unable to jump to boot ROM (%d)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"p54u_firmware_reset_3887\00", [39 x i8] zeroinitializer }, align 32
@p54u_firmware_reset_3887._entry_ptr = internal global ptr @p54u_firmware_reset_3887._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@p54u_upload_firmware_net2280._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(p54usb) firmware block upload failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"p54u_upload_firmware_net2280\00", [35 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_net2280._entry_ptr = internal global ptr @p54u_upload_firmware_net2280._entry, section ".printk_index", align 4
@p54u_upload_firmware_net2280._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(p54usb) firmware DMA transfer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@p54u_upload_firmware_net2280._entry_ptr.36 = internal global ptr @p54u_upload_firmware_net2280._entry.34, section ".printk_index", align 4
@p54u_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 969, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Loading firmware file %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p54u_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@p54u_load_firmware._entry_ptr = internal global ptr @p54u_load_firmware._entry, section ".printk_index", align 4
@p54u_fwlist = internal constant { [3 x %struct.anon.134], [32 x i8] } { [3 x %struct.anon.134] [%struct.anon.134 { i32 1280129078, i32 1, ptr @.str.44, [20 x i8] c"ISL3886 + net2280\00\00\00" }, %struct.anon.134 { i32 1280129079, i32 2, ptr @.str.45, [20 x i8] c"ISL3887\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.134 zeroinitializer], [32 x i8] zeroinitializer }, align 32
@p54u_load_firmware._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.3, i32 977, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(p54usb) cannot load firmware %s (%d)!\0A\00", [56 x i8] zeroinitializer }, align 32
@p54u_load_firmware._entry_ptr.42 = internal global ptr @p54u_load_firmware._entry.40, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isl3886usb\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isl3887usb\00", [21 x i8] zeroinitializer }, align 32
@p54u_load_firmware_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware not found.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p54u_load_firmware_cb\00", [42 x i8] zeroinitializer }, align 32
@p54u_load_firmware_cb._entry_ptr = internal global ptr @p54u_load_firmware_cb._entry, section ".printk_index", align 4
@p54u_load_firmware_cb._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize device (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@p54u_load_firmware_cb._entry_ptr.50 = internal global ptr @p54u_load_firmware_cb._entry.48, section ".printk_index", align 4
@p54u_start_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"wrong firmware, please get a firmware for \22%s\22 and try again.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p54u_start_ops\00", [17 x i8] zeroinitializer }, align 32
@p54u_start_ops._entry_ptr = internal global ptr @p54u_start_ops._entry, section ".printk_index", align 4
@switch.table.p54u_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.p54u_load_firmware_cb = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 13, i64 14, i64 129, i64 130, i64 141, i64 142, i64 143]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 125, i64 126]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"p54u_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1124, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1140, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"p54u_table\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 43, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 996, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1984, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1367, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1368, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 459, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 470, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [26 x i8] c"p54u_firmware_upload_3887\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 496, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 560, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 573, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 579, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 582, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 588, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 595, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 603, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"p54u_romboot_3887\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 476, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 490, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 749, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 783, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 968, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"p54u_fwlist\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 125, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 976, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 87, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 129, i32 9 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 135, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 932, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 943, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [46 x i8] c"../drivers/net/wireless/intersil/p54/p54usb.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 881, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"switch.table.p54u_probe\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [35 x i8] c"switch.table.p54u_load_firmware_cb\00", align 1
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_license358, ptr @__exitcall_p54u_driver_exit, ptr @__initcall__kmod_p54usb__369_1140_p54u_driver_init6, ptr @p54u_device_reset._entry, ptr @p54u_device_reset._entry.12, ptr @p54u_device_reset._entry_ptr, ptr @p54u_device_reset._entry_ptr.14, ptr @p54u_driver_exit, ptr @p54u_firmware_reset_3887._entry, ptr @p54u_firmware_reset_3887._entry_ptr, ptr @p54u_load_firmware._entry, ptr @p54u_load_firmware._entry.40, ptr @p54u_load_firmware._entry_ptr, ptr @p54u_load_firmware._entry_ptr.42, ptr @p54u_load_firmware_cb._entry, ptr @p54u_load_firmware_cb._entry.48, ptr @p54u_load_firmware_cb._entry_ptr, ptr @p54u_load_firmware_cb._entry_ptr.50, ptr @p54u_probe._entry, ptr @p54u_probe._entry_ptr, ptr @p54u_start_ops._entry, ptr @p54u_start_ops._entry_ptr, ptr @p54u_upload_firmware_3887._entry, ptr @p54u_upload_firmware_3887._entry.18, ptr @p54u_upload_firmware_3887._entry.22, ptr @p54u_upload_firmware_3887._entry.25, ptr @p54u_upload_firmware_3887._entry.27, ptr @p54u_upload_firmware_3887._entry_ptr, ptr @p54u_upload_firmware_3887._entry_ptr.19, ptr @p54u_upload_firmware_3887._entry_ptr.24, ptr @p54u_upload_firmware_3887._entry_ptr.26, ptr @p54u_upload_firmware_3887._entry_ptr.29, ptr @p54u_upload_firmware_net2280._entry, ptr @p54u_upload_firmware_net2280._entry.34, ptr @p54u_upload_firmware_net2280._entry_ptr, ptr @p54u_upload_firmware_net2280._entry_ptr.36, ptr @p54u_driver, ptr @.str, ptr @p54u_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @skb_queue_head_init.__key, ptr @.str.6, ptr @init_usb_anchor.__key, ptr @.str.7, ptr @init_usb_anchor.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @p54u_firmware_upload_3887, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.28, ptr @p54u_romboot_3887, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @p54u_fwlist, ptr @.str.41, ptr @init_completion.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @switch.table.p54u_probe, ptr @switch.table.p54u_load_firmware_cb], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_table to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_device_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_firmware_upload_3887 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_3887._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_3887._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_3887._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_3887._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_3887._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_romboot_3887 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_firmware_reset_3887._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_net2280._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_upload_firmware_net2280._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_fwlist to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_load_firmware._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_load_firmware_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_load_firmware_cb._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54u_start_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.p54u_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.p54u_load_firmware_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @p54u_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p54u_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @p54u_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call1 = tail call ptr @p54_init_common(i32 noundef 3232) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %priv3 = getelementptr inbounds %struct.ieee80211_hw, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 8
  %hw_type = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %hw_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hw_type, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 1
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev4, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %udev5 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %udev5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %udev5, align 8
  %intf6 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %intf6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %intf, ptr %intf6, align 4
  %rx_queue = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %11 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i, align 4
  %submitted = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7
  %14 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7, i32 1
  %15 = call ptr @memset(ptr %14, i32 0, i32 104)
  %16 = ptrtoint ptr %submitted to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %submitted, ptr %submitted, align 4
  %prev.i.i69 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %submitted, ptr %prev.i.i69, align 4
  tail call void @__init_waitqueue_head(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i70 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i70, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_usb_anchor.__key.8, i16 noundef signext 3) #10
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not77 = icmp eq i8 %21, 0
  br i1 %tobool7.not77, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %open81 = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %open81 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @p54u_open, ptr %open81, align 4
  %stop82 = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %stop82 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @p54u_stop, ptr %stop82, align 8
  br label %if.then13

while.body.lr.ph:                                 ; preds = %if.end
  %conv = zext i8 %21 to i32
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %dec79.in = phi i32 [ %conv, %while.body.lr.ph ], [ %dec79, %sw.epilog.while.body_crit_edge ]
  %recognized_pipes.078 = phi i32 [ 0, %while.body.lr.ph ], [ %recognized_pipes.1, %sw.epilog.while.body_crit_edge ]
  %dec79 = add nsw i32 %dec79.in, -1
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %dec79, i32 0, i32 2
  %26 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %while.body.sw.epilog_crit_edge [
    i8 1, label %while.body.sw.bb_crit_edge
    i8 2, label %while.body.sw.bb_crit_edge87
    i8 13, label %while.body.sw.bb_crit_edge88
    i8 14, label %while.body.sw.bb_crit_edge89
    i8 -127, label %while.body.sw.bb_crit_edge90
    i8 -126, label %while.body.sw.bb_crit_edge91
    i8 -115, label %while.body.sw.bb_crit_edge92
    i8 -114, label %while.body.sw.bb_crit_edge93
    i8 -113, label %while.body.sw.bb_crit_edge94
  ]

while.body.sw.bb_crit_edge94:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge93:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge92:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge91:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge90:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge89:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge88:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge87:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge87, %while.body.sw.bb_crit_edge88, %while.body.sw.bb_crit_edge89, %while.body.sw.bb_crit_edge90, %while.body.sw.bb_crit_edge91, %while.body.sw.bb_crit_edge92, %while.body.sw.bb_crit_edge93, %while.body.sw.bb_crit_edge94
  %inc = add i32 %recognized_pipes.078, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body.sw.epilog_crit_edge
  %recognized_pipes.1 = phi i32 [ %recognized_pipes.078, %while.body.sw.epilog_crit_edge ], [ %inc, %sw.bb ]
  %tobool7.not = icmp eq i32 %dec79, 0
  br i1 %tobool7.not, label %while.end, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %sw.epilog
  %open = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @p54u_open, ptr %open, align 4
  %stop = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @p54u_stop, ptr %stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %recognized_pipes.1)
  %cmp = icmp ult i32 %recognized_pipes.1, 9
  br i1 %cmp, label %while.end.if.then13_crit_edge, label %while.end.if.end26_crit_edge

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

while.end.if.then13_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %while.end.if.then13_crit_edge, %while.end.thread
  %reset_resume = getelementptr i8, ptr %1, i32 1144
  %31 = ptrtoint ptr %reset_resume to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %reset_resume, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %reset_resume, align 8
  %32 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv3, align 8
  %intf.i = getelementptr inbounds %struct.p54u_priv, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf.i, align 4
  %condition.i = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %condition.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %condition.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 1
  %udev91.i = getelementptr inbounds %struct.p54u_priv, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %udev91.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev91.i, align 8
  br i1 %cmp.not.i, label %if.end8.thread.i, label %if.then.i

if.end8.thread.i:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %call102.i = tail call i32 @usb_reset_device(ptr noundef %39) #10
  br label %if.end15.i

if.then.i:                                        ; preds = %if.then13
  %call.i = tail call i32 @usb_lock_device_for_reset(ptr noundef %39, ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %40 = ptrtoint ptr %udev91.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev91.i, align 8
  br i1 %cmp3.i, label %do.end.i, label %if.then12.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.10, i32 noundef %call.i) #13
  br label %if.end26

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @usb_reset_device(ptr noundef %41) #10
  %42 = ptrtoint ptr %udev91.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udev91.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end8.thread.i
  %call104.i = phi i32 [ %call102.i, %if.end8.thread.i ], [ %call10.i, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool16.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end26_crit_edge, label %do.end20.i

if.end15.i.if.end26_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %udev91.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev91.i, align 8
  %dev22.i = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.13, i32 noundef %call104.i) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end20.i, %if.end15.i.if.end26_crit_edge, %do.end.i, %while.end.if.end26_crit_edge
  %.sink = phi i32 [ 2, %do.end.i ], [ 2, %if.end15.i.if.end26_crit_edge ], [ 2, %do.end20.i ], [ 1, %while.end.if.end26_crit_edge ]
  %.sink85 = phi i32 [ 8, %do.end.i ], [ 8, %if.end15.i.if.end26_crit_edge ], [ 8, %do.end20.i ], [ 16, %while.end.if.end26_crit_edge ]
  %p54u_tx_net2280.sink = phi ptr [ @p54u_tx_lm87, %do.end.i ], [ @p54u_tx_lm87, %if.end15.i.if.end26_crit_edge ], [ @p54u_tx_lm87, %do.end20.i ], [ @p54u_tx_net2280, %while.end.if.end26_crit_edge ]
  %p54u_upload_firmware_net2280.sink = phi ptr [ @p54u_upload_firmware_3887, %do.end.i ], [ @p54u_upload_firmware_3887, %if.end15.i.if.end26_crit_edge ], [ @p54u_upload_firmware_3887, %do.end20.i ], [ @p54u_upload_firmware_net2280, %while.end.if.end26_crit_edge ]
  %46 = ptrtoint ptr %hw_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %hw_type, align 4
  %extra_tx_headroom19 = getelementptr inbounds %struct.ieee80211_hw, ptr %call1, i32 0, i32 5
  %47 = ptrtoint ptr %extra_tx_headroom19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %extra_tx_headroom19, align 4
  %add20 = add i32 %48, %.sink85
  store i32 %add20, ptr %extra_tx_headroom19, align 4
  %tx_hdr_len22 = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 14
  %49 = ptrtoint ptr %tx_hdr_len22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink85, ptr %tx_hdr_len22, align 8
  %tx24 = getelementptr inbounds %struct.p54_common, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %tx24 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %p54u_tx_net2280.sink, ptr %tx24, align 8
  %upload_fw25 = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %upload_fw25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %p54u_upload_firmware_net2280.sink, ptr %upload_fw25, align 8
  %52 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i, align 8
  %54 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv3, align 8
  %fw_wait_load.i = getelementptr inbounds %struct.p54u_priv, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %fw_wait_load.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %fw_wait_load.i, align 4
  %wait.i.i = getelementptr inbounds %struct.p54u_priv, ptr %55, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #10
  %hw_type.i.i = getelementptr inbounds %struct.p54u_priv, ptr %55, i32 0, i32 4
  %57 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %switch.lookup, label %if.end26.if.then29_crit_edge

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

switch.lookup:                                    ; preds = %if.end26
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.p54u_probe, i32 0, i32 %58
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load i32, ptr %switch.gep, align 4
  %udev7.i = getelementptr inbounds %struct.p54u_priv, ptr %55, i32 0, i32 1
  %61 = ptrtoint ptr %udev7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udev7.i, align 8
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %fw.i = getelementptr [3 x %struct.anon.134], ptr @p54u_fwlist, i32 0, i32 %switch.load, i32 2
  %63 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.37, ptr noundef %64) #13
  %call9.i = tail call ptr @usb_get_intf(ptr noundef %intf) #10
  %call12.i = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %64, ptr noundef %53, i32 noundef 3264, ptr noundef %55, ptr noundef nonnull @p54u_load_firmware_cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %do.end16.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end16.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %udev7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %udev7.i, align 8
  %dev18.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.41, ptr noundef %64, i32 noundef %call12.i) #13
  tail call void @usb_put_intf(ptr noundef %intf) #10
  br label %if.then29

if.then29:                                        ; preds = %do.end16.i, %if.end26.if.then29_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %if.end26.if.then29_crit_edge ], [ %call12.i, %do.end16.i ]
  tail call void @p54_free_common(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval.0.i.ph, %if.then29 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %fw_wait_load = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 9
  tail call void @wait_for_completion(ptr noundef %fw_wait_load) #10
  tail call void @p54_unregister_common(ptr noundef nonnull %1) #10
  %fw = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %5) #10
  tail call void @p54_free_common(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.p54u_pre_reset.exit_crit_edge, label %if.end.i

entry.p54u_pre_reset.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_pre_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv1.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i.i.i, align 8
  %submitted.i.i.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i.i.i) #10
  br label %p54u_pre_reset.exit

p54u_pre_reset.exit:                              ; preds = %if.end.i, %entry.p54u_pre_reset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %entry.p54u_pre_reset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %upload_fw = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %upload_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upload_fw, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.rhs, !prof !132

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  %fw = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %tobool3 = icmp eq ptr %7, null
  br i1 %tobool3, label %land.rhs.cleanup_crit_edge, label %if.end8, !prof !132

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 %5(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv1.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i.i, align 8
  %submitted.i.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %upload_fw.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %upload_fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upload_fw.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %land.rhs.i, !prof !132

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.i:                                       ; preds = %if.end.i
  %fw.i = getelementptr inbounds %struct.p54u_priv, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %tobool3.i = icmp eq ptr %7, null
  br i1 %tobool3.i, label %land.rhs.i.if.end_crit_edge, label %p54u_resume.exit, !prof !132

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

p54u_resume.exit:                                 ; preds = %land.rhs.i
  %call10.i = tail call i32 %5(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not = icmp eq i32 %call10.i, 0
  br i1 %tobool.not, label %p54u_resume.exit.if.end_crit_edge, label %p54u_resume.exit.cleanup_crit_edge

p54u_resume.exit.cleanup_crit_edge:               ; preds = %p54u_resume.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

p54u_resume.exit.if.end_crit_edge:                ; preds = %p54u_resume.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %p54u_resume.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1.i, align 8
  %mode = getelementptr inbounds %struct.p54_common, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_restart_hw(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %p54u_resume.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10.i, %p54u_resume.exit.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p54_init_common(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %rx_queue.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 6
  %qlen.i.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp55.i = icmp ult i32 %3, 32
  br i1 %cmp55.i, label %while.body.lr.ph.i, label %entry.p54u_init_urbs.exit_crit_edge

entry.p54u_init_urbs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_init_urbs.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rx_mtu.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 11
  %udev.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 1
  %submitted.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = ptrtoint ptr %rx_mtu.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_mtu.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.body.i.err.i_crit_edge, label %if.end.i

while.body.i.err.i_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end.i:                                         ; preds = %while.body.i
  %call4.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.err.i_crit_edge, label %if.end7.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end7.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or10.i = or i32 %shl.i.i, -1073708928
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %12 = ptrtoint ptr %rx_mtu.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_mtu.i, align 4
  %conv14.i = zext i16 %13 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or10.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add15.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @p54u_rx_cb, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call4.i, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %context4.i.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call4.i, ptr %cb.i, align 4
  %dev16.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %dev16.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %dev16.i, align 4
  tail call void @skb_queue_tail(ptr noundef %rx_queue.i, ptr noundef nonnull %call.i.i) #10
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4.i, ptr noundef %submitted.i) #10
  %call18.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4.i, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_unlink(ptr noundef nonnull %call.i.i, ptr noundef %rx_queue.i) #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4.i) #10
  br label %err.i

if.end22.i:                                       ; preds = %if.end7.i
  tail call void @usb_free_urb(ptr noundef nonnull %call4.i) #10
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i, align 4
  %cmp.i = icmp ult i32 %23, 32
  br i1 %cmp.i, label %if.end22.i.while.body.i_crit_edge, label %if.end22.i.p54u_init_urbs.exit_crit_edge

if.end22.i.p54u_init_urbs.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_init_urbs.exit

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

err.i:                                            ; preds = %if.then20.i, %if.end.i.err.i_crit_edge, %while.body.i.err.i_crit_edge
  %entry2.1.i = phi ptr [ %call4.i, %if.then20.i ], [ null, %while.body.i.err.i_crit_edge ], [ null, %if.end.i.err.i_crit_edge ]
  %ret.0.i = phi i32 [ %call18.i, %if.then20.i ], [ -12, %while.body.i.err.i_crit_edge ], [ -12, %if.end.i.err.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef %entry2.1.i) #10
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #10
  %24 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1.i, align 8
  %submitted.i.i = getelementptr inbounds %struct.p54u_priv, ptr %25, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i.i) #10
  br label %p54u_init_urbs.exit

p54u_init_urbs.exit:                              ; preds = %err.i, %if.end22.i.p54u_init_urbs.exit_crit_edge, %entry.p54u_init_urbs.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %err.i ], [ 0, %entry.p54u_init_urbs.exit_crit_edge ], [ 0, %if.end22.i.p54u_init_urbs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %submitted.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_tx_lm87(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %tobool.not7.i = icmp ult i32 %5, 4
  br i1 %tobool.not7.i, label %if.end.p54u_lm87_chksum.exit_crit_edge, label %while.body.preheader.i

if.end.p54u_lm87_chksum.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_lm87_chksum.exit

while.body.preheader.i:                           ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %shr.i = lshr i32 %5, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %chk.010.i = phi i32 [ %xor2.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %length.addr.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %while.body.preheader.i ]
  %data.addr.08.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %7, %while.body.preheader.i ]
  %dec.i = add nsw i32 %length.addr.09.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.08.i, i32 1
  %8 = ptrtoint ptr %data.addr.08.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.addr.08.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %xor.i = xor i32 %10, %chk.010.i
  %shr1.i = lshr i32 %xor.i, 5
  %shl.i = shl i32 %xor.i, 3
  %xor2.i = xor i32 %shr1.i, %shl.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.p54u_lm87_chksum.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.p54u_lm87_chksum.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_lm87_chksum.exit

p54u_lm87_chksum.exit:                            ; preds = %while.body.i.p54u_lm87_chksum.exit_crit_edge, %if.end.p54u_lm87_chksum.exit_crit_edge
  %chk.0.lcssa.i = phi i32 [ 0, %if.end.p54u_lm87_chksum.exit_crit_edge ], [ %xor2.i, %while.body.i.p54u_lm87_chksum.exit_crit_edge ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %chk.0.lcssa.i) #10
  %chksum = getelementptr i8, ptr %3, i32 -4
  %12 = ptrtoint ptr %chksum to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %chksum, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %req_id = getelementptr inbounds %struct.p54_hdr, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %req_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %req_id, align 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %add.ptr, align 1
  %udev = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i37 = shl i32 %21, 8
  %or = or i32 %shl.i37, -1073709056
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add = add i32 %23, 8
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %26)
  %cmp = icmp eq i16 %26, 384
  %cond = select i1 %cmp, ptr @p54u_tx_cb, ptr @p54u_tx_dummy_cb
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cond, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %33 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %transfer_flags, align 4
  %or10 = or i32 %34, 64
  store i32 %or10, ptr %transfer_flags, align 4
  %submitted = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 7
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %submitted) #10
  %call11 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %p54u_lm87_chksum.exit.if.end14_crit_edge, label %if.then13

p54u_lm87_chksum.exit.if.end14_crit_edge:         ; preds = %p54u_lm87_chksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %p54u_lm87_chksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #10
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %skb) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %p54u_lm87_chksum.exit.if.end14_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_upload_firmware_3887(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %alen.i224 = alloca i32, align 4
  %alen.i218 = alloca i32, align 4
  %alen.i = alloca i32, align 4
  %alen.i.i = alloca i32, align 4
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #10
  %2 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alen, align 4, !annotation !133
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @p54u_romboot_3887, i32 noundef 4, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i) #10
  %3 = ptrtoint ptr %alen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %alen.i.i, align 4, !annotation !133
  %udev.i.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %7, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %or.i.i, ptr noundef nonnull %call.i, i32 noundef 4, ptr noundef nonnull %alen.i.i, i32 noundef 2000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i.i, align 8
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.30, i32 noundef %call2.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 2048) #14
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fw = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = call ptr @memcpy(ptr %call7.i, ptr @p54u_firmware_upload_3887, i32 3)
  %add.ptr = getelementptr i8, ptr %call7.i, i32 2
  %16 = load ptr, ptr %fw, align 4
  %data11 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data11, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 2016550944, ptr %add.ptr, align 2
  %fw_load_addr = getelementptr i8, ptr %call7.i, i32 6
  %22 = ptrtoint ptr %fw_load_addr to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 512, ptr %fw_load_addr, align 2
  %23 = load ptr, ptr %fw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %fw_length = getelementptr i8, ptr %call7.i, i32 10
  %27 = ptrtoint ptr %fw_length to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %fw_length, align 2
  %call19 = call i32 @crc32_le(i32 noundef -1, ptr noundef %fw_load_addr, i32 noundef 8) #15
  %neg = xor i32 %call19, -1
  %28 = call i32 @llvm.bswap.i32(i32 %neg)
  %crc = getelementptr i8, ptr %call7.i, i32 14
  %29 = ptrtoint ptr %crc to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not263 = icmp eq i32 %20, 0
  br i1 %tobool22.not263, label %if.end5.while.end48_crit_edge, label %while.cond23.preheader.lr.ph

if.end5.while.end48_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end48

while.cond23.preheader.lr.ph:                     ; preds = %if.end5
  %add.ptr21 = getelementptr i8, ptr %call7.i, i32 18
  %30 = call i32 @llvm.umin.i32(i32 %14, i32 2048)
  %sub20 = add nsw i32 %30, -18
  br label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %if.end40.while.cond23.preheader_crit_edge, %while.cond23.preheader.lr.ph
  %block_size.0269 = phi i32 [ %30, %while.cond23.preheader.lr.ph ], [ %44, %if.end40.while.cond23.preheader_crit_edge ]
  %remains.0268 = phi i32 [ %20, %while.cond23.preheader.lr.ph ], [ %remains.1.lcssa, %if.end40.while.cond23.preheader_crit_edge ]
  %left.0267 = phi i32 [ %sub20, %while.cond23.preheader.lr.ph ], [ %44, %if.end40.while.cond23.preheader_crit_edge ]
  %data.0266 = phi ptr [ %18, %while.cond23.preheader.lr.ph ], [ %data.1.ph.lcssa, %if.end40.while.cond23.preheader_crit_edge ]
  %tmp.0265 = phi ptr [ %add.ptr21, %while.cond23.preheader.lr.ph ], [ %call7.i, %if.end40.while.cond23.preheader_crit_edge ]
  %carry.0264 = phi i8 [ 0, %while.cond23.preheader.lr.ph ], [ %carry.1.lcssa, %if.end40.while.cond23.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0267)
  %tobool24.not243254 = icmp eq i32 %left.0267, 0
  br i1 %tobool24.not243254, label %while.cond23.preheader.while.end_crit_edge, label %while.cond23.preheader.while.body25.lr.ph_crit_edge

while.cond23.preheader.while.body25.lr.ph_crit_edge: ; preds = %while.cond23.preheader
  br label %while.body25.lr.ph

while.cond23.preheader.while.end_crit_edge:       ; preds = %while.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body25.lr.ph:                               ; preds = %sw.epilog.while.body25.lr.ph_crit_edge, %while.cond23.preheader.while.body25.lr.ph_crit_edge
  %dec242259.in = phi i32 [ %dec247, %sw.epilog.while.body25.lr.ph_crit_edge ], [ %left.0267, %while.cond23.preheader.while.body25.lr.ph_crit_edge ]
  %remains.1.ph258 = phi i32 [ %remains.2, %sw.epilog.while.body25.lr.ph_crit_edge ], [ %remains.0268, %while.cond23.preheader.while.body25.lr.ph_crit_edge ]
  %data.1.ph257 = phi ptr [ %incdec.ptr35, %sw.epilog.while.body25.lr.ph_crit_edge ], [ %data.0266, %while.cond23.preheader.while.body25.lr.ph_crit_edge ]
  %tmp.1.ph256 = phi ptr [ %tmp.2, %sw.epilog.while.body25.lr.ph_crit_edge ], [ %tmp.0265, %while.cond23.preheader.while.body25.lr.ph_crit_edge ]
  %carry.1.ph255 = phi i8 [ %carry.2, %sw.epilog.while.body25.lr.ph_crit_edge ], [ %carry.0264, %while.cond23.preheader.while.body25.lr.ph_crit_edge ]
  br label %while.body25

while.body25:                                     ; preds = %if.then27.while.body25_crit_edge, %while.body25.lr.ph
  %dec247.in = phi i32 [ %dec242259.in, %while.body25.lr.ph ], [ %dec247, %if.then27.while.body25_crit_edge ]
  %remains.1246 = phi i32 [ %remains.1.ph258, %while.body25.lr.ph ], [ %dec28, %if.then27.while.body25_crit_edge ]
  %tmp.1245 = phi ptr [ %tmp.1.ph256, %while.body25.lr.ph ], [ %incdec.ptr, %if.then27.while.body25_crit_edge ]
  %carry.1244 = phi i8 [ %carry.1.ph255, %while.body25.lr.ph ], [ 0, %if.then27.while.body25_crit_edge ]
  %dec247 = add i32 %dec247.in, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %carry.1244)
  %tobool26.not = icmp eq i8 %carry.1244, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %while.body25
  %incdec.ptr = getelementptr i8, ptr %tmp.1245, i32 1
  %31 = ptrtoint ptr %tmp.1245 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %carry.1244, ptr %tmp.1245, align 1
  %dec28 = add i32 %remains.1246, -1
  %tobool24.not = icmp eq i32 %dec247, 0
  br i1 %tobool24.not, label %while.end.loopexit, label %if.then27.while.body25_crit_edge

if.then27.while.body25_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body25

if.end29:                                         ; preds = %while.body25
  %32 = ptrtoint ptr %data.1.ph257 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data.1.ph257, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %33, label %sw.default [
    i8 126, label %sw.bb
    i8 125, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %tmp.1245 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 125, ptr %tmp.1245, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tmp.1245 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 125, ptr %tmp.1245, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %tmp.1245 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %33, ptr %tmp.1245, align 1
  %dec34 = add i32 %remains.1246, -1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb
  %carry.2 = phi i8 [ 0, %sw.default ], [ 93, %sw.bb31 ], [ 94, %sw.bb ]
  %remains.2 = phi i32 [ %dec34, %sw.default ], [ %remains.1246, %sw.bb31 ], [ %remains.1246, %sw.bb ]
  %tmp.2 = getelementptr i8, ptr %tmp.1245, i32 1
  %incdec.ptr35 = getelementptr i8, ptr %data.1.ph257, i32 1
  %tobool24.not243 = icmp eq i32 %dec247, 0
  br i1 %tobool24.not243, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body25.lr.ph_crit_edge

sw.epilog.while.body25.lr.ph_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body25.lr.ph

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end.loopexit:                               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %38 = sub i32 %remains.1.ph258, %dec242259.in
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %sw.epilog.while.end_crit_edge, %while.cond23.preheader.while.end_crit_edge
  %data.1.ph.lcssa = phi ptr [ %data.0266, %while.cond23.preheader.while.end_crit_edge ], [ %data.1.ph257, %while.end.loopexit ], [ %incdec.ptr35, %sw.epilog.while.end_crit_edge ]
  %carry.1.lcssa = phi i8 [ %carry.0264, %while.cond23.preheader.while.end_crit_edge ], [ 0, %while.end.loopexit ], [ %carry.2, %sw.epilog.while.end_crit_edge ]
  %remains.1.lcssa = phi i32 [ %remains.0268, %while.cond23.preheader.while.end_crit_edge ], [ %38, %while.end.loopexit ], [ %remains.2, %sw.epilog.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i) #10
  %39 = ptrtoint ptr %alen.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %alen.i, align 4, !annotation !133
  %40 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev.i.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i = shl i32 %43, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %41, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef %block_size.0269, ptr noundef nonnull %alen.i, i32 noundef 2000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool37.not = icmp eq i32 %call2.i, 0
  br i1 %tobool37.not, label %if.end40, label %while.end.err_upload_failed.sink.split_crit_edge

while.end.err_upload_failed.sink.split_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed.sink.split

if.end40:                                         ; preds = %while.end
  %44 = call i32 @llvm.umin.i32(i32 %remains.1.lcssa, i32 2048)
  %tobool22.not = icmp eq i32 %remains.1.lcssa, 0
  br i1 %tobool22.not, label %if.end40.while.end48_crit_edge, label %if.end40.while.cond23.preheader_crit_edge

if.end40.while.cond23.preheader_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond23.preheader

if.end40.while.end48_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end48

while.end48:                                      ; preds = %if.end40.while.end48_crit_edge, %if.end5.while.end48_crit_edge
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw, align 4
  %data50 = getelementptr inbounds %struct.firmware, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data50, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %call53 = call i32 @crc32_le(i32 noundef -1, ptr noundef %48, i32 noundef %50) #15
  %neg54 = xor i32 %call53, -1
  %51 = call i32 @llvm.bswap.i32(i32 %neg54)
  %52 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %call7.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i218) #10
  %53 = ptrtoint ptr %alen.i218 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %alen.i218, align 4, !annotation !133
  %54 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i220 = shl i32 %57, 8
  %or.i221 = or i32 %shl.i.i220, -1073709056
  %call2.i222 = call i32 @usb_bulk_msg(ptr noundef %55, i32 noundef %or.i221, ptr noundef nonnull %call7.i, i32 noundef 4, ptr noundef nonnull %alen.i218, i32 noundef 2000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i218) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i222)
  %tobool56.not = icmp eq i32 %call2.i222, 0
  br i1 %tobool56.not, label %if.end63, label %while.end48.err_upload_failed.sink.split_crit_edge

while.end48.err_upload_failed.sink.split_crit_edge: ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed.sink.split

if.end63:                                         ; preds = %while.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %58, 100
  br label %while.cond65

while.cond65:                                     ; preds = %if.end85.while.cond65_crit_edge, %if.end63
  %59 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i = shl i32 %62, 8
  %or69 = or i32 %shl.i, -1073708928
  %call70 = call i32 @usb_bulk_msg(ptr noundef %60, i32 noundef %or69, ptr noundef nonnull %call7.i, i32 noundef 128, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %while.body72, label %while.cond65.err_upload_failed.sink.split_crit_edge

while.cond65.err_upload_failed.sink.split_crit_edge: ; preds = %while.cond65
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed.sink.split

while.body72:                                     ; preds = %while.cond65
  %63 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %alen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp73 = icmp sgt i32 %64, 2
  br i1 %cmp73, label %land.lhs.true, label %while.body72.if.end85_crit_edge

while.body72.if.end85_crit_edge:                  ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %while.body72
  %bcmp217 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %call7.i, ptr noundef nonnull dereferenceable(2) @.str.20, i32 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp217)
  %tobool76.not = icmp eq i32 %bcmp217, 0
  br i1 %tobool76.not, label %if.end104, label %if.end78

if.end78:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp79 = icmp ugt i32 %64, 5
  br i1 %cmp79, label %land.lhs.true81, label %if.end78.if.end85_crit_edge

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %call7.i, ptr noundef nonnull dereferenceable(5) @.str.21, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool83.not = icmp eq i32 %bcmp, 0
  br i1 %tobool83.not, label %land.lhs.true81.err_upload_failed.sink.split_crit_edge, label %land.lhs.true81.if.end85_crit_edge

land.lhs.true81.if.end85_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true81.err_upload_failed.sink.split_crit_edge: ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed.sink.split

if.end85:                                         ; preds = %land.lhs.true81.if.end85_crit_edge, %if.end78.if.end85_crit_edge, %while.body72.if.end85_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub86 = sub i32 %add, %65
  %cmp87 = icmp slt i32 %sub86, 0
  br i1 %cmp87, label %do.end92, label %if.end85.while.cond65_crit_edge

if.end85.while.cond65_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond65

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %udev.i.i, align 8
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.23) #13
  br label %err_upload_failed.sink.split

if.end104:                                        ; preds = %land.lhs.true
  %68 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 103, ptr %call7.i, align 8
  %arrayidx105 = getelementptr i8, ptr %call7.i, i32 1
  %69 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 13, ptr %arrayidx105, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i224) #10
  %70 = ptrtoint ptr %alen.i224 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %alen.i224, align 4, !annotation !133
  %71 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev.i.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i226 = shl i32 %74, 8
  %or.i227 = or i32 %shl.i.i226, -1073709056
  %call2.i228 = call i32 @usb_bulk_msg(ptr noundef %72, i32 noundef %or.i227, ptr noundef nonnull %call7.i, i32 noundef 2, ptr noundef nonnull %alen.i224, i32 noundef 2000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i224) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i228)
  %tobool107.not = icmp eq i32 %call2.i228, 0
  br i1 %tobool107.not, label %if.end114, label %if.end104.err_upload_failed.sink.split_crit_edge

if.end104.err_upload_failed.sink.split_crit_edge: ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed.sink.split

if.end114:                                        ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add116 = add i32 %75, 100
  br label %while.cond117

while.cond117:                                    ; preds = %if.end135.while.cond117_crit_edge, %if.end114
  %76 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev.i.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i229 = shl i32 %79, 8
  %or122 = or i32 %shl.i229, -1073708928
  %call123 = call i32 @usb_bulk_msg(ptr noundef %77, i32 noundef %or122, ptr noundef nonnull %call7.i, i32 noundef 128, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %while.body126, label %while.cond117.err_upload_failed_crit_edge

while.cond117.err_upload_failed_crit_edge:        ; preds = %while.cond117
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed

while.body126:                                    ; preds = %while.cond117
  %80 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %alen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp127 = icmp sgt i32 %81, 0
  br i1 %cmp127, label %land.lhs.true129, label %while.body126.if.end135_crit_edge

while.body126.if.end135_crit_edge:                ; preds = %while.body126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true129:                                 ; preds = %while.body126
  %82 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %83)
  %cmp132 = icmp eq i8 %83, 103
  br i1 %cmp132, label %land.lhs.true129.err_upload_failed_crit_edge, label %land.lhs.true129.if.end135_crit_edge

land.lhs.true129.if.end135_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

land.lhs.true129.err_upload_failed_crit_edge:     ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed

if.end135:                                        ; preds = %land.lhs.true129.if.end135_crit_edge, %while.body126.if.end135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub136 = sub i32 %add116, %84
  %cmp137 = icmp slt i32 %sub136, 0
  br i1 %cmp137, label %if.end135.err_upload_failed_crit_edge, label %if.end135.while.cond117_crit_edge

if.end135.while.cond117_crit_edge:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond117

if.end135.err_upload_failed_crit_edge:            ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_upload_failed

err_upload_failed.sink.split:                     ; preds = %if.end104.err_upload_failed.sink.split_crit_edge, %do.end92, %land.lhs.true81.err_upload_failed.sink.split_crit_edge, %while.cond65.err_upload_failed.sink.split_crit_edge, %while.end48.err_upload_failed.sink.split_crit_edge, %while.end.err_upload_failed.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.16, %while.end48.err_upload_failed.sink.split_crit_edge ], [ @.str.16, %do.end92 ], [ @.str.28, %if.end104.err_upload_failed.sink.split_crit_edge ], [ @.str.16, %while.cond65.err_upload_failed.sink.split_crit_edge ], [ @.str.16, %land.lhs.true81.err_upload_failed.sink.split_crit_edge ], [ @.str.16, %while.end.err_upload_failed.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %call2.i222, %while.end48.err_upload_failed.sink.split_crit_edge ], [ -110, %do.end92 ], [ %call2.i228, %if.end104.err_upload_failed.sink.split_crit_edge ], [ -22, %land.lhs.true81.err_upload_failed.sink.split_crit_edge ], [ %call70, %while.cond65.err_upload_failed.sink.split_crit_edge ], [ %call2.i, %while.end.err_upload_failed.sink.split_crit_edge ]
  %85 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udev.i.i, align 8
  %dev113 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull %.str.28.sink) #13
  br label %err_upload_failed

err_upload_failed:                                ; preds = %err_upload_failed.sink.split, %if.end135.err_upload_failed_crit_edge, %land.lhs.true129.err_upload_failed_crit_edge, %while.cond117.err_upload_failed_crit_edge
  %err.1 = phi i32 [ %err.1.ph, %err_upload_failed.sink.split ], [ -110, %if.end135.err_upload_failed_crit_edge ], [ %call123, %while.cond117.err_upload_failed_crit_edge ], [ 0, %land.lhs.true129.err_upload_failed_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_upload_failed, %if.end.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_upload_failed ], [ -12, %if.end.cleanup_crit_edge ], [ %call2.i.i, %do.end.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_tx_net2280(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3848, ptr %call7.i, align 8
  %addr = getelementptr inbounds %struct.net2280_reg_write, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 64, ptr %addr, align 2
  %val = getelementptr inbounds %struct.net2280_reg_write, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1073741824, ptr %val, align 2
  %8 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %conv = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %len10 = getelementptr i8, ptr %3, i32 -12
  %12 = ptrtoint ptr %len10 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len10, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %req_id = getelementptr inbounds %struct.p54_hdr, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %req_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %req_id, align 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %add.ptr, align 1
  %udev = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i = shl i32 %21, 8
  %or = or i32 %shl.i, -1073283072
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @p54u_tx_dummy_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %28 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_flags, align 4
  %or14 = or i32 %29, 320
  store i32 %or14, ptr %transfer_flags, align 4
  %30 = load ptr, ptr %udev, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i72 = shl i32 %32, 8
  %or18 = or i32 %shl.i72, -1073709056
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %add = add i32 %34, 16
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %37)
  %cmp = icmp eq i16 %37, 384
  %cond = select i1 %cmp, ptr @p54u_tx_cb, ptr @p54u_tx_dummy_cb
  %dev1.i74 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %dev1.i74, align 4
  %pipe2.i75 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or18, ptr %pipe2.i75, align 4
  %transfer_buffer3.i76 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i76 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %transfer_buffer3.i76, align 4
  %transfer_buffer_length.i77 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i77 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %transfer_buffer_length.i77, align 4
  %complete.i78 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cond, ptr %complete.i78, align 4
  %context4.i79 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i79 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %skb, ptr %context4.i79, align 4
  %transfer_flags23 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 13
  %44 = ptrtoint ptr %transfer_flags23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %transfer_flags23, align 4
  %or24 = or i32 %45, 64
  store i32 %or24, ptr %transfer_flags23, align 4
  %submitted = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 7
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %submitted) #10
  %call25 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end9.out.sink.split_crit_edge

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end28:                                         ; preds = %if.end9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call6, ptr noundef %submitted) #10
  %call30 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call6, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end28.out_crit_edge, label %if.end28.out.sink.split_crit_edge

if.end28.out.sink.split_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %if.end28.out.sink.split_crit_edge, %if.end9.out.sink.split_crit_edge
  %call6.sink = phi ptr [ %call2, %if.end9.out.sink.split_crit_edge ], [ %call6, %if.end28.out.sink.split_crit_edge ]
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call6.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %if.end28.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %int_urb.0 = phi ptr [ %call2, %if.end28.out_crit_edge ], [ %call2, %if.end5.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %call2, %out.sink.split ]
  %data_urb.0 = phi ptr [ %call6, %if.end28.out_crit_edge ], [ null, %if.end5.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %call6, %out.sink.split ]
  %reg.0 = phi ptr [ null, %if.end28.out_crit_edge ], [ %call7.i, %if.end5.out_crit_edge ], [ %call7.i, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %out.sink.split ]
  %tobool34.not = phi i1 [ true, %if.end28.out_crit_edge ], [ false, %if.end5.out_crit_edge ], [ false, %if.end.out_crit_edge ], [ false, %entry.out_crit_edge ], [ false, %out.sink.split ]
  tail call void @usb_free_urb(ptr noundef %int_urb.0) #10
  tail call void @usb_free_urb(ptr noundef %data_urb.0) #10
  br i1 %tobool34.not, label %out.if.end36_crit_edge, label %if.then35

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %reg.0) #10
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %skb) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %out.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54u_upload_firmware_net2280(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %alen.i671 = alloca i32, align 4
  %alen.i662 = alloca i32, align 4
  %alen.i660 = alloca i32, align 4
  %alen.i = alloca i32, align 4
  %alen = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #10
  %2 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alen, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup458_crit_edge, label %do.body

entry.cleanup458_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup458

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i) #10
  %5 = ptrtoint ptr %alen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %alen.i, align 4, !annotation !133
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 7936, ptr %call7.i, align 8
  %addr1.i = getelementptr inbounds %struct.net2280_reg_read, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1342177280, ptr %addr1.i, align 2
  %udev.i = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -1073315840
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %9, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 6, ptr noundef nonnull %alen.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.body.p54u_read.exit.thread_crit_edge

do.body.p54u_read.exit.thread_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_read.exit.thread

if.end6.i:                                        ; preds = %do.body
  %12 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i32.i = shl i32 %15, 8
  %or11.i = or i32 %shl.i32.i, -1073315712
  %call12.i = call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %or11.i, ptr noundef nonnull %call7.i, i32 noundef 4, ptr noundef nonnull %alen.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end, label %if.end6.i.p54u_read.exit.thread_crit_edge

if.end6.i.p54u_read.exit.thread_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %p54u_read.exit.thread

p54u_read.exit.thread:                            ; preds = %if.end6.i.p54u_read.exit.thread_crit_edge, %do.body.p54u_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end6.i.p54u_read.exit.thread_crit_edge ], [ %call3.i, %do.body.p54u_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #10
  br label %fail

do.end:                                           ; preds = %if.end6.i
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #10
  %or = and i32 %17, -50331649
  %and = or i32 %or, 33554432
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i660) #10
  %19 = ptrtoint ptr %alen.i660 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %alen.i660, align 4, !annotation !133
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i14.i = shl i32 %23, 8
  %ep.0.i = or i32 %shl.i14.i, -1073315840
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 7936, ptr %call7.i, align 8
  %25 = ptrtoint ptr %addr1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 1342177280, ptr %addr1.i, align 2
  %val5.i = getelementptr inbounds %struct.net2280_reg_write, ptr %call7.i, i32 0, i32 2
  %26 = ptrtoint ptr %val5.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %and, ptr %val5.i, align 2
  %27 = load ptr, ptr %udev.i, align 8
  %call7.i661 = call i32 @usb_bulk_msg(ptr noundef %27, i32 noundef %ep.0.i, ptr noundef nonnull %call7.i, i32 noundef 10, ptr noundef nonnull %alen.i660, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i660) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i661)
  %tobool8.not = icmp eq i32 %call7.i661, 0
  br i1 %tobool8.not, label %do.end.while.body_crit_edge, label %do.end.fail_crit_edge

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %__ms.0691 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %do.end.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0691, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #10
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %or14 = and i32 %30, -50331649
  %and15 = or i32 %or14, 16777216
  store i32 %and15, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i662) #10
  %31 = ptrtoint ptr %alen.i662 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %alen.i662, align 4, !annotation !133
  %32 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i14.i664 = shl i32 %35, 8
  %ep.0.i666 = or i32 %shl.i14.i664, -1073315840
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 7936, ptr %call7.i, align 8
  %37 = ptrtoint ptr %addr1.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 1342177280, ptr %addr1.i, align 2
  %38 = ptrtoint ptr %val5.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %and15, ptr %val5.i, align 2
  %39 = load ptr, ptr %udev.i, align 8
  %call7.i670 = call i32 @usb_bulk_msg(ptr noundef %39, i32 noundef %ep.0.i666, ptr noundef nonnull %call7.i, i32 noundef 10, ptr noundef nonnull %alen.i662, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i662) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i670)
  %tobool18.not = icmp eq i32 %call7.i670, 0
  br i1 %tobool18.not, label %while.end.while.body27_crit_edge, label %while.end.fail_crit_edge

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.end.while.body27_crit_edge:                 ; preds = %while.end
  br label %while.body27

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %while.end.while.body27_crit_edge
  %__ms23.0692 = phi i32 [ %dec25, %while.body27.while.body27_crit_edge ], [ 100, %while.end.while.body27_crit_edge ]
  %dec25 = add nsw i32 %__ms23.0692, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #10
  %tobool26.not = icmp eq i32 %dec25, 0
  br i1 %tobool26.not, label %while.end28, label %while.body27.while.body27_crit_edge

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body27

while.end28:                                      ; preds = %while.body27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i671) #10
  %41 = ptrtoint ptr %alen.i671 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %alen.i671, align 4, !annotation !133
  %42 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udev.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i14.i673 = shl i32 %45, 8
  %ep.0.i675 = or i32 %shl.i14.i673, -1073315840
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 7936, ptr %call7.i, align 8
  %47 = ptrtoint ptr %addr1.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %addr1.i, align 2
  %48 = ptrtoint ptr %val5.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 604110848, ptr %val5.i, align 2
  %49 = load ptr, ptr %udev.i, align 8
  %call7.i679 = call i32 @usb_bulk_msg(ptr noundef %49, i32 noundef %ep.0.i675, ptr noundef nonnull %call7.i, i32 noundef 10, ptr noundef nonnull %alen.i671, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i671) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i679)
  %tobool31.not = icmp eq i32 %call7.i679, 0
  br i1 %tobool31.not, label %while.body40.preheader, label %while.end28.fail_crit_edge

while.end28.fail_crit_edge:                       ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body40.preheader:                           ; preds = %while.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #10
  %call43 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 3, i32 noundef 67108864, i32 noundef 100663296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body49, label %while.body40.preheader.fail_crit_edge

while.body40.preheader.fail_crit_edge:            ; preds = %while.body40.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body49:                                        ; preds = %while.body40.preheader
  %call50 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 15, i32 noundef 268435456, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body56, label %do.body49.fail_crit_edge

do.body49.fail_crit_edge:                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body56:                                        ; preds = %do.body49
  %call57 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 3, i32 noundef 100663296, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end62, label %do.body56.fail_crit_edge

do.body56.fail_crit_edge:                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end62:                                         ; preds = %do.body56
  %70 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg, align 4
  %or63 = or i32 %71, 2097152
  store i32 %or63, ptr %reg, align 4
  %call65 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 3, i32 noundef 100663296, i32 noundef %or63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body71, label %do.end62.fail_crit_edge

do.end62.fail_crit_edge:                          ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body71:                                        ; preds = %do.end62
  %call72 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef -2013265920, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body78, label %do.body71.fail_crit_edge

do.body71.fail_crit_edge:                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body78:                                        ; preds = %do.body71
  %call79 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 604176384, i32 noundef 67108864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body85, label %do.body78.fail_crit_edge

do.body78.fail_crit_edge:                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body85:                                        ; preds = %do.body78
  %call86 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 1677918208, i32 noundef 67108864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body92, label %do.body85.fail_crit_edge

do.body85.fail_crit_edge:                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body92:                                        ; preds = %do.body85
  %call93 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 15, i32 noundef 402653184, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body99, label %do.body92.fail_crit_edge

do.body92.fail_crit_edge:                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body99:                                        ; preds = %do.body92
  %call100 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2179, i32 noundef 67109120, i32 noundef 100663296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body106, label %do.body99.fail_crit_edge

do.body99.fail_crit_edge:                         ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body106:                                       ; preds = %do.body99
  %call107 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2179, i32 noundef 1073742080, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.body113, label %do.body106.fail_crit_edge

do.body106.fail_crit_edge:                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body113:                                       ; preds = %do.body106
  %call114 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2191, i32 noundef 268435712, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.body120, label %do.body113.fail_crit_edge

do.body113.fail_crit_edge:                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body120:                                       ; preds = %do.body113
  %call121 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 603979776, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.body127, label %do.body120.fail_crit_edge

do.body120.fail_crit_edge:                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body127:                                       ; preds = %do.body120
  %call128 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 738197504, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %do.body134, label %do.body127.fail_crit_edge

do.body127.fail_crit_edge:                        ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body134:                                       ; preds = %do.body127
  %call135 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 402653248, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body141, label %do.body134.fail_crit_edge

do.body134.fail_crit_edge:                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body141:                                       ; preds = %do.body134
  %call142 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %do.end147, label %do.body141.fail_crit_edge

do.body141.fail_crit_edge:                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end147:                                        ; preds = %do.body141
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg, align 4
  %and150 = and i32 %73, -32817
  store i32 %and150, ptr %reg, align 4
  %call153 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %and150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %while.body163.preheader, label %do.end147.fail_crit_edge

do.end147.fail_crit_edge:                         ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body163.preheader:                          ; preds = %do.end147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #10
  %94 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reg, align 4
  %or165 = or i32 %95, 16
  store i32 %or165, ptr %reg, align 4
  %call168 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %or165)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %while.body178.preheader, label %while.body163.preheader.fail_crit_edge

while.body163.preheader.fail_crit_edge:           ; preds = %while.body163.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body178.preheader:                          ; preds = %while.body163.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %110(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #10
  %116 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reg, align 4
  %and180 = and i32 %117, -17
  store i32 %and180, ptr %reg, align 4
  %call183 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %and180)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %while.body178.preheader.while.body193_crit_edge, label %while.body178.preheader.fail_crit_edge

while.body178.preheader.fail_crit_edge:           ; preds = %while.body178.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body178.preheader.while.body193_crit_edge:  ; preds = %while.body178.preheader
  br label %while.body193

while.body193:                                    ; preds = %while.body193.while.body193_crit_edge, %while.body178.preheader.while.body193_crit_edge
  %__ms189.0696 = phi i32 [ %dec191, %while.body193.while.body193_crit_edge ], [ 100, %while.body178.preheader.while.body193_crit_edge ]
  %dec191 = add nsw i32 %__ms189.0696, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #10
  %tobool192.not = icmp eq i32 %dec191, 0
  br i1 %tobool192.not, label %while.end194, label %while.body193.while.body193_crit_edge

while.body193.while.body193_crit_edge:            ; preds = %while.body193
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body193

while.end194:                                     ; preds = %while.body193
  %call196 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 268435520, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %do.body202, label %while.end194.fail_crit_edge

while.end194.fail_crit_edge:                      ; preds = %while.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body202:                                       ; preds = %while.end194
  %119 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reg, align 4
  %call203 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 335544384, i32 noundef %120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %do.end208, label %do.body202.fail_crit_edge

do.body202.fail_crit_edge:                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end208:                                        ; preds = %do.body202
  %fw = getelementptr inbounds %struct.p54u_priv, ptr %1, i32 0, i32 8
  %121 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool212.not698 = icmp eq i32 %124, 0
  br i1 %tobool212.not698, label %do.end208.do.body319_crit_edge, label %while.body213.preheader

do.end208.do.body319_crit_edge:                   ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body319

while.body213.preheader:                          ; preds = %do.end208
  %data210 = getelementptr inbounds %struct.firmware, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %data210 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data210, align 4
  br label %while.body213

while.body213:                                    ; preds = %cleanup.while.body213_crit_edge, %while.body213.preheader
  %data.0701 = phi ptr [ %add.ptr, %cleanup.while.body213_crit_edge ], [ %126, %while.body213.preheader ]
  %offset.0700 = phi i32 [ %add, %cleanup.while.body213_crit_edge ], [ 131072, %while.body213.preheader ]
  %remains.0699 = phi i32 [ %sub, %cleanup.while.body213_crit_edge ], [ %124, %while.body213.preheader ]
  %127 = call i32 @llvm.umin.i32(i32 %remains.0699, i32 512)
  %128 = call ptr @memcpy(ptr %call7.i, ptr %data.0701, i32 %127)
  %call214 = call fastcc i32 @p54u_bulk_msg(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef %127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %do.body222, label %do.end219

do.end219:                                        ; preds = %while.body213
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %udev.i, align 8
  %dev220 = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev220, ptr noundef nonnull @.str.32) #13
  br label %fail

do.body222:                                       ; preds = %while.body213
  %call223 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 805306432, i32 noundef 983232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.body229, label %do.body222.fail_crit_edge

do.body222.fail_crit_edge:                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body229:                                       ; preds = %do.body222
  %call231 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 537919552, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %do.body237, label %do.body229.fail_crit_edge

do.body229.fail_crit_edge:                        ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body237:                                       ; preds = %do.body229
  %call240 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 537919552, i32 noundef 16777216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %do.body246, label %do.body237.fail_crit_edge

do.body237.fail_crit_edge:                        ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body246:                                       ; preds = %do.body237
  %131 = call i32 @llvm.bswap.i32(i32 %127)
  %call249 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 605028416, i32 noundef %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %do.body255, label %do.body246.fail_crit_edge

do.body246.fail_crit_edge:                        ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body255:                                       ; preds = %do.body246
  %132 = call i32 @llvm.bswap.i32(i32 %offset.0700)
  %call258 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 672137280, i32 noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %do.body264, label %do.body255.fail_crit_edge

do.body255.fail_crit_edge:                        ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body264:                                       ; preds = %do.body255
  %call265 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 1610612800, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.body271, label %do.body264.fail_crit_edge

do.body264.fail_crit_edge:                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body271:                                       ; preds = %do.body264
  %133 = shl nuw i32 %127, 22
  %134 = and i32 %133, -16777216
  %call272 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 1677721664, i32 noundef %134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %do.body278, label %do.body271.fail_crit_edge

do.body271.fail_crit_edge:                        ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body278:                                       ; preds = %do.body271
  %call279 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 1744830528, i32 noundef 67108864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %while.body289.preheader, label %do.body278.fail_crit_edge

do.body278.fail_crit_edge:                        ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body289.preheader:                          ; preds = %do.body278
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %137(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %139(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %141(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %143(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #10
  %call294 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 739246144, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %do.end299, label %while.body289.preheader.fail_crit_edge

while.body289.preheader.fail_crit_edge:           ; preds = %while.body289.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end299:                                        ; preds = %while.body289.preheader
  %145 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reg, align 4
  %147 = and i32 %146, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %147)
  %.not = icmp eq i32 %147, 50331648
  br i1 %.not, label %do.body311, label %do.end307

do.end307:                                        ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %udev.i, align 8
  %dev309 = getelementptr inbounds %struct.usb_device, ptr %149, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev309, ptr noundef nonnull @.str.35) #13
  br label %fail

do.body311:                                       ; preds = %do.end299
  %call312 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 738394112, i32 noundef 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %cleanup, label %do.body311.fail_crit_edge

do.body311.fail_crit_edge:                        ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

cleanup:                                          ; preds = %do.body311
  %sub = sub i32 %remains.0699, %127
  %add.ptr = getelementptr i8, ptr %data.0701, i32 %127
  %add = add i32 %offset.0700, %127
  %tobool212.not = icmp eq i32 %sub, 0
  br i1 %tobool212.not, label %cleanup.do.body319_crit_edge, label %cleanup.while.body213_crit_edge

cleanup.while.body213_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body213

cleanup.do.body319_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body319

do.body319:                                       ; preds = %cleanup.do.body319_crit_edge, %do.end208.do.body319_crit_edge
  %call321 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %do.end326, label %do.body319.fail_crit_edge

do.body319.fail_crit_edge:                        ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end326:                                        ; preds = %do.body319
  %150 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %reg, align 4
  %and328 = and i32 %151, -32817
  %or329 = or i32 %and328, 32
  store i32 %or329, ptr %reg, align 4
  %call332 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %or329)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %while.body342.preheader, label %do.end326.fail_crit_edge

do.end326.fail_crit_edge:                         ; preds = %do.end326
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

while.body342.preheader:                          ; preds = %do.end326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %152(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %155(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %156(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %158(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %159(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %160(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %161(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %162(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %163(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %164(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %165(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %166(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %167(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %168(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %169(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %170(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %171(i32 noundef 214748000) #10
  %172 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %reg, align 4
  %or344 = or i32 %173, 16
  store i32 %or344, ptr %reg, align 4
  %call347 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %or344)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %do.end352, label %while.body342.preheader.fail_crit_edge

while.body342.preheader.fail_crit_edge:           ; preds = %while.body342.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end352:                                        ; preds = %while.body342.preheader
  %174 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg, align 4
  %and353 = and i32 %175, -17
  store i32 %and353, ptr %reg, align 4
  %call356 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 2013265984, i32 noundef %and353)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %do.end352.while.body366_crit_edge, label %do.end352.fail_crit_edge

do.end352.fail_crit_edge:                         ; preds = %do.end352
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end352.while.body366_crit_edge:                ; preds = %do.end352
  br label %while.body366

while.body366:                                    ; preds = %while.body366.while.body366_crit_edge, %do.end352.while.body366_crit_edge
  %__ms362.0703 = phi i32 [ %dec364, %while.body366.while.body366_crit_edge ], [ 100, %do.end352.while.body366_crit_edge ]
  %dec364 = add nsw i32 %__ms362.0703, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 214748000) #10
  %tobool365.not = icmp eq i32 %dec364, 0
  br i1 %tobool365.not, label %while.end367, label %while.body366.while.body366_crit_edge

while.body366.while.body366_crit_edge:            ; preds = %while.body366
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body366

while.end367:                                     ; preds = %while.body366
  %call370 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 268435520, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %do.body376, label %while.end367.fail_crit_edge

while.end367.fail_crit_edge:                      ; preds = %while.end367
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body376:                                       ; preds = %while.end367
  %177 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %reg, align 4
  %call378 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 335544384, i32 noundef %178)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %do.body384, label %do.body376.fail_crit_edge

do.body376.fail_crit_edge:                        ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body384:                                       ; preds = %do.body376
  %call386 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 402653248, i32 noundef 67108864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %do.body392, label %do.body384.fail_crit_edge

do.body384.fail_crit_edge:                        ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body392:                                       ; preds = %do.body384
  %call393 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 738197504, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393)
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %do.body399, label %do.body392.fail_crit_edge

do.body392.fail_crit_edge:                        ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body399:                                       ; preds = %do.body392
  %call400 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 603979776, i32 noundef 129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %do.body406, label %do.body399.fail_crit_edge

do.body399.fail_crit_edge:                        ; preds = %do.body399
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body406:                                       ; preds = %do.body399
  %call407 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 64, i32 noundef 16777216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %do.end412, label %do.body406.fail_crit_edge

do.body406.fail_crit_edge:                        ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end412:                                        ; preds = %do.body406
  %179 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %udev.i, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 8
  %shl.i = shl i32 %182, 8
  %or417 = or i32 %shl.i, -1073250176
  %call418 = call i32 @usb_interrupt_msg(ptr noundef %180, i32 noundef %or417, ptr noundef nonnull %call7.i, i32 noundef 4, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call418)
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %lor.lhs.false420, label %do.end412.fail_crit_edge

do.end412.fail_crit_edge:                         ; preds = %do.end412
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

lor.lhs.false420:                                 ; preds = %do.end412
  %183 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %alen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %184)
  %cmp421.not = icmp eq i32 %184, 4
  br i1 %cmp421.not, label %do.body424, label %lor.lhs.false420.fail_crit_edge

lor.lhs.false420.fail_crit_edge:                  ; preds = %lor.lhs.false420
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body424:                                       ; preds = %lor.lhs.false420
  %call426 = call fastcc i32 @p54u_read(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 268435520, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call426)
  %tobool427.not = icmp eq i32 %call426, 0
  br i1 %tobool427.not, label %do.body432, label %do.body424.fail_crit_edge

do.body424.fail_crit_edge:                        ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body432:                                       ; preds = %do.body424
  %185 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %reg, align 4
  %call434 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 2063, i32 noundef 335544384, i32 noundef %186)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call434)
  %tobool435.not = icmp eq i32 %call434, 0
  br i1 %tobool435.not, label %do.end439, label %do.body432.fail_crit_edge

do.body432.fail_crit_edge:                        ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end439:                                        ; preds = %do.body432
  %call445 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 603979776, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call445)
  %tobool446.not = icmp eq i32 %call445, 0
  br i1 %tobool446.not, label %do.body451, label %do.end439.fail_crit_edge

do.end439.fail_crit_edge:                         ; preds = %do.end439
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.body451:                                       ; preds = %do.end439
  call void @__sanitizer_cov_trace_pc() #12
  %call452 = call fastcc i32 @p54u_write(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 31, i32 noundef 738197504, i32 noundef 1)
  br label %fail

fail:                                             ; preds = %do.body451, %do.end439.fail_crit_edge, %do.body432.fail_crit_edge, %do.body424.fail_crit_edge, %lor.lhs.false420.fail_crit_edge, %do.end412.fail_crit_edge, %do.body406.fail_crit_edge, %do.body399.fail_crit_edge, %do.body392.fail_crit_edge, %do.body384.fail_crit_edge, %do.body376.fail_crit_edge, %while.end367.fail_crit_edge, %do.end352.fail_crit_edge, %while.body342.preheader.fail_crit_edge, %do.end326.fail_crit_edge, %do.body319.fail_crit_edge, %do.body311.fail_crit_edge, %do.end307, %while.body289.preheader.fail_crit_edge, %do.body278.fail_crit_edge, %do.body271.fail_crit_edge, %do.body264.fail_crit_edge, %do.body255.fail_crit_edge, %do.body246.fail_crit_edge, %do.body237.fail_crit_edge, %do.body229.fail_crit_edge, %do.body222.fail_crit_edge, %do.end219, %do.body202.fail_crit_edge, %while.end194.fail_crit_edge, %while.body178.preheader.fail_crit_edge, %while.body163.preheader.fail_crit_edge, %do.end147.fail_crit_edge, %do.body141.fail_crit_edge, %do.body134.fail_crit_edge, %do.body127.fail_crit_edge, %do.body120.fail_crit_edge, %do.body113.fail_crit_edge, %do.body106.fail_crit_edge, %do.body99.fail_crit_edge, %do.body92.fail_crit_edge, %do.body85.fail_crit_edge, %do.body78.fail_crit_edge, %do.body71.fail_crit_edge, %do.end62.fail_crit_edge, %do.body56.fail_crit_edge, %do.body49.fail_crit_edge, %while.body40.preheader.fail_crit_edge, %while.end28.fail_crit_edge, %while.end.fail_crit_edge, %do.end.fail_crit_edge, %p54u_read.exit.thread
  %err.1 = phi i32 [ %call7.i661, %do.end.fail_crit_edge ], [ %call7.i670, %while.end.fail_crit_edge ], [ %call7.i679, %while.end28.fail_crit_edge ], [ %call43, %while.body40.preheader.fail_crit_edge ], [ %call50, %do.body49.fail_crit_edge ], [ %call57, %do.body56.fail_crit_edge ], [ %call65, %do.end62.fail_crit_edge ], [ %call72, %do.body71.fail_crit_edge ], [ %call79, %do.body78.fail_crit_edge ], [ %call86, %do.body85.fail_crit_edge ], [ %call93, %do.body92.fail_crit_edge ], [ %call100, %do.body99.fail_crit_edge ], [ %call107, %do.body106.fail_crit_edge ], [ %call114, %do.body113.fail_crit_edge ], [ %call121, %do.body120.fail_crit_edge ], [ %call128, %do.body127.fail_crit_edge ], [ %call135, %do.body134.fail_crit_edge ], [ %call142, %do.body141.fail_crit_edge ], [ %call153, %do.end147.fail_crit_edge ], [ %call168, %while.body163.preheader.fail_crit_edge ], [ %call183, %while.body178.preheader.fail_crit_edge ], [ %call196, %while.end194.fail_crit_edge ], [ %call203, %do.body202.fail_crit_edge ], [ %call321, %do.body319.fail_crit_edge ], [ %call332, %do.end326.fail_crit_edge ], [ %call347, %while.body342.preheader.fail_crit_edge ], [ %call356, %do.end352.fail_crit_edge ], [ %call370, %while.end367.fail_crit_edge ], [ %call378, %do.body376.fail_crit_edge ], [ %call386, %do.body384.fail_crit_edge ], [ %call393, %do.body392.fail_crit_edge ], [ %call400, %do.body399.fail_crit_edge ], [ %call407, %do.body406.fail_crit_edge ], [ %call418, %do.end412.fail_crit_edge ], [ 0, %lor.lhs.false420.fail_crit_edge ], [ %call426, %do.body424.fail_crit_edge ], [ %call434, %do.body432.fail_crit_edge ], [ %call445, %do.end439.fail_crit_edge ], [ %call452, %do.body451 ], [ %retval.0.i.ph, %p54u_read.exit.thread ], [ 0, %do.end307 ], [ %call214, %do.end219 ], [ %call223, %do.body222.fail_crit_edge ], [ %call231, %do.body229.fail_crit_edge ], [ %call240, %do.body237.fail_crit_edge ], [ %call249, %do.body246.fail_crit_edge ], [ %call258, %do.body255.fail_crit_edge ], [ %call265, %do.body264.fail_crit_edge ], [ %call272, %do.body271.fail_crit_edge ], [ %call279, %do.body278.fail_crit_edge ], [ %call294, %while.body289.preheader.fail_crit_edge ], [ %call312, %do.body311.fail_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup458

cleanup458:                                       ; preds = %fail, %entry.cleanup458_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail ], [ -12, %entry.cleanup458_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_rx_cb(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %rx_queue = getelementptr inbounds %struct.p54u_priv, ptr %5, i32 0, i32 6
  tail call void @skb_unlink(ptr noundef %1, ptr noundef %rx_queue) #10
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge, !prof !134

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %call = tail call ptr @skb_put(ptr noundef %1, i32 noundef %9) #10
  %hw_type = getelementptr inbounds %struct.p54u_priv, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_hdr_len = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %tx_hdr_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_hdr_len, align 8
  %call6 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %13) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %fw_interface = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 16
  %14 = ptrtoint ptr %fw_interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_interface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280129079, i32 %15)
  %cmp9 = icmp eq i32 %15, 1280129079
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 4) #10
  %call12 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 4) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %call14 = tail call i32 @p54_rx(ptr noundef %3, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %rx_mtu = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_mtu, align 4
  %conv = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #10
  %tobool19.not = icmp eq ptr %call.i.i, null
  br i1 %tobool19.not, label %if.then16.cleanup_crit_edge, label %if.end29, !prof !132

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %cb30 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %urb, ptr %cb30, align 4
  %dev33 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %dev33, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %transfer_buffer, align 4
  %23 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %context, align 4
  br label %if.end54

if.else:                                          ; preds = %if.end13
  %24 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp37 = icmp eq i32 %25, 1
  br i1 %cmp37, label %if.then39, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %tx_hdr_len41 = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 14
  %26 = ptrtoint ptr %tx_hdr_len41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_hdr_len41, align 8
  %call42 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %27) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else.if.end43_crit_edge
  %28 = ptrtoint ptr %fw_interface to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_interface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280129079, i32 %29)
  %cmp46 = icmp eq i32 %29, 1280129079
  br i1 %cmp46, label %if.then48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #10
  %call50 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 4) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %tail.i107 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i107 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %tail.i107, align 8
  tail call void @skb_trim(ptr noundef %1, i32 noundef 0) #10
  %33 = ptrtoint ptr %tail.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i107, align 8
  %transfer_buffer53 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %transfer_buffer53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.end29
  %skb.0 = phi ptr [ %call.i.i, %if.end29 ], [ %1, %if.end51 ]
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb.0) #10
  %submitted = getelementptr inbounds %struct.p54u_priv, ptr %5, i32 0, i32 7
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %submitted) #10
  %call56 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.cleanup_crit_edge, label %if.then58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_unlink(ptr noundef %skb.0, ptr noundef %rx_queue) #10
  tail call void @usb_unanchor_urb(ptr noundef %urb) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then58, %entry.cleanup.sink.split_crit_edge
  %skb.0.sink = phi ptr [ %skb.0, %if.then58 ], [ %1, %entry.cleanup.sink.split_crit_edge ]
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb.0.sink, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end54.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_tx_cb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %3, i32 noundef 0) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @p54_free_skb(ptr noundef %5, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @p54u_tx_dummy_cb(ptr nocapture noundef %urb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54u_bulk_msg(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #10
  %0 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alen, align 4, !annotation !133
  %udev = getelementptr inbounds %struct.p54u_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or = or i32 %shl.i, -1073709056
  %call2 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or, ptr noundef %data, i32 noundef %len, ptr noundef nonnull %alen, i32 noundef 2000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54u_read(ptr nocapture noundef readonly %priv, ptr noundef %buf, i32 noundef %type, i32 noundef %addr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #10
  %0 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alen, align 4, !annotation !133
  %and = and i32 %type, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 425984, i32 458752
  %conv = trunc i32 %type to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %buf, align 1
  %addr1 = getelementptr inbounds %struct.net2280_reg_read, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %addr, ptr %addr1, align 1
  %udev = getelementptr inbounds %struct.p54u_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or.i = or i32 %., %shl.i
  %or = or i32 %or.i, -1073741824
  %call3 = call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %or, ptr noundef %buf, i32 noundef 6, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i32 = shl i32 %11, 8
  %or.i34 = or i32 %., %shl.i32
  %or11 = or i32 %or.i34, -1073741696
  %call12 = call i32 @usb_bulk_msg(ptr noundef %9, i32 noundef %or11, ptr noundef %buf, i32 noundef 4, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call3, %entry.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p54u_write(ptr nocapture noundef readonly %priv, ptr noundef %buf, i32 noundef %type, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #10
  %0 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alen, align 4, !annotation !133
  %and = and i32 %type, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %udev1 = getelementptr inbounds %struct.p54u_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev1, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i14 = shl i32 %4, 8
  %. = select i1 %tobool.not, i32 425984, i32 458752
  %or.i15 = or i32 %shl.i14, %.
  %ep.0 = or i32 %or.i15, -1073741824
  %conv = trunc i32 %type to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %buf, align 1
  %addr4 = getelementptr inbounds %struct.net2280_reg_write, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %addr4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %addr, ptr %addr4, align 1
  %val5 = getelementptr inbounds %struct.net2280_reg_write, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %val5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %val, ptr %val5, align 1
  %udev6 = getelementptr inbounds %struct.p54u_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev6, align 8
  %call7 = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %ep.0, ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %alen, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #10
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54u_load_firmware_cb(ptr noundef %firmware, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 8
  %intf2 = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf2, align 4
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fw = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %firmware, ptr %fw, align 4
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 8
  %call.i = tail call i32 @p54_parse_firmware(ptr noundef %6, ptr noundef nonnull %firmware) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end7_crit_edge

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end.i:                                         ; preds = %if.then
  %hw_type.i.i = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 4
  %7 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %switch.lookup, label %if.end.i.do.end7_crit_edge

if.end.i.do.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

switch.lookup:                                    ; preds = %if.end.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.p54u_load_firmware_cb, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %fw_interface.i = getelementptr inbounds %struct.p54_common, ptr %context, i32 0, i32 16
  %11 = ptrtoint ptr %fw_interface.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_interface.i, align 8
  %arrayidx.i = getelementptr [3 x %struct.anon.134], ptr @p54u_fwlist, i32 0, i32 %switch.load
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not.i = icmp eq i32 %12, %14
  br i1 %cmp5.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev1, align 8
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  %hw9.i = getelementptr [3 x %struct.anon.134], ptr @p54u_fwlist, i32 0, i32 %switch.load, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.51, ptr noundef %hw9.i) #13
  br label %do.end7

if.end10.i:                                       ; preds = %switch.lookup
  %upload_fw.i = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 3
  %17 = ptrtoint ptr %upload_fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %upload_fw.i, align 8
  %call11.i = tail call i32 %18(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.do.end7_crit_edge

if.end10.i.do.end7_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end14.i:                                       ; preds = %if.end10.i
  %call15.i = tail call i32 @p54u_open(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.do.end7_crit_edge

if.end14.i.do.end7_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call i32 @p54_read_eeprom(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.err_stop.i_crit_edge

if.end18.i.err_stop.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop.i

if.end22.i:                                       ; preds = %if.end18.i
  %priv1.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i.i.i, align 8
  %submitted.i.i.i = getelementptr inbounds %struct.p54u_priv, ptr %20, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i.i.i) #10
  %21 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev1, align 8
  %dev24.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %call25.i = tail call i32 @p54_register_common(ptr noundef %6, ptr noundef %dev24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end, label %if.end22.i.err_stop.i_crit_edge

if.end22.i.err_stop.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop.i

err_stop.i:                                       ; preds = %if.end22.i.err_stop.i_crit_edge, %if.end18.i.err_stop.i_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %if.end18.i.err_stop.i_crit_edge ], [ %call25.i, %if.end22.i.err_stop.i_crit_edge ]
  %priv1.i.i50.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %priv1.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv1.i.i50.i, align 8
  %submitted.i.i51.i = getelementptr inbounds %struct.p54u_priv, ptr %24, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i.i51.i) #10
  br label %do.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #13
  br label %do.end7

if.end:                                           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_wait_load = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 9
  tail call void @complete(ptr noundef %fw_wait_load) #10
  br label %if.end11

do.end7:                                          ; preds = %if.else, %err_stop.i, %if.end14.i.do.end7_crit_edge, %if.end10.i.do.end7_crit_edge, %do.end.i, %if.end.i.do.end7_crit_edge, %if.then.do.end7_crit_edge
  %err.0.ph = phi i32 [ -95, %if.end.i.do.end7_crit_edge ], [ %ret.0.i, %err_stop.i ], [ %call15.i, %if.end14.i.do.end7_crit_edge ], [ %call11.i, %if.end10.i.do.end7_crit_edge ], [ -19, %do.end.i ], [ %call.i, %if.then.do.end7_crit_edge ], [ -2, %if.else ]
  %fw_wait_load24 = getelementptr inbounds %struct.p54u_priv, ptr %context, i32 0, i32 9
  tail call void @complete(ptr noundef %fw_wait_load24) #10
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.49, i32 noundef %err.0.ph) #13
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  tail call void @usb_driver_release_interface(ptr noundef nonnull @p54u_driver, ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end7, %if.end
  tail call void @usb_put_intf(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_parse_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_read_eeprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_register_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_unregister_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__UNIQUE_ID_author355, !1, !"__UNIQUE_ID_author355", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description356, !3, !"__UNIQUE_ID_description356", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file357, !5, !"__UNIQUE_ID_file357", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license358, !5, !"__UNIQUE_ID_license358", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias359, !8, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 29, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware360, !10, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 30, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware361, !12, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 31, i32 1}
!13 = !{ptr @__initcall__kmod_p54usb__369_1140_p54u_driver_init6, !14, !"__initcall__kmod_p54usb__369_1140_p54u_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 1140, i32 1}
!15 = !{ptr @__exitcall_p54u_driver_exit, !14, !"__exitcall_p54u_driver_exit", i1 false, i1 false}
!16 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @p54u_driver, !18, !"p54u_driver", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 1124, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 996, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @p54u_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @p54u_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @skb_queue_head_init.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @init_usb_anchor.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_usb_anchor.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 459, i32 4}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @p54u_device_reset._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @p54u_device_reset._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 470, i32 3}
!43 = !{ptr @p54u_device_reset._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @p54u_device_reset._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 525, i32 25}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 560, i32 4}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @p54u_upload_firmware_3887._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @p54u_upload_firmware_3887._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @p54u_upload_firmware_3887._entry.18, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 573, i32 3}
!54 = !{ptr @p54u_upload_firmware_3887._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 579, i32 32}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 582, i32 32}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 588, i32 4}
!61 = !{ptr @p54u_upload_firmware_3887._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @p54u_upload_firmware_3887._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @p54u_upload_firmware_3887._entry.25, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 595, i32 3}
!65 = !{ptr @p54u_upload_firmware_3887._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 603, i32 3}
!68 = !{ptr @p54u_upload_firmware_3887._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @p54u_upload_firmware_3887._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 490, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @p54u_firmware_reset_3887._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @p54u_firmware_reset_3887._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @p54u_romboot_3887, !76, !"p54u_romboot_3887", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 476, i32 19}
!77 = !{ptr @p54u_firmware_upload_3887, !78, !"p54u_firmware_upload_3887", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 496, i32 19}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 749, i32 4}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @p54u_upload_firmware_net2280._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @p54u_upload_firmware_net2280._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 783, i32 4}
!86 = !{ptr @p54u_upload_firmware_net2280._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @p54u_upload_firmware_net2280._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 968, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @p54u_load_firmware._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @p54u_load_firmware._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 976, i32 3}
!96 = !{ptr @p54u_load_firmware._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @p54u_load_firmware._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @init_completion.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/completion.h", i32 87, i32 2}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 129, i32 9}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 135, i32 9}
!105 = !{ptr @p54u_fwlist, !106, !"p54u_fwlist", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 125, i32 3}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 932, i32 3}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @p54u_load_firmware_cb._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @p54u_load_firmware_cb._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 943, i32 3}
!114 = !{ptr @p54u_load_firmware_cb._entry.48, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @p54u_load_firmware_cb._entry_ptr.50, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 881, i32 3}
!118 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @p54u_start_ops._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @p54u_start_ops._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @p54u_table, !122, !"p54u_table", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intersil/p54/p54usb.c", i32 43, i32 35}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 2000, i32 1}
