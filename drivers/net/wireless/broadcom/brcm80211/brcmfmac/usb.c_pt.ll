; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.brcmf_usbdev_info = type { %struct.brcmf_usbdev, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, ptr, ptr, [320 x i8], ptr, i32, ptr, ptr, %struct.completion, i32, i32, ptr, %struct.usb_ctrlrequest, %struct.usb_ctrlrequest, i32, i32, i32, %struct.wait_queue_head, i32, i8, ptr, ptr }
%struct.brcmf_usbdev = type { ptr, ptr, i32, %struct.brcmf_stats, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_stats = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32 }
%struct.bootrom_id_le = type { i32, i32, i32, i32, i32, i32 }
%struct.brcmf_bus = type { %union.anon.128, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.128 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.rdl_state_le = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.trx_header_le = type { i32, i32, i32, i32, [3 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.brcmf_usbreq = type { %struct.list_head, ptr, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_firmware348 = internal constant [41 x i8] c"brcmfmac.firmware=brcm/brcmfmac43143.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [42 x i8] c"brcmfmac.firmware=brcm/brcmfmac43236b.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [42 x i8] c"brcmfmac.firmware=brcm/brcmfmac43242a.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [41 x i8] c"brcmfmac.firmware=brcm/brcmfmac43569.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [40 x i8] c"brcmfmac.firmware=brcm/brcmfmac4373.bin\00", section ".modinfo", align 1
@brcmf_usbdrvr = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.2, ptr @brcmf_usb_probe, ptr @brcmf_usb_disconnect, ptr null, ptr @brcmf_usb_suspend, ptr @brcmf_usb_resume, ptr @brcmf_usb_reset_resume, ptr null, ptr null, ptr @brcmf_usb_devid_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_exit = private unnamed_addr constant [15 x i8] c"brcmf_usb_exit\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reset all usb devices %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_register = private unnamed_addr constant [19 x i8] c"brcmf_usb_register\00", align 1
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@brcmf_usb_devid_table = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2652, i16 -17122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 -17129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 -17121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 -17113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5041, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 -17111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1086, i16 12545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 3036, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 3036, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_probe = private unnamed_addr constant [16 x i8] c"brcmf_usb_probe\00", align 1
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enter 0x%04x:0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Number of configurations: %d not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device class: 0x%x not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"non WLAN interface %d: 0x%x:0x%x:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No RX (in) Bulk EP found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No TX (out) Bulk EP found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Broadcom super speed plus USB WLAN interface detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Broadcom super speed USB WLAN interface detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Broadcom high speed USB WLAN interface detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Broadcom full speed USB WLAN interface detected\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_probe_cb = private unnamed_addr constant [19 x i8] c"brcmf_usb_probe_cb\00", align 1
@brcmf_usb_bus_ops = internal constant { %struct.brcmf_bus_ops, [48 x i8] } { %struct.brcmf_bus_ops { ptr @brcmf_usb_up, ptr @brcmf_usb_down, ptr @brcmf_usb_tx, ptr @brcmf_usb_tx_ctlpkt, ptr @brcmf_usb_rx_ctlpkt, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_usb_get_fwname, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware request failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_attach = private unnamed_addr constant [17 x i8] c"brcmf_usb_attach\00", align 1
@brcmf_usb_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&devinfo->ioctl_resp_wait\00", [38 x i8] zeroinitializer }, align 32
@brcmf_usb_attach.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&devinfo->qlock\00", [16 x i8] zeroinitializer }, align 32
@brcmf_usb_attach.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&devinfo->tx_flowblock_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failed!\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_usbdev_qinit = private unnamed_addr constant [19 x i8] c"brcmf_usbdev_qinit\00", align 1
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fail!\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_up = private unnamed_addr constant [13 x i8] c"brcmf_usb_up\00", align 1
@__func__.brcmf_usb_state_change = private unnamed_addr constant [23 x i8] c"brcmf_usb_state_change\00", align 1
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Enter, current state=%d, new state=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBUS is down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DBUS is up\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_rx_fill_all = private unnamed_addr constant [22 x i8] c"brcmf_usb_rx_fill_all\00", align 1
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus is not up=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_rx_complete = private unnamed_addr constant [22 x i8] c"brcmf_usb_rx_complete\00", align 1
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enter, urb->status=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_down = private unnamed_addr constant [15 x i8] c"brcmf_usb_down\00", align 1
@__func__.brcmf_usb_tx = private unnamed_addr constant [13 x i8] c"brcmf_usb_tx\00", align 1
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Enter, skb=%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no req to send\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"brcmf_usb_tx usb_submit_urb FAILED\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_tx_complete = private unnamed_addr constant [22 x i8] c"brcmf_usb_tx_complete\00", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enter, urb->status=%d, skb=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_tx_ctlpkt = private unnamed_addr constant [20 x i8] c"brcmf_usb_tx_ctlpkt\00", align 1
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fail %d bytes: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Txctl wait timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_send_ctl = private unnamed_addr constant [19 x i8] c"brcmf_usb_send_ctl\00", align 1
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_submit_urb failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_ctlwrite_complete = private unnamed_addr constant [28 x i8] c"brcmf_usb_ctlwrite_complete\00", align 1
@__func__.brcmf_usb_ctl_complete = private unnamed_addr constant [23 x i8] c"brcmf_usb_ctl_complete\00", align 1
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enter, status=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_rx_ctlpkt = private unnamed_addr constant [20 x i8] c"brcmf_usb_rx_ctlpkt\00", align 1
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxctl wait timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_recv_ctl = private unnamed_addr constant [19 x i8] c"brcmf_usb_recv_ctl\00", align 1
@__func__.brcmf_usb_ctlread_complete = private unnamed_addr constant [27 x i8] c"brcmf_usb_ctlread_complete\00", align 1
@brcmf_usb_fwnames = internal constant { [8 x %struct.brcmf_firmware_mapping], [32 x i8] } { [8 x %struct.brcmf_firmware_mapping] [%struct.brcmf_firmware_mapping { i32 43143, i32 -1, ptr @BRCM_43143_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43235, i32 8, ptr @BRCM_43236B_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43236, i32 8, ptr @BRCM_43236B_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43238, i32 8, ptr @BRCM_43236B_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43242, i32 -1, ptr @BRCM_43242A_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43566, i32 -1, ptr @BRCM_43569_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 43569, i32 -1, ptr @BRCM_43569_FIRMWARE_BASENAME }, %struct.brcmf_firmware_mapping { i32 17267, i32 -1, ptr @BRCM_4373_FIRMWARE_BASENAME }], [32 x i8] zeroinitializer }, align 32
@BRCM_43143_FIRMWARE_BASENAME = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm/brcmfmac43143\00", [45 x i8] zeroinitializer }, align 32
@BRCM_43236B_FIRMWARE_BASENAME = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm/brcmfmac43236b\00", [44 x i8] zeroinitializer }, align 32
@BRCM_43242A_FIRMWARE_BASENAME = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm/brcmfmac43242a\00", [44 x i8] zeroinitializer }, align 32
@BRCM_43569_FIRMWARE_BASENAME = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm/brcmfmac43569\00", [45 x i8] zeroinitializer }, align 32
@BRCM_4373_FIRMWARE_BASENAME = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm/brcmfmac4373\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_dlneeded = private unnamed_addr constant [19 x i8] c"brcmf_usb_dlneeded\00", align 1
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip %x rev 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip %d rev 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware already downloaded\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_dl_cmd = private unnamed_addr constant [17 x i8] c"brcmf_usb_dl_cmd\00", align 1
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".bin\00", [27 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_probe_phase2 = private unnamed_addr constant [23 x i8] c"brcmf_usb_probe_phase2\00", align 1
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Start fw downloading\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed: dev=%s, err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.check_file = private unnamed_addr constant [11 x i8] c"check_file\00", align 1
@__func__.brcmf_usb_fw_download = private unnamed_addr constant [22 x i8] c"brcmf_usb_fw_download\00", align 1
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No firmware!\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_dlstart = private unnamed_addr constant [18 x i8] c"brcmf_usb_dlstart\00", align 1
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Exit, err=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_dl_writeimage = private unnamed_addr constant [24 x i8] c"brcmf_usb_dl_writeimage\00", align 1
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enter, fw %p, len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to DL_START\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_bulk failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DL_GETSTATE Failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bad Hdr or Bad CRC state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_dl_send_bulk = private unnamed_addr constant [23 x i8] c"brcmf_usb_dl_send_bulk\00", align 1
@__func__.brcmf_usb_dlrun = private unnamed_addr constant [16 x i8] c"brcmf_usb_dlrun\00", align 1
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dongle not runnable\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Exit\0A\00", [26 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_resetcfg = private unnamed_addr constant [19 x i8] c"brcmf_usb_resetcfg\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"postboot chip 0x%x/rev 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot talk to Dongle. Firmware is not UP, %d ms\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_detach = private unnamed_addr constant [17 x i8] c"brcmf_usb_detach\00", align 1
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enter, devinfo %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_free_q = private unnamed_addr constant [17 x i8] c"brcmf_usb_free_q\00", align 1
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad req\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_disconnect = private unnamed_addr constant [21 x i8] c"brcmf_usb_disconnect\00", align 1
@__func__.brcmf_usb_disconnect_cb = private unnamed_addr constant [24 x i8] c"brcmf_usb_disconnect_cb\00", align 1
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enter, bus_pub %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.brcmf_usb_suspend = private unnamed_addr constant [18 x i8] c"brcmf_usb_suspend\00", align 1
@__func__.brcmf_usb_resume = private unnamed_addr constant [17 x i8] c"brcmf_usb_resume\00", align 1
@__func__.brcmf_usb_reset_resume = private unnamed_addr constant [23 x i8] c"brcmf_usb_reset_resume\00", align 1
@switch.table.brcmf_usb_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.10, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 224, i64 239, i64 255]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"brcmf_usbdrvr\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1552, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1578, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1582, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1590, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"brcmf_usb_devid_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1536, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1356, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1375, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1384, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1394, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1418, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1423, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1431, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1433, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1435, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1437, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"brcmf_usb_bus_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1177, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1317, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1119, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1122, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1123, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1152, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 455, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 595, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 605, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 608, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 583, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 520, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 627, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 636, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 649, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 498, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 335, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 341, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 270, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 198, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 186, i32 9 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 387, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"brcmf_usb_fwnames\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 44, i32 44 }
@___asan_gen_.189 = private unnamed_addr constant [29 x i8] c"BRCM_43143_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 38, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"BRCM_43236B_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 39, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"BRCM_43242A_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 40, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [29 x i8] c"BRCM_43569_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 41, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"BRCM_4373_FIRMWARE_BASENAME\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 42, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 814, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 816, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 818, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1240, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1198, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1205, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1230, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1040, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 992, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 897, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 913, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 942, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 953, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 962, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1020, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1023, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 850, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 856, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1063, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 473, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1337, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [29 x i8] c"switch.table.brcmf_usb_probe\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @brcmf_usbdrvr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @brcmf_usb_devid_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13, ptr @brcmf_usb_bus_ops, ptr @.str.14, ptr @brcmf_usb_attach.__key, ptr @.str.15, ptr @brcmf_usb_attach.__key.16, ptr @.str.17, ptr @brcmf_usb_attach.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @brcmf_usb_fwnames, ptr @BRCM_43143_FIRMWARE_BASENAME, ptr @BRCM_43236B_FIRMWARE_BASENAME, ptr @BRCM_43242A_FIRMWARE_BASENAME, ptr @BRCM_43569_FIRMWARE_BASENAME, ptr @BRCM_4373_FIRMWARE_BASENAME, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.brcmf_usb_probe], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usbdrvr to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_devid_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_bus_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_attach.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_attach.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_usb_fwnames to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43143_FIRMWARE_BASENAME to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43236B_FIRMWARE_BASENAME to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43242A_FIRMWARE_BASENAME to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_43569_FIRMWARE_BASENAME to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRCM_4373_FIRMWARE_BASENAME to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmf_usb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_usb_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_exit, ptr noundef nonnull @.str) #6
  %call = tail call i32 @driver_for_each_device(ptr noundef getelementptr inbounds (%struct.usb_driver, ptr @brcmf_usbdrvr, i32 0, i32 12), ptr noundef null, ptr noundef null, ptr noundef nonnull @brcmf_usb_reset_device) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_exit, ptr noundef nonnull @.str.1, i32 noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  tail call void @usb_deregister(ptr noundef nonnull @brcmf_usbdrvr) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_reset_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %notused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @brcmf_dev_reset(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_usb_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_register, ptr noundef nonnull @.str) #6
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @brcmf_usbdrvr, ptr noundef null, ptr noundef nonnull @.str.2) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_probe(ptr nocapture noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idVendor, align 2
  %conv = zext i16 %3 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %4 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idProduct, align 4
  %conv1 = zext i16 %5 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 708) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usbdev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %usbdev, align 8
  %dev4 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 20
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %dev4, align 4
  %dev_init_done = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 21
  %9 = ptrtoint ptr %dev_init_done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dev_init_done, align 8
  %wait.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %11 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %bNumConfigurations = getelementptr i8, ptr %1, i32 945
  %12 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp6.not = icmp eq i8 %13, 1
  br i1 %cmp6.not, label %if.end15, label %do.body9

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.4, i32 noundef %conv5) #6
  br label %fail

if.end15:                                         ; preds = %if.end
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %14 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bDeviceClass, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %do.body32 [
    i8 -1, label %if.end15.if.end38_crit_edge
    i8 -17, label %if.end15.if.end38_crit_edge203
    i8 -32, label %if.end15.if.end38_crit_edge204
  ]

if.end15.if.end38_crit_edge204:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end15.if.end38_crit_edge203:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body32:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.5, i32 noundef %conv17) #6
  br label %fail

if.end38:                                         ; preds = %if.end15.if.end38_crit_edge, %if.end15.if.end38_crit_edge203, %if.end15.if.end38_crit_edge204
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %17 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp41.not = icmp eq i8 %20, -1
  br i1 %cmp41.not, label %lor.lhs.false, label %if.end38.do.body51_crit_edge

if.end38.do.body51_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

lor.lhs.false:                                    ; preds = %if.end38
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInterfaceSubClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp44.not = icmp eq i8 %22, 2
  br i1 %cmp44.not, label %lor.lhs.false46, label %lor.lhs.false.do.body51_crit_edge

lor.lhs.false.do.body51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp48.not = icmp eq i8 %24, -1
  br i1 %cmp48.not, label %if.end61, label %lor.lhs.false46.do.body51_crit_edge

lor.lhs.false46.do.body51_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

do.body51:                                        ; preds = %lor.lhs.false46.do.body51_crit_edge, %lor.lhs.false.do.body51_crit_edge, %if.end38.do.body51_crit_edge
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  %25 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber, align 1
  %conv52 = zext i8 %26 to i32
  %conv54 = zext i8 %20 to i32
  %bInterfaceSubClass55 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 6
  %27 = ptrtoint ptr %bInterfaceSubClass55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceSubClass55, align 1
  %conv56 = zext i8 %28 to i32
  %bInterfaceProtocol57 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 7
  %29 = ptrtoint ptr %bInterfaceProtocol57 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceProtocol57, align 1
  %conv58 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.6, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58) #6
  br label %fail

if.end61:                                         ; preds = %lor.lhs.false46
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 4
  %31 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp64201.not = icmp eq i8 %32, 0
  br i1 %cmp64201.not, label %if.end61.for.end_crit_edge, label %for.body.lr.ph

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end61
  %endpoint67 = getelementptr inbounds %struct.usb_host_interface, ptr %18, i32 0, i32 3
  %rx_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 6
  %tx_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 7
  %wide.trip.count = zext i8 %32 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %endpoint67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %endpoint67, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %34, i32 %indvars.iv
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %35 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress.i, align 1
  %37 = and i8 %36, 15
  %and.i = zext i8 %37 to i32
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %38 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bmAttributes.i, align 1
  %40 = and i8 %39, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp.i.not = icmp eq i8 %40, 2
  br i1 %cmp.i.not, label %if.end73, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end73:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool75.not = icmp sgt i8 %36, -1
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end73
  %41 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool77.not = icmp eq i32 %42, 0
  br i1 %tobool77.not, label %if.then78, label %if.then76.for.inc_crit_edge

if.then76.for.inc_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %44, 8
  %shl1.i = shl nuw nsw i32 %and.i, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or81 = or i32 %or.i, -1073741696
  %45 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or81, ptr %rx_pipe, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end73
  %46 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool84.not = icmp eq i32 %47, 0
  br i1 %tobool84.not, label %if.then85, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 8
  %shl.i197 = shl i32 %49, 8
  %shl1.i198 = shl nuw nsw i32 %and.i, 15
  %or.i199 = or i32 %shl1.i198, %shl.i197
  %or88 = or i32 %or.i199, -1073741824
  %50 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or88, ptr %tx_pipe, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then85, %if.else.for.inc_crit_edge, %if.then78, %if.then76.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end61.for.end_crit_edge
  %rx_pipe92 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %rx_pipe92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_pipe92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp93 = icmp eq i32 %52, 0
  br i1 %cmp93, label %do.body96, label %if.end99

do.body96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.7) #6
  br label %fail

if.end99:                                         ; preds = %for.end
  %tx_pipe100 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 7
  %53 = ptrtoint ptr %tx_pipe100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_pipe100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp101 = icmp eq i32 %54, 0
  br i1 %cmp101, label %do.body104, label %if.end107

do.body104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull @.str.8) #6
  br label %fail

if.end107:                                        ; preds = %if.end99
  %bInterfaceNumber108 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  %55 = ptrtoint ptr %bInterfaceNumber108 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterfaceNumber108, align 1
  %ifnum = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %call7.i.i, i32 0, i32 32
  %57 = ptrtoint ptr %ifnum to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %ifnum, align 8
  %speed = getelementptr i8, ptr %1, i32 -100
  %58 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed, align 4
  %switch.tableidx = add i32 %59, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %60 = icmp ult i32 %switch.tableidx, 4
  br i1 %60, label %switch.lookup, label %if.end107.if.end137_crit_edge

if.end107.if.end137_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

switch.lookup:                                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.brcmf_usb_probe, i32 0, i32 %switch.tableidx
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end137

if.end137:                                        ; preds = %switch.lookup, %if.end107.if.end137_crit_edge
  %.str.10.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %if.end107.if.end137_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_probe, ptr noundef nonnull %.str.10.sink) #6
  %call138 = tail call fastcc i32 @brcmf_usb_probe_cb(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end137.cleanup_crit_edge, label %if.end137.fail_crit_edge

if.end137.fail_crit_edge:                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail:                                             ; preds = %if.end137.fail_crit_edge, %do.body104, %do.body96, %do.body51, %do.body32, %do.body9
  %ret.0 = phi i32 [ -19, %do.body9 ], [ -19, %do.body32 ], [ -19, %do.body51 ], [ -19, %do.body96 ], [ -19, %do.body104 ], [ %call138, %if.end137.fail_crit_edge ]
  tail call void @complete(ptr noundef %dev_init_done) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end137.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_disconnect, ptr noundef nonnull @.str) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %if.then

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

if.then:                                          ; preds = %entry
  %dev_init_done = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 21
  tail call void @wait_for_completion(ptr noundef %dev_init_done) #6
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.do.body5_crit_edge, label %brcmf_usb_disconnect_cb.exit

if.then.do.body5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

brcmf_usb_disconnect_cb.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_disconnect_cb, ptr noundef nonnull @.str.58, ptr noundef nonnull %1) #6
  %dev.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void @brcmf_detach(ptr noundef %5) #6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void @brcmf_free(ptr noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %9) #6
  tail call fastcc void @brcmf_usb_detach(ptr noundef nonnull %1) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %do.body5

do.body5:                                         ; preds = %brcmf_usb_disconnect_cb.exit, %if.then.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_disconnect, ptr noundef nonnull @.str.53) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devinfo.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_suspend, ptr noundef nonnull @.str) #6
  %state2 = getelementptr inbounds %struct.brcmf_usbdev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %state2, align 4
  tail call fastcc void @brcmf_cancel_all_urbs(ptr noundef %7)
  %dev3 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %7, i32 0, i32 20
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  %call4 = tail call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devinfo.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_resume, ptr noundef nonnull @.str) #6
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %state, align 4
  tail call fastcc void @brcmf_usb_rx_fill_all(ptr noundef %7)
  %dev2 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %7, i32 0, i32 20
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_reset_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  %fwnames.i = alloca [1 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devinfo.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_reset_resume, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwnames.i) #6
  %8 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames.i, i32 0, i32 1
  %9 = ptrtoint ptr %fwnames.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.41, ptr %fwnames.i, align 4
  %fw_name.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fw_name.i, ptr %8, align 4
  %devid.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devid.i, align 4
  %chiprev.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %7, i32 0, i32 9
  %13 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chiprev.i, align 4
  %call.i = call ptr @brcmf_fw_alloc_request(i32 noundef %12, i32 noundef %14, ptr noundef nonnull @brcmf_usb_fwnames, i32 noundef 8, ptr noundef nonnull %fwnames.i, i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %brcmf_usb_prepare_fw_request.exit.thread, label %if.end

brcmf_usb_prepare_fw_request.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i, i32 1, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames.i) #6
  %call4 = call i32 @brcmf_fw_get_firmwares(ptr noundef %1, ptr noundef nonnull %call.i, ptr noundef nonnull @brcmf_usb_probe_phase2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %brcmf_usb_prepare_fw_request.exit.thread
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ %call4, %if.end.cleanup_crit_edge ], [ -12, %brcmf_usb_prepare_fw_request.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_usb_probe_cb(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  %fwnames.i = alloca [1 x %struct.brcmf_fw_name], align 4
  %id.i = alloca %struct.bootrom_id_le, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 20
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_probe_cb, ptr noundef nonnull @.str) #6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_attach, ptr noundef nonnull @.str) #6
  %nrxq1.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 5
  %2 = ptrtoint ptr %nrxq1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %nrxq1.i, align 4
  %rx_low_watermark.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 8
  %3 = ptrtoint ptr %rx_low_watermark.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 25, ptr %rx_low_watermark.i, align 4
  %devinfo3.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %devinfo, ptr %devinfo3.i, align 4
  %ntxq5.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 4
  %5 = ptrtoint ptr %ntxq5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50, ptr %ntxq5.i, align 4
  %state.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 2
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %tx_low_watermark.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 9
  %7 = ptrtoint ptr %tx_low_watermark.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %tx_low_watermark.i, align 4
  %tx_high_watermark.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 10
  %8 = ptrtoint ptr %tx_high_watermark.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 36, ptr %tx_high_watermark.i, align 4
  %bus_mtu.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 7
  %9 = ptrtoint ptr %bus_mtu.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1600, ptr %bus_mtu.i, align 4
  %ioctl_resp_wait.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 30
  tail call void @__init_waitqueue_head(ptr noundef %ioctl_resp_wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @brcmf_usb_attach.__key) #6
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @brcmf_usb_attach.__key.16, i16 noundef signext 3) #6
  %tx_flowblock_lock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %tx_flowblock_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @brcmf_usb_attach.__key.18, i16 noundef signext 3) #6
  %rx_freeq.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2
  %10 = ptrtoint ptr %rx_freeq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %rx_freeq.i, ptr %rx_freeq.i, align 4
  %prev.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rx_freeq.i, ptr %prev.i.i, align 4
  %rx_postq.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 3
  %12 = ptrtoint ptr %rx_postq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %rx_postq.i, ptr %rx_postq.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rx_postq.i, ptr %prev.i1.i, align 4
  %tx_freeq.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 4
  %14 = ptrtoint ptr %tx_freeq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tx_freeq.i, ptr %tx_freeq.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_freeq.i, ptr %prev.i2.i, align 4
  %tx_postq.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 5
  %16 = ptrtoint ptr %tx_postq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %tx_postq.i, ptr %tx_postq.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_postq.i, ptr %prev.i3.i, align 4
  %tx_flowblock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 12
  %18 = ptrtoint ptr %tx_flowblock.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tx_flowblock.i, align 4
  %call18.i = tail call fastcc ptr @brcmf_usbdev_qinit(ptr noundef %rx_freeq.i) #6
  %rx_reqs.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 15
  %19 = ptrtoint ptr %rx_reqs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18.i, ptr %rx_reqs.i, align 4
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %entry.brcmf_usb_attach.exit.thread_crit_edge, label %if.end.i

entry.brcmf_usb_attach.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_attach.exit.thread

if.end.i:                                         ; preds = %entry
  %call21.i = tail call fastcc ptr @brcmf_usbdev_qinit(ptr noundef %tx_freeq.i) #6
  %tx_reqs.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 14
  %20 = ptrtoint ptr %tx_reqs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21.i, ptr %tx_reqs.i, align 4
  %tobool23.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not.i, label %if.end.i.brcmf_usb_attach.exit.thread_crit_edge, label %if.end25.i

if.end.i.brcmf_usb_attach.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_attach.exit.thread

if.end25.i:                                       ; preds = %if.end.i
  %tx_freecount.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 11
  %21 = ptrtoint ptr %tx_freecount.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50, ptr %tx_freecount.i, align 4
  %call26.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %ctl_urb.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 24
  %22 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26.i, ptr %ctl_urb.i, align 4
  %tobool28.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool28.not.i, label %if.end25.i.brcmf_usb_attach.exit.thread_crit_edge, label %if.end30.i

if.end25.i.brcmf_usb_attach.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_attach.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  %call31.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %bulk_urb.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 33
  %23 = ptrtoint ptr %bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31.i, ptr %bulk_urb.i, align 4
  %tobool33.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool33.not.i, label %if.end30.i.brcmf_usb_attach.exit.thread_crit_edge, label %brcmf_usb_attach.exit

if.end30.i.brcmf_usb_attach.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_attach.exit.thread

brcmf_usb_attach.exit.thread:                     ; preds = %if.end30.i.brcmf_usb_attach.exit.thread_crit_edge, %if.end25.i.brcmf_usb_attach.exit.thread_crit_edge, %if.end.i.brcmf_usb_attach.exit.thread_crit_edge, %entry.brcmf_usb_attach.exit.thread_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_attach, ptr noundef nonnull @.str.20) #6
  tail call fastcc void @brcmf_usb_detach(ptr noundef %devinfo) #6
  br label %cleanup

brcmf_usb_attach.exit:                            ; preds = %if.end30.i
  %tobool.not = icmp eq ptr %devinfo, null
  br i1 %tobool.not, label %brcmf_usb_attach.exit.cleanup_crit_edge, label %if.end

brcmf_usb_attach.exit.cleanup_crit_edge:          ; preds = %brcmf_usb_attach.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %brcmf_usb_attach.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2848, i32 noundef 52) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.fail_crit_edge, label %if.end5

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %dev6, align 8
  %26 = ptrtoint ptr %devinfo to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %devinfo, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %devinfo, ptr %call7.i.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @brcmf_usb_bus_ops, ptr %ops, align 4
  %proto_type = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %proto_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %proto_type, align 4
  %always_use_fws_queue = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %always_use_fws_queue to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %always_use_fws_queue, align 8
  %wowl_supported = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %wowl_supported to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %wowl_supported, align 1
  %33 = load ptr, ptr %dev6, align 8
  %devid = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 8
  %34 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devid, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 9
  %36 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chiprev, align 4
  %call9 = tail call ptr @brcmf_get_module_param(ptr noundef %33, i32 noundef 1, i32 noundef %35, i32 noundef %37) #6
  %settings = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 34
  %38 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9, ptr %settings, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end5.fail_crit_edge, label %if.end13

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end13:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id.i) #6
  %39 = getelementptr inbounds i8, ptr %id.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 255, i32 20)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlneeded, ptr noundef nonnull @.str) #6
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1377959936, ptr %id.i, align 4
  %call.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %devinfo, i8 noundef zeroext 5, ptr noundef nonnull %id.i, i32 noundef 24) #6
  %42 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %39, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %and.i = and i32 %44, 17152
  call void @__sanitizer_cov_trace_const_cmp4(i32 17152, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 17152
  %.str.38..str.39.i = select i1 %cmp3.i, ptr @.str.38, ptr @.str.39
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlneeded, ptr noundef nonnull %.str.38..str.39.i, i32 noundef %44, i32 noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 597753856, i32 %43)
  %cmp12.i = icmp eq i32 %43, 597753856
  br i1 %cmp12.i, label %do.body14.i, label %if.end27

do.body14.i:                                      ; preds = %if.end13
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlneeded, ptr noundef nonnull @.str.40) #6
  %call17.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %devinfo, i8 noundef zeroext 8, ptr noundef nonnull %id.i, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i) #6
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  %50 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %settings, align 4
  %call18 = tail call i32 @brcmf_alloc(ptr noundef %49, ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.body14.i.fail_crit_edge

do.body14.i.fail_crit_edge:                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end21:                                         ; preds = %do.body14.i
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  %call23 = tail call i32 @brcmf_attach(ptr noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.fail_crit_edge

if.end21.fail_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev_init_done = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 21
  tail call void @complete(ptr noundef %dev_init_done) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %54 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %44, ptr %devid, align 4
  %55 = ptrtoint ptr %chiprev to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %47, ptr %chiprev, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i) #6
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %44, ptr %chip, align 8
  %chiprev30 = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %chiprev30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %chiprev30, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwnames.i) #6
  %58 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames.i, i32 0, i32 1
  %59 = ptrtoint ptr %fwnames.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.41, ptr %fwnames.i, align 4
  %fw_name.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 16
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %fw_name.i, ptr %58, align 4
  %call.i87 = call ptr @brcmf_fw_alloc_request(i32 noundef %44, i32 noundef %47, ptr noundef nonnull @brcmf_usb_fwnames, i32 noundef 8, ptr noundef nonnull %fwnames.i, i32 noundef 1) #6
  %tobool.not.i88 = icmp eq ptr %call.i87, null
  br i1 %tobool.not.i88, label %brcmf_usb_prepare_fw_request.exit.thread, label %if.end34

brcmf_usb_prepare_fw_request.exit.thread:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames.i) #6
  br label %fail

if.end34:                                         ; preds = %if.end27
  %type.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %call.i87, i32 1, i32 2
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %type.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames.i) #6
  %call35 = call i32 @brcmf_fw_get_firmwares(ptr noundef %1, ptr noundef nonnull %call.i87, ptr noundef nonnull @brcmf_usb_probe_phase2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %do.body38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe_cb, ptr noundef nonnull @.str.14, i32 noundef %call35) #6
  call void @kfree(ptr noundef nonnull %call.i87) #6
  br label %fail

fail:                                             ; preds = %do.body38, %brcmf_usb_prepare_fw_request.exit.thread, %if.end21.fail_crit_edge, %do.body14.i.fail_crit_edge, %if.end5.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %call35, %do.body38 ], [ %call18, %do.body14.i.fail_crit_edge ], [ %call23, %if.end21.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ], [ -12, %if.end5.fail_crit_edge ], [ -12, %brcmf_usb_prepare_fw_request.exit.thread ]
  %62 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1, align 4
  call void @brcmf_free(ptr noundef %63) #6
  call void @kfree(ptr noundef %call7.i.i) #6
  call fastcc void @brcmf_usb_detach(ptr noundef nonnull %devinfo)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end34.cleanup_crit_edge, %if.end26, %brcmf_usb_attach.exit.cleanup_crit_edge, %brcmf_usb_attach.exit.thread
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end26 ], [ -19, %brcmf_usb_attach.exit.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ -19, %brcmf_usb_attach.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_module_param(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fw_get_firmwares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_probe_phase2(ptr noundef %dev, i32 noundef %ret, ptr noundef %fwreq) #0 align 64 {
entry:
  %id.i.i.i = alloca %struct.bootrom_id_le, align 4
  %state.i.i = alloca %struct.rdl_state_le, align 4
  %state.i.i.i = alloca %struct.rdl_state_le, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool.not = icmp eq i32 %ret, 0
  br i1 %tobool.not, label %do.body, label %entry.do.body23_crit_edge

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

do.body:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_probe_phase2, ptr noundef nonnull @.str.42) #6
  %6 = getelementptr inbounds %struct.brcmf_fw_request, ptr %fwreq, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %fwreq) #6
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.check_file, ptr noundef nonnull @.str) #6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1212437040, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 1212437040
  br i1 %cmp.not.i, label %if.end.i, label %do.body.do.body4_crit_edge

do.body.do.body4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

if.end.i:                                         ; preds = %do.body
  %flag_version.i = getelementptr inbounds %struct.trx_header_le, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %flag_version.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag_version.i, align 4
  %15 = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i.do.body4_crit_edge, label %check_file.exit

if.end.i.do.body4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

check_file.exit:                                  ; preds = %if.end.i
  %offsets.i = getelementptr inbounds %struct.trx_header_le, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %add.i = add i32 %18, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %check_file.exit.do.body4_crit_edge, label %if.end7

check_file.exit.do.body4_crit_edge:               ; preds = %check_file.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.body4:                                         ; preds = %check_file.exit.do.body4_crit_edge, %if.end.i.do.body4_crit_edge, %do.body.do.body4_crit_edge
  %retval.0.i56 = phi i32 [ %add.i, %check_file.exit.do.body4_crit_edge ], [ -1, %do.body.do.body4_crit_edge ], [ -1, %if.end.i.do.body4_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_probe_phase2, ptr noundef nonnull @.str.43) #6
  br label %do.body23.sink.split

if.end7:                                          ; preds = %check_file.exit
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %image = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 17
  %21 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %image, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  %image_len = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 18
  %24 = ptrtoint ptr %image_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %image_len, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_fw_download, ptr noundef nonnull @.str) #6
  %tobool.not.i49 = icmp eq ptr %5, null
  br i1 %tobool.not.i49, label %if.end7.do.body23.sink.split_crit_edge, label %if.end.i50

if.end7.do.body23.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.sink.split

if.end.i50:                                       ; preds = %if.end7
  %25 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %image, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %do.body3.i, label %if.end6.i

do.body3.i:                                       ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_fw_download, ptr noundef nonnull @.str.45) #6
  br label %do.body23.sink.split

if.end6.i:                                        ; preds = %if.end.i50
  %dev.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 20
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 -32
  %call.i = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.i, label %if.end6.i.do.body23.sink.split_crit_edge

if.end6.i.do.body23.sink.split_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.sink.split

if.end.i.i:                                       ; preds = %if.end6.i
  %29 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %image, align 4
  %31 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %image_len, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlstart, ptr noundef nonnull @.str) #6
  %devid.i.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 8
  %33 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %34)
  %cmp1.i.i = icmp eq i32 %34, 57005
  br i1 %cmp1.i.i, label %if.end.i.i.brcmf_usb_fw_download.exit_crit_edge, label %if.end3.i.i

if.end.i.i.brcmf_usb_fw_download.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_fw_download.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.i.i.i) #6
  %35 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %state.i.i.i, align 4, !annotation !210
  %36 = getelementptr inbounds %struct.rdl_state_le, ptr %state.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4, !annotation !210
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.47, ptr noundef %30, i32 noundef %32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 2592, i32 noundef 1500) #9
  %cmp.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i.i, label %if.end3.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge, label %if.end.i.i.i

if.end3.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_dl_writeimage.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  %call1.i.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 3, ptr noundef nonnull %state.i.i.i, i32 noundef 8) #6
  %39 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp3.not.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp3.not.i.i.i, label %if.end8.i.i.i, label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.48) #6
  br label %brcmf_usb_dl_writeimage.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %36, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %bulk_urb.i.i.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 33
  %usbdev.i.i.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 19
  %tx_pipe.i.i.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 7
  %ctl_completed.i.i.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 29
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge, %if.end8.i.i.i
  %sent.0.i.i.i = phi i32 [ 0, %if.end8.i.i.i ], [ %sent.1.i.i.i, %lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge ]
  %dlpos.0.i.i.i = phi ptr [ %30, %if.end8.i.i.i ], [ %dlpos.1.i.i.i, %lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge ]
  %rdlbytes.0.i.i.i = phi i32 [ %43, %if.end8.i.i.i ], [ %68, %lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rdlbytes.0.i.i.i, i32 %32)
  %cmp9.not.i.i.i = icmp eq i32 %rdlbytes.0.i.i.i, %32
  br i1 %cmp9.not.i.i.i, label %while.cond.i.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_dl_writeimage.exit.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rdlbytes.0.i.i.i, i32 %sent.0.i.i.i)
  %cmp10.i.i.i = icmp eq i32 %rdlbytes.0.i.i.i, %sent.0.i.i.i
  br i1 %cmp10.i.i.i, label %lor.lhs.false.i.i.i.i, label %while.body.i.i.i.if.end27.i.i.i_crit_edge

while.body.i.i.i.if.end27.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %while.body.i.i.i
  %sub.i.i.i = sub i32 %32, %sent.0.i.i.i
  %44 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 1500) #6
  %rem.i.i.i = and i32 %44, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  %sub18.i.i.i = add nsw i32 %44, -4
  %sendlen.1.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub18.i.i.i, i32 %44
  %45 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %dlpos.0.i.i.i, i32 %sendlen.1.i.i.i)
  %46 = ptrtoint ptr %bulk_urb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bulk_urb.i.i.i.i, align 4
  %cmp1.i.i.i.i = icmp eq ptr %47, null
  br i1 %cmp1.i.i.i.i, label %lor.lhs.false.i.i.i.i.do.body23.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false.i.i.i.i.do.body23.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  %48 = ptrtoint ptr %usbdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usbdev.i.i.i.i, align 4
  %50 = ptrtoint ptr %tx_pipe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_pipe.i.i.i.i, align 4
  %dev1.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %dev1.i.i.i.i.i, align 4
  %pipe2.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %pipe2.i.i.i.i.i, align 4
  %transfer_buffer3.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i.i, ptr %transfer_buffer3.i.i.i.i.i, align 4
  %transfer_buffer_length.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sendlen.1.i.i.i, ptr %transfer_buffer_length.i.i.i.i.i, align 4
  %complete.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 28
  %56 = ptrtoint ptr %complete.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @brcmf_usb_sync_complete, ptr %complete.i.i.i.i.i, align 4
  %context4.i.i.i.i.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 27
  %57 = ptrtoint ptr %context4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %5, ptr %context4.i.i.i.i.i, align 4
  %58 = ptrtoint ptr %bulk_urb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bulk_urb.i.i.i.i, align 4
  %transfer_flags.i.i.i.i = getelementptr inbounds %struct.urb, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %transfer_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %transfer_flags.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %61, 64
  store i32 %or.i.i.i.i, ptr %transfer_flags.i.i.i.i, align 4
  %62 = ptrtoint ptr %ctl_completed.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %ctl_completed.i.i.i.i, align 4
  %63 = load ptr, ptr %bulk_urb.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %brcmf_usb_dl_send_bulk.exit.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_send_bulk, ptr noundef nonnull @.str.34, i32 noundef %call.i.i.i.i) #6
  br label %do.body23.i.i.i

brcmf_usb_dl_send_bulk.exit.i.i.i:                ; preds = %if.end.i.i.i.i
  %call7.i73.i.i.i = tail call fastcc i32 @brcmf_usb_ioctl_resp_wait(ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i73.i.i.i)
  %cmp8.i.not.i.i.i = icmp eq i32 %call7.i73.i.i.i, 0
  br i1 %cmp8.i.not.i.i.i, label %brcmf_usb_dl_send_bulk.exit.i.i.i.do.body23.i.i.i_crit_edge, label %if.end26.i.i.i

brcmf_usb_dl_send_bulk.exit.i.i.i.do.body23.i.i.i_crit_edge: ; preds = %brcmf_usb_dl_send_bulk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.i.i.i

do.body23.i.i.i:                                  ; preds = %brcmf_usb_dl_send_bulk.exit.i.i.i.do.body23.i.i.i_crit_edge, %do.body.i.i.i.i, %lor.lhs.false.i.i.i.i.do.body23.i.i.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.49) #6
  br label %brcmf_usb_dl_writeimage.exit.i.i

if.end26.i.i.i:                                   ; preds = %brcmf_usb_dl_send_bulk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %dlpos.0.i.i.i, i32 %sendlen.1.i.i.i
  %add.i.i.i = add i32 %sendlen.1.i.i.i, %sent.0.i.i.i
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end26.i.i.i, %while.body.i.i.i.if.end27.i.i.i_crit_edge
  %sent.1.i.i.i = phi i32 [ %add.i.i.i, %if.end26.i.i.i ], [ %sent.0.i.i.i, %while.body.i.i.i.if.end27.i.i.i_crit_edge ]
  %dlpos.1.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end26.i.i.i ], [ %dlpos.0.i.i.i, %while.body.i.i.i.if.end27.i.i.i_crit_edge ]
  %call28.i.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %state.i.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.end34.i.i.i, label %do.body31.i.i.i

do.body31.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.50) #6
  br label %brcmf_usb_dl_writeimage.exit.i.i

if.end34.i.i.i:                                   ; preds = %if.end27.i.i.i
  %64 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %65)
  %cmp37.i.i.i = icmp eq i32 %65, 33554432
  br i1 %cmp37.i.i.i, label %if.end34.i.i.i.do.body40.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end34.i.i.i.do.body40.i.i.i_crit_edge:         ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end34.i.i.i
  %66 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %36, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %cmp38.i.i.i = icmp eq i32 %65, 50331648
  br i1 %cmp38.i.i.i, label %lor.lhs.false.i.i.i.do.body40.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge

lor.lhs.false.i.i.i.while.cond.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

lor.lhs.false.i.i.i.do.body40.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40.i.i.i

do.body40.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.do.body40.i.i.i_crit_edge, %if.end34.i.i.i.do.body40.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ 2, %if.end34.i.i.i.do.body40.i.i.i_crit_edge ], [ 3, %lor.lhs.false.i.i.i.do.body40.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.51, i32 noundef %.lcssa.i.i.i) #6
  br label %brcmf_usb_dl_writeimage.exit.i.i

brcmf_usb_dl_writeimage.exit.i.i:                 ; preds = %do.body40.i.i.i, %do.body31.i.i.i, %do.body23.i.i.i, %while.cond.i.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge, %do.body5.i.i.i, %if.end3.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge
  %err.1.i.i.i = phi i32 [ -22, %do.body5.i.i.i ], [ -22, %do.body23.i.i.i ], [ %call28.i.i.i, %do.body31.i.i.i ], [ -22, %do.body40.i.i.i ], [ -12, %if.end3.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge ], [ 0, %while.cond.i.i.i.brcmf_usb_dl_writeimage.exit.i.i_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dl_writeimage, ptr noundef nonnull @.str.46, i32 noundef %err.1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i.i)
  %cmp4.i.i = icmp eq i32 %err.1.i.i.i, 0
  %69 = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  br i1 %cmp4.i.i, label %if.end.i26.i, label %brcmf_usb_dlstart.exit.i

brcmf_usb_dlstart.exit.i:                         ; preds = %brcmf_usb_dl_writeimage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %69, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlstart, ptr noundef nonnull @.str.46, i32 noundef %err.1.i.i.i) #6
  br label %brcmf_usb_fw_download.exit

if.end.i26.i:                                     ; preds = %brcmf_usb_dl_writeimage.exit.i.i
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %69, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlstart, ptr noundef nonnull @.str.46, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.i.i) #6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlrun, ptr noundef nonnull @.str) #6
  %72 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %73)
  %cmp.i25.i = icmp eq i32 %73, 57005
  br i1 %cmp.i25.i, label %if.end.i26.i.brcmf_usb_dlrun.exit.i_crit_edge, label %if.end2.i.i

if.end.i26.i.brcmf_usb_dlrun.exit.i_crit_edge:    ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_dlrun.exit.i

if.end2.i.i:                                      ; preds = %if.end.i26.i
  %74 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %state.i.i, align 4
  %call.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %state.i.i, i32 noundef 8) #6
  %75 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %76)
  %cmp5.i.i = icmp eq i32 %76, 67108864
  br i1 %cmp5.i.i, label %if.then6.i.i, label %do.body15.i.i

if.then6.i.i:                                     ; preds = %if.end2.i.i
  %call7.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 2, ptr noundef nonnull %state.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then6.i.i.brcmf_usb_dlrun.exit.i_crit_edge

if.then6.i.i.brcmf_usb_dlrun.exit.i_crit_edge:    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_dlrun.exit.i

if.end10.i.i:                                     ; preds = %if.then6.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %id.i.i.i) #6
  %77 = getelementptr inbounds %struct.bootrom_id_le, ptr %id.i.i.i, i32 0, i32 1
  %78 = call ptr @memset(ptr %77, i32 255, i32 20)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_resetcfg, ptr noundef nonnull @.str) #6
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.end.i.i29.i.do.body1.i.i.i_crit_edge, %if.end10.i.i
  %loop_cnt.0.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i, %if.end.i.i29.i.do.body1.i.i.i_crit_edge ]
  br label %while.body.i.i28.i

while.body.i.i28.i:                               ; preds = %while.body.i.i28.i.while.body.i.i28.i_crit_edge, %do.body1.i.i.i
  %__ms.030.i.i.i = phi i32 [ 100, %do.body1.i.i.i ], [ %dec.i.i.i, %while.body.i.i28.i.while.body.i.i28.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %__ms.030.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  %tobool.not.i.i27.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i27.i, label %while.end.i.i.i, label %while.body.i.i28.i.while.body.i.i28.i_crit_edge

while.body.i.i28.i.while.body.i.i28.i_crit_edge:  ; preds = %while.body.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i28.i

while.end.i.i.i:                                  ; preds = %while.body.i.i28.i
  %80 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1377959936, ptr %id.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 5, ptr noundef nonnull %id.i.i.i, i32 noundef 24) #6
  %81 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call.i.i.i, label %brcmf_usb_resetcfg.exit.i.i [
    i32 0, label %while.end.i.i.i.if.end.i.i29.i_crit_edge
    i32 -110, label %while.end.i.i.i.if.end.i.i29.i_crit_edge65
  ]

while.end.i.i.i.if.end.i.i29.i_crit_edge65:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i29.i

while.end.i.i.i.if.end.i.i29.i_crit_edge:         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i29.i

if.end.i.i29.i:                                   ; preds = %while.end.i.i.i.if.end.i.i29.i_crit_edge, %while.end.i.i.i.if.end.i.i29.i_crit_edge65
  %inc.i.i.i = add nuw nsw i32 %loop_cnt.0.i.i.i, 1
  %82 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 597753856, i32 %83)
  %cmp4.i.i.i = icmp ne i32 %83, 597753856
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %loop_cnt.0.i.i.i)
  %cmp8.i.i.i = icmp ult i32 %loop_cnt.0.i.i.i, 9
  %or.cond.i.i.i = select i1 %cmp4.i.i.i, i1 %cmp8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i29.i.do.body1.i.i.i_crit_edge, label %do.end9.i.i.i

if.end.i.i29.i.do.body1.i.i.i_crit_edge:          ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 597753856, i32 %83)
  %cmp11.i.i.i = icmp eq i32 %83, 597753856
  br i1 %cmp11.i.i.i, label %brcmf_usb_resetcfg.exit.thread.i.i, label %brcmf_usb_resetcfg.exit.thread28.i.i

brcmf_usb_resetcfg.exit.thread.i.i:               ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %77, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_resetcfg, ptr noundef nonnull @.str.54, i32 noundef 41251, i32 noundef %86) #6
  %call17.i.i.i = call fastcc i32 @brcmf_usb_dl_cmd(ptr noundef nonnull %5, i8 noundef zeroext 8, ptr noundef nonnull %id.i.i.i, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i.i.i) #6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_dlrun, ptr noundef nonnull @.str.53) #6
  br label %brcmf_usb_dlrun.exit.i

brcmf_usb_resetcfg.exit.thread28.i.i:             ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i.i = mul i32 %inc.i.i.i, 100
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_resetcfg, ptr noundef nonnull @.str.55, i32 noundef %mul.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i.i.i) #6
  br label %brcmf_usb_dlrun.exit.i

brcmf_usb_resetcfg.exit.i.i:                      ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %id.i.i.i) #6
  br label %brcmf_usb_dlrun.exit.i

do.body15.i.i:                                    ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dlrun, ptr noundef nonnull @.str.52) #6
  br label %brcmf_usb_dlrun.exit.i

brcmf_usb_dlrun.exit.i:                           ; preds = %do.body15.i.i, %brcmf_usb_resetcfg.exit.i.i, %brcmf_usb_resetcfg.exit.thread28.i.i, %brcmf_usb_resetcfg.exit.thread.i.i, %if.then6.i.i.brcmf_usb_dlrun.exit.i_crit_edge, %if.end.i26.i.brcmf_usb_dlrun.exit.i_crit_edge
  %retval.0.i30.i = phi i32 [ 0, %brcmf_usb_resetcfg.exit.thread.i.i ], [ -22, %do.body15.i.i ], [ -22, %if.end.i26.i.brcmf_usb_dlrun.exit.i_crit_edge ], [ -19, %if.then6.i.i.brcmf_usb_dlrun.exit.i_crit_edge ], [ -19, %brcmf_usb_resetcfg.exit.i.i ], [ -19, %brcmf_usb_resetcfg.exit.thread28.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.i.i) #6
  br label %brcmf_usb_fw_download.exit

brcmf_usb_fw_download.exit:                       ; preds = %brcmf_usb_dlrun.exit.i, %brcmf_usb_dlstart.exit.i, %if.end.i.i.brcmf_usb_fw_download.exit_crit_edge
  %err.0.i = phi i32 [ %retval.0.i30.i, %brcmf_usb_dlrun.exit.i ], [ %err.1.i.i.i, %brcmf_usb_dlstart.exit.i ], [ -22, %if.end.i.i.brcmf_usb_fw_download.exit_crit_edge ]
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr.i) #6
  tail call void @release_firmware(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool10.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool10.not, label %if.end12, label %brcmf_usb_fw_download.exit.do.body23_crit_edge

brcmf_usb_fw_download.exit.do.body23_crit_edge:   ; preds = %brcmf_usb_fw_download.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.end12:                                         ; preds = %brcmf_usb_fw_download.exit
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  %settings = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 34
  %89 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %settings, align 4
  %call14 = tail call i32 @brcmf_alloc(ptr noundef %88, ptr noundef %90) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.body23_crit_edge

if.end12.do.body23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.end17:                                         ; preds = %if.end12
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %call19 = tail call i32 @brcmf_attach(ptr noundef %92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.body23_crit_edge

if.end17.do.body23_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev_init_done = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 21
  tail call void @complete(ptr noundef %dev_init_done) #6
  br label %cleanup

do.body23.sink.split:                             ; preds = %if.end6.i.do.body23.sink.split_crit_edge, %do.body3.i, %if.end7.do.body23.sink.split_crit_edge, %do.body4
  %ret.addr.0.ph = phi i32 [ %retval.0.i56, %do.body4 ], [ -19, %if.end7.do.body23.sink.split_crit_edge ], [ -2, %do.body3.i ], [ %call.i, %if.end6.i.do.body23.sink.split_crit_edge ]
  tail call void @release_firmware(ptr noundef %8) #6
  br label %do.body23

do.body23:                                        ; preds = %do.body23.sink.split, %if.end17.do.body23_crit_edge, %if.end12.do.body23_crit_edge, %brcmf_usb_fw_download.exit.do.body23_crit_edge, %entry.do.body23_crit_edge
  %ret.addr.0 = phi i32 [ %ret, %entry.do.body23_crit_edge ], [ %err.0.i, %brcmf_usb_fw_download.exit.do.body23_crit_edge ], [ %call14, %if.end12.do.body23_crit_edge ], [ %call19, %if.end17.do.body23_crit_edge ], [ %ret.addr.0.ph, %do.body23.sink.split ]
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i51 = icmp eq ptr %94, null
  br i1 %tobool.not.i51, label %if.end.i52, label %do.body23.dev_name.exit_crit_edge

do.body23.dev_name.exit_crit_edge:                ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i52:                                       ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i52, %do.body23.dev_name.exit_crit_edge
  %retval.0.i53 = phi ptr [ %96, %if.end.i52 ], [ %94, %do.body23.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_usb_probe_phase2, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i53, i32 noundef %ret.addr.0) #6
  %dev_init_done27 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 21
  tail call void @complete(ptr noundef %dev_init_done27) #6
  tail call void @device_release_driver(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_usb_detach(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_detach, ptr noundef nonnull @.str.56, ptr noundef %devinfo) #6
  %rx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %rx_freeq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_freeq, align 4
  %cmp.not21.i = icmp eq ptr %1, %rx_freeq
  br i1 %cmp.not21.i, label %entry.brcmf_usb_free_q.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.brcmf_usb_free_q.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_free_q.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %req.022.i = phi ptr [ %next.024.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %req.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.024.i = load ptr, ptr %req.022.i, align 4
  %urb.i = getelementptr inbounds %struct.brcmf_usbreq, ptr %req.022.i, i32 0, i32 2
  %3 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_free_q, ptr noundef nonnull @.str.57) #6
  br label %brcmf_usb_free_q.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @usb_free_urb(ptr noundef nonnull %4) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.022.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.022.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %req.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %req.022.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %req.022.i, ptr %req.022.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %req.022.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req.022.i, ptr %prev.i3.i.i, align 4
  %cmp.not.i = icmp eq ptr %next.024.i, %rx_freeq
  br i1 %cmp.not.i, label %list_del_init.exit.i.brcmf_usb_free_q.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del_init.exit.i.brcmf_usb_free_q.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_free_q.exit

brcmf_usb_free_q.exit:                            ; preds = %list_del_init.exit.i.brcmf_usb_free_q.exit_crit_edge, %do.body.i, %entry.brcmf_usb_free_q.exit_crit_edge
  %tx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 4
  %13 = ptrtoint ptr %tx_freeq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_freeq, align 4
  %cmp.not21.i10 = icmp eq ptr %14, %tx_freeq
  br i1 %cmp.not21.i10, label %brcmf_usb_free_q.exit.brcmf_usb_free_q.exit25_crit_edge, label %brcmf_usb_free_q.exit.for.body.i15_crit_edge

brcmf_usb_free_q.exit.for.body.i15_crit_edge:     ; preds = %brcmf_usb_free_q.exit
  br label %for.body.i15

brcmf_usb_free_q.exit.brcmf_usb_free_q.exit25_crit_edge: ; preds = %brcmf_usb_free_q.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_free_q.exit25

for.body.i15:                                     ; preds = %list_del_init.exit.i24.for.body.i15_crit_edge, %brcmf_usb_free_q.exit.for.body.i15_crit_edge
  %req.022.i11 = phi ptr [ %next.024.i12, %list_del_init.exit.i24.for.body.i15_crit_edge ], [ %14, %brcmf_usb_free_q.exit.for.body.i15_crit_edge ]
  %15 = ptrtoint ptr %req.022.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %next.024.i12 = load ptr, ptr %req.022.i11, align 4
  %urb.i13 = getelementptr inbounds %struct.brcmf_usbreq, ptr %req.022.i11, i32 0, i32 2
  %16 = ptrtoint ptr %urb.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i13, align 4
  %tobool.not.i14 = icmp eq ptr %17, null
  br i1 %tobool.not.i14, label %do.body.i16, label %if.end.i18

do.body.i16:                                      ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_free_q, ptr noundef nonnull @.str.57) #6
  br label %brcmf_usb_free_q.exit25

if.end.i18:                                       ; preds = %for.body.i15
  tail call void @usb_free_urb(ptr noundef nonnull %17) #6
  %call.i.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.022.i11) #6
  br i1 %call.i.i.i17, label %if.end.i.i.i21, label %if.end.i18.list_del_init.exit.i24_crit_edge

if.end.i18.list_del_init.exit.i24_crit_edge:      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i24

if.end.i.i.i21:                                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %req.022.i11, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i19, align 4
  %20 = ptrtoint ptr %req.022.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req.022.i11, align 4
  %prev1.i.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i20, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i24

list_del_init.exit.i24:                           ; preds = %if.end.i.i.i21, %if.end.i18.list_del_init.exit.i24_crit_edge
  %24 = ptrtoint ptr %req.022.i11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %req.022.i11, ptr %req.022.i11, align 4
  %prev.i3.i.i22 = getelementptr inbounds %struct.list_head, ptr %req.022.i11, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req.022.i11, ptr %prev.i3.i.i22, align 4
  %cmp.not.i23 = icmp eq ptr %next.024.i12, %tx_freeq
  br i1 %cmp.not.i23, label %list_del_init.exit.i24.brcmf_usb_free_q.exit25_crit_edge, label %list_del_init.exit.i24.for.body.i15_crit_edge

list_del_init.exit.i24.for.body.i15_crit_edge:    ; preds = %list_del_init.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i15

list_del_init.exit.i24.brcmf_usb_free_q.exit25_crit_edge: ; preds = %list_del_init.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_free_q.exit25

brcmf_usb_free_q.exit25:                          ; preds = %list_del_init.exit.i24.brcmf_usb_free_q.exit25_crit_edge, %do.body.i16, %brcmf_usb_free_q.exit.brcmf_usb_free_q.exit25_crit_edge
  %ctl_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 24
  %26 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl_urb, align 4
  tail call void @usb_free_urb(ptr noundef %27) #6
  %bulk_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 33
  %28 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bulk_urb, align 4
  tail call void @usb_free_urb(ptr noundef %29) #6
  %tx_reqs = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 14
  %30 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_reqs, align 4
  tail call void @kfree(ptr noundef %31) #6
  %rx_reqs = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 15
  %32 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_reqs, align 4
  tail call void @kfree(ptr noundef %33) #6
  %settings = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 34
  %34 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %settings, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %brcmf_usb_free_q.exit25.if.end_crit_edge, label %if.then

brcmf_usb_free_q.exit25.if.end_crit_edge:         ; preds = %brcmf_usb_free_q.exit25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %brcmf_usb_free_q.exit25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @brcmf_release_module_param(ptr noundef nonnull %35) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %brcmf_usb_free_q.exit25.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_usbdev_qinit(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 1000) #9
  %cmp = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %prev.i1 = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader
  %i.07 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %req.05 = phi ptr [ %call7.i.i.i, %for.cond.preheader ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %urb = getelementptr inbounds %struct.brcmf_usbreq, ptr %req.05, i32 0, i32 2
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %urb, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %if.end5

if.end5:                                          ; preds = %for.body
  %2 = ptrtoint ptr %req.05 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %req.05, ptr %req.05, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.05, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req.05, ptr %prev.i, align 4
  %4 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.05, ptr noundef %5, ptr noundef %q) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req.05, ptr %prev.i1, align 4
  %7 = ptrtoint ptr %req.05 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %q, ptr %req.05, align 4
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %req.05, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.brcmf_usbreq, ptr %req.05, i32 1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.body
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usbdev_qinit, ptr noundef nonnull @.str.21) #6
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %q, align 4
  %cmp.i.not8 = icmp eq ptr %11, %q
  br i1 %cmp.i.not8, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body.while.body_crit_edge
  %12 = phi ptr [ %26, %list_del.exit.while.body_crit_edge ], [ %11, %do.body.while.body_crit_edge ]
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %while.body.if.end12_crit_edge, label %if.then10

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %urb11 = getelementptr inbounds %struct.brcmf_usbreq, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %urb11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb11, align 4
  tail call void @usb_free_urb(ptr noundef %14) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %while.body.if.end12_crit_edge
  %15 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q, align 4
  %call.i.i2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #6
  br i1 %call.i.i2, label %if.end.i.i3, label %if.end12.list_del.exit_crit_edge

if.end12.list_del.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i3:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i3, %if.end12.list_del.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i4 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i4, align 4
  %25 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %26, %q
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i.i, %list_add_tail.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_up(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_up, ptr noundef nonnull @.str) #6
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_state_change, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef 3) #6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.end.brcmf_usb_state_change.exit_crit_edge, label %if.end.i

if.end.brcmf_usb_state_change.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_state_change.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_state_change, ptr noundef nonnull @.str.24) #6
  tail call void @brcmf_bus_change_state(ptr noundef %9, i32 noundef 1) #6
  br label %brcmf_usb_state_change.exit

brcmf_usb_state_change.exit:                      ; preds = %if.end.i, %if.end.brcmf_usb_state_change.exit_crit_edge
  %ctl_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 24
  %13 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl_urb, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %brcmf_usb_state_change.exit.if.end19_crit_edge, label %if.then1

brcmf_usb_state_change.exit.if.end19_crit_edge:   ; preds = %brcmf_usb_state_change.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then1:                                         ; preds = %brcmf_usb_state_change.exit
  call void @__sanitizer_cov_trace_pc() #8
  %usbdev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usbdev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i = shl i32 %18, 8
  %or3 = or i32 %shl.i, -2147483520
  %ctl_in_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 22
  %19 = ptrtoint ptr %ctl_in_pipe to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or3, ptr %ctl_in_pipe, align 4
  %20 = load i32, ptr %16, align 8
  %shl.i37 = shl i32 %20, 8
  %or6 = or i32 %shl.i37, -2147483648
  %ctl_out_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 23
  %21 = ptrtoint ptr %ctl_out_pipe to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or6, ptr %ctl_out_pipe, align 4
  %ctl_write = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25
  %22 = ptrtoint ptr %ctl_write to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 33, ptr %ctl_write, align 4
  %bRequest = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25, i32 1
  %23 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25, i32 2
  %24 = ptrtoint ptr %wValue to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %wValue, align 2
  %ifnum = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 32
  %25 = ptrtoint ptr %ifnum to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ifnum, align 4
  %conv = zext i8 %26 to i16
  %27 = shl nuw i16 %conv, 8
  %wIndex = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25, i32 3
  %28 = ptrtoint ptr %wIndex to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %wIndex, align 4
  %ctl_read = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26
  %29 = ptrtoint ptr %ctl_read to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -95, ptr %ctl_read, align 4
  %bRequest12 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26, i32 1
  %30 = ptrtoint ptr %bRequest12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bRequest12, align 1
  %wValue14 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26, i32 2
  %31 = ptrtoint ptr %wValue14 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %wValue14, align 2
  %wIndex18 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26, i32 3
  %32 = ptrtoint ptr %wIndex18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %27, ptr %wIndex18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then1, %brcmf_usb_state_change.exit.if.end19_crit_edge
  tail call fastcc void @brcmf_usb_rx_fill_all(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_down(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_down, ptr noundef nonnull @.str) #6
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_state_change, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef 0) #6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.end3.brcmf_usb_state_change.exit_crit_edge, label %if.end.i

if.end3.brcmf_usb_state_change.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_state_change.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_state_change, ptr noundef nonnull @.str.23) #6
  tail call void @brcmf_bus_change_state(ptr noundef %9, i32 noundef 0) #6
  br label %brcmf_usb_state_change.exit

brcmf_usb_state_change.exit:                      ; preds = %if.end.i, %if.end3.brcmf_usb_state_change.exit_crit_edge
  tail call fastcc void @brcmf_cancel_all_urbs(ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %brcmf_usb_state_change.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_tx(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_tx, ptr noundef nonnull @.str.28, ptr noundef %skb) #6
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end3, label %do.body.fail_crit_edge

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end3:                                          ; preds = %do.body
  %tx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 4
  %tx_freecount = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 11
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %8 = ptrtoint ptr %tx_freeq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_freeq, align 4
  %cmp.i.not.i = icmp eq ptr %9, %tx_freeq
  br i1 %cmp.i.not.i, label %brcmf_usb_deq.exit.thread, label %if.end.i

brcmf_usb_deq.exit.thread:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #6
  br label %do.body7

if.end.i:                                         ; preds = %if.end3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i, align 4
  %tobool9.not.i = icmp eq ptr %tx_freecount, null
  br i1 %tobool9.not.i, label %list_del_init.exit.i.brcmf_usb_deq.exit_crit_edge, label %if.then10.i

list_del_init.exit.i.brcmf_usb_deq.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_deq.exit

if.then10.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %tx_freecount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_freecount, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %tx_freecount, align 4
  br label %brcmf_usb_deq.exit

brcmf_usb_deq.exit:                               ; preds = %if.then10.i, %list_del_init.exit.i.brcmf_usb_deq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #6
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %brcmf_usb_deq.exit.do.body7_crit_edge, label %if.end10

brcmf_usb_deq.exit.do.body7_crit_edge:            ; preds = %brcmf_usb_deq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %brcmf_usb_deq.exit.do.body7_crit_edge, %brcmf_usb_deq.exit.thread
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_tx, ptr noundef nonnull @.str.29) #6
  br label %fail

if.end10:                                         ; preds = %brcmf_usb_deq.exit
  %skb11 = getelementptr inbounds %struct.brcmf_usbreq, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %skb11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %skb11, align 4
  %devinfo12 = getelementptr inbounds %struct.brcmf_usbreq, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %devinfo12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %devinfo12, align 4
  %urb = getelementptr inbounds %struct.brcmf_usbreq, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb, align 4
  %usbdev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 19
  %24 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usbdev, align 4
  %tx_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_pipe, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %25, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %33 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %27, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @brcmf_usb_tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 27
  %37 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %9, ptr %context4.i, align 4
  %38 = load ptr, ptr %urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transfer_flags, align 4
  %or = or i32 %40, 64
  store i32 %or, ptr %transfer_flags, align 4
  %tx_postq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 5
  %call2.i80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %9, ptr noundef %42, ptr noundef %tx_postq) #6
  br i1 %call.i.i.i81, label %if.end.i.i.i82, label %if.end10.brcmf_usb_enq.exit_crit_edge

if.end10.brcmf_usb_enq.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit

if.end.i.i.i82:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %9, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tx_postq, ptr %9, align 4
  %45 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %9, ptr %42, align 4
  br label %brcmf_usb_enq.exit

brcmf_usb_enq.exit:                               ; preds = %if.end.i.i.i82, %if.end10.brcmf_usb_enq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i80) #6
  %47 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %48, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body26, label %do.body18

do.body18:                                        ; preds = %brcmf_usb_enq.exit
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_tx, ptr noundef nonnull @.str.30) #6
  %call2.i85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %call.i.i.i86 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %9) #6
  br i1 %call.i.i.i86, label %if.end.i.i.i89, label %do.body18.brcmf_usb_del_fromq.exit_crit_edge

do.body18.brcmf_usb_del_fromq.exit_crit_edge:     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_del_fromq.exit

if.end.i.i.i89:                                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i3.i.i, align 4
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i88, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %brcmf_usb_del_fromq.exit

brcmf_usb_del_fromq.exit:                         ; preds = %if.end.i.i.i89, %do.body18.brcmf_usb_del_fromq.exit_crit_edge
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %9, ptr %9, align 4
  %56 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %9, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i85) #6
  %57 = ptrtoint ptr %skb11 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %skb11, align 4
  %call2.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i94 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i94, align 4
  %call.i.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %9, ptr noundef %59, ptr noundef %tx_freeq) #6
  br i1 %call.i.i.i95, label %if.end.i.i.i97, label %brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge

brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge: ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i97:                                   ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %9, ptr %prev.i.i94, align 4
  %61 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_freeq, ptr %9, align 4
  %62 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i3.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %9, ptr %59, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i97, %brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge
  br i1 %tobool9.not.i, label %list_add_tail.exit.i.brcmf_usb_enq.exit99_crit_edge, label %if.then.i

list_add_tail.exit.i.brcmf_usb_enq.exit99_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit99

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %tx_freecount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_freecount, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %tx_freecount, align 4
  br label %brcmf_usb_enq.exit99

brcmf_usb_enq.exit99:                             ; preds = %if.then.i, %list_add_tail.exit.i.brcmf_usb_enq.exit99_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i93) #6
  br label %fail

do.body26:                                        ; preds = %brcmf_usb_enq.exit
  %tx_flowblock_lock = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 13
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_flowblock_lock) #6
  %66 = ptrtoint ptr %tx_freecount to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_freecount, align 4
  %tx_low_watermark = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 9
  %68 = ptrtoint ptr %tx_low_watermark to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_low_watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp36 = icmp slt i32 %67, %69
  br i1 %cmp36, label %land.lhs.true, label %do.body26.if.end41_crit_edge

do.body26.if.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true:                                    ; preds = %do.body26
  %tx_flowblock = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 12
  %70 = ptrtoint ptr %tx_flowblock to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tx_flowblock, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool38.not = icmp eq i8 %71, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @brcmf_proto_bcdc_txflowblock(ptr noundef %dev, i1 noundef zeroext true) #6
  %72 = ptrtoint ptr %tx_flowblock to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %tx_flowblock, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true.if.end41_crit_edge, %do.body26.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_flowblock_lock, i32 noundef %call30) #6
  br label %fail

fail:                                             ; preds = %if.end41, %brcmf_usb_enq.exit99, %do.body7, %do.body.fail_crit_edge
  %ret.0 = phi i32 [ %call15, %brcmf_usb_enq.exit99 ], [ 0, %if.end41 ], [ -12, %do.body7 ], [ -5, %do.body.fail_crit_edge ]
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr) #6
  br label %out

out:                                              ; preds = %fail, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call1, %entry.out_crit_edge ], [ %ret.0, %fail ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_tx_ctlpkt(ptr noundef %dev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_tx_ctlpkt, ptr noundef nonnull @.str) #6
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end3, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end3:                                          ; preds = %if.end
  %ctl_op = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 31
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.fail_crit_edge

if.end3.fail_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end7:                                          ; preds = %if.end3
  %ctl_completed = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ctl_completed, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_send_ctl, ptr noundef nonnull @.str) #6
  %cmp.i = icmp eq ptr %5, null
  %cmp1.i = icmp eq ptr %buf, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3.i = icmp eq i32 %len, 0
  %or.cond36.i = or i1 %cmp3.i, %or.cond.i
  br i1 %or.cond36.i, label %if.end7.do.body11_crit_edge, label %lor.lhs.false4.i

if.end7.do.body11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

lor.lhs.false4.i:                                 ; preds = %if.end7
  %ctl_urb.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl_urb.i, align 4
  %cmp5.i = icmp eq ptr %10, null
  br i1 %cmp5.i, label %lor.lhs.false4.i.do.body11_crit_edge, label %if.end.i

lor.lhs.false4.i.do.body11_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %conv.i = trunc i32 %len to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %ctl_write.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25
  %wLength.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 25, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %wLength.i, align 2
  %conv6.i = and i32 %len, 65535
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6.i, ptr %transfer_buffer_length.i, align 4
  %ctl_urb_status.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 28
  %14 = ptrtoint ptr %ctl_urb_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ctl_urb_status.i, align 4
  %ctl_urb_actual_length.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 27
  %15 = ptrtoint ptr %ctl_urb_actual_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ctl_urb_actual_length.i, align 4
  %16 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_urb.i, align 4
  %usbdev.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usbdev.i, align 4
  %ctl_out_pipe.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 23
  %20 = ptrtoint ptr %ctl_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctl_out_pipe.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctl_write.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv6.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @brcmf_usb_ctlwrite_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 27
  %28 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %context5.i.i, align 4
  %29 = load ptr, ptr %ctl_urb.i, align 4
  %call12.i = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.body16.i, label %brcmf_usb_send_ctl.exit

do.body16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_send_ctl, ptr noundef nonnull @.str.34, i32 noundef %call12.i) #6
  br label %do.body11

brcmf_usb_send_ctl.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool9.not = icmp eq i32 %call12.i, 0
  br i1 %tobool9.not, label %if.end15, label %brcmf_usb_send_ctl.exit.do.body11_crit_edge

brcmf_usb_send_ctl.exit.do.body11_crit_edge:      ; preds = %brcmf_usb_send_ctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.body11:                                        ; preds = %brcmf_usb_send_ctl.exit.do.body11_crit_edge, %do.body16.i, %lor.lhs.false4.i.do.body11_crit_edge, %if.end7.do.body11_crit_edge
  %retval.0.i39 = phi i32 [ %call12.i, %brcmf_usb_send_ctl.exit.do.body11_crit_edge ], [ %call12.i, %do.body16.i ], [ -22, %if.end7.do.body11_crit_edge ], [ -22, %lor.lhs.false4.i.do.body11_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_tx_ctlpkt, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i39, i32 noundef %len) #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  br label %fail

if.end15:                                         ; preds = %brcmf_usb_send_ctl.exit
  %call16 = tail call fastcc i32 @brcmf_usb_ioctl_resp_wait(ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body19, label %if.end22

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_tx_ctlpkt, ptr noundef nonnull @.str.33) #6
  %30 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #6
  br label %fail

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  br label %fail

fail:                                             ; preds = %if.end22, %do.body19, %do.body11, %if.end3.fail_crit_edge, %if.end.fail_crit_edge
  %err.0 = phi i32 [ %retval.0.i39, %do.body11 ], [ 0, %if.end22 ], [ -5, %do.body19 ], [ -5, %if.end.fail_crit_edge ], [ -5, %if.end3.fail_crit_edge ]
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr) #6
  br label %out

out:                                              ; preds = %fail, %entry.out_crit_edge
  %err.1 = phi i32 [ %call1, %entry.out_crit_edge ], [ %err.0, %fail ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_rx_ctlpkt(ptr noundef %dev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devinfo.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devinfo.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_rx_ctlpkt, ptr noundef nonnull @.str) #6
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end3, label %if.end.fail.thread_crit_edge

if.end.fail.thread_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.thread

if.end3:                                          ; preds = %if.end
  %ctl_op = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 31
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.fail.thread_crit_edge

if.end3.fail.thread_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.thread

if.end7:                                          ; preds = %if.end3
  %ctl_completed = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 29
  %8 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ctl_completed, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_recv_ctl, ptr noundef nonnull @.str) #6
  %cmp.i = icmp eq ptr %5, null
  %cmp1.i = icmp eq ptr %buf, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3.i = icmp eq i32 %len, 0
  %or.cond38.i = or i1 %cmp3.i, %or.cond.i
  br i1 %or.cond38.i, label %if.end7.do.body11_crit_edge, label %lor.lhs.false4.i

if.end7.do.body11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

lor.lhs.false4.i:                                 ; preds = %if.end7
  %ctl_urb.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl_urb.i, align 4
  %cmp5.i = icmp eq ptr %10, null
  br i1 %cmp5.i, label %lor.lhs.false4.i.do.body11_crit_edge, label %if.end.i

lor.lhs.false4.i.do.body11_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %conv.i = trunc i32 %len to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %ctl_read.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26
  %wLength.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %wLength.i, align 2
  %conv6.i = and i32 %len, 65535
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6.i, ptr %transfer_buffer_length.i, align 4
  %14 = ptrtoint ptr %ctl_read.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -95, ptr %ctl_read.i, align 4
  %bRequest.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 26, i32 1
  %15 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bRequest.i, align 1
  %16 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_urb.i, align 4
  %usbdev.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usbdev.i, align 4
  %ctl_in_pipe.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 22
  %20 = ptrtoint ptr %ctl_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctl_in_pipe.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctl_read.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv6.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @brcmf_usb_ctlread_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 27
  %28 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %context5.i.i, align 4
  %29 = load ptr, ptr %ctl_urb.i, align 4
  %call14.i = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.body18.i, label %brcmf_usb_recv_ctl.exit

do.body18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_recv_ctl, ptr noundef nonnull @.str.34, i32 noundef %call14.i) #6
  br label %do.body11

brcmf_usb_recv_ctl.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool9.not = icmp eq i32 %call14.i, 0
  br i1 %tobool9.not, label %if.end15, label %brcmf_usb_recv_ctl.exit.do.body11_crit_edge

brcmf_usb_recv_ctl.exit.do.body11_crit_edge:      ; preds = %brcmf_usb_recv_ctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.body11:                                        ; preds = %brcmf_usb_recv_ctl.exit.do.body11_crit_edge, %do.body18.i, %lor.lhs.false4.i.do.body11_crit_edge, %if.end7.do.body11_crit_edge
  %retval.0.i48 = phi i32 [ %call14.i, %brcmf_usb_recv_ctl.exit.do.body11_crit_edge ], [ %call14.i, %do.body18.i ], [ -22, %if.end7.do.body11_crit_edge ], [ -22, %lor.lhs.false4.i.do.body11_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_rx_ctlpkt, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i48, i32 noundef %len) #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  br label %fail.thread

if.end15:                                         ; preds = %brcmf_usb_recv_ctl.exit
  %call16 = tail call fastcc i32 @brcmf_usb_ioctl_resp_wait(ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body19, label %fail

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_rx_ctlpkt, ptr noundef nonnull @.str.37) #6
  %30 = ptrtoint ptr %ctl_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #6
  br label %fail.thread

fail.thread:                                      ; preds = %do.body19, %do.body11, %if.end3.fail.thread_crit_edge, %if.end.fail.thread_crit_edge
  %err.0.ph = phi i32 [ -5, %if.end3.fail.thread_crit_edge ], [ -5, %if.end.fail.thread_crit_edge ], [ -5, %do.body19 ], [ %retval.0.i48, %do.body11 ]
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr) #6
  br label %cleanup

fail:                                             ; preds = %if.end15
  %ctl_urb_status = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 28
  %32 = ptrtoint ptr %ctl_urb_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctl_urb_status, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ctl_op) #6
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool24.not = icmp eq i32 %33, 0
  br i1 %tobool24.not, label %if.then25, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %ctl_urb_actual_length = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %5, i32 0, i32 27
  %34 = ptrtoint ptr %ctl_urb_actual_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctl_urb_actual_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %fail.cleanup_crit_edge, %fail.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then25 ], [ %call1, %entry.cleanup_crit_edge ], [ %33, %fail.cleanup_crit_edge ], [ %err.0.ph, %fail.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_usb_get_fwname(ptr nocapture noundef readonly %dev, ptr noundef %ext, ptr noundef %fw_name) #0 align 64 {
entry:
  %fwnames = alloca [1 x %struct.brcmf_fw_name], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fwnames) #6
  %2 = getelementptr inbounds %struct.brcmf_fw_name, ptr %fwnames, i32 0, i32 1
  %3 = ptrtoint ptr %fwnames to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ext, ptr %fwnames, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw_name, ptr %2, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chiprev, align 4
  %call1 = call ptr @brcmf_fw_alloc_request(i32 noundef %6, i32 noundef %8, ptr noundef nonnull @brcmf_usb_fwnames, i32 noundef 8, ptr noundef nonnull %fwnames, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fwnames) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_usb_rx_fill_all(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %entry
  %rx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 1
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %2 = ptrtoint ptr %rx_freeq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_freeq, align 4
  %cmp.i.not.i13 = icmp eq ptr %3, %rx_freeq
  br i1 %cmp.i.not.i13, label %while.cond.preheader.brcmf_usb_deq.exit.thread_crit_edge, label %while.cond.preheader.if.end.i_crit_edge

while.cond.preheader.if.end.i_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end.i

while.cond.preheader.brcmf_usb_deq.exit.thread_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_deq.exit.thread

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_rx_fill_all, ptr noundef nonnull @.str.26, i32 noundef %1) #6
  br label %cleanup

brcmf_usb_deq.exit.thread:                        ; preds = %while.body.brcmf_usb_deq.exit.thread_crit_edge, %while.cond.preheader.brcmf_usb_deq.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i12, %while.cond.preheader.brcmf_usb_deq.exit.thread_crit_edge ], [ %call2.i, %while.body.brcmf_usb_deq.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i.lcssa) #6
  br label %cleanup

if.end.i:                                         ; preds = %while.body.if.end.i_crit_edge, %while.cond.preheader.if.end.i_crit_edge
  %4 = phi ptr [ %14, %while.body.if.end.i_crit_edge ], [ %3, %while.cond.preheader.if.end.i_crit_edge ]
  %call2.i14 = phi i32 [ %call2.i, %while.body.if.end.i_crit_edge ], [ %call2.i12, %while.cond.preheader.if.end.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.brcmf_usb_deq.exit_crit_edge

if.end.i.brcmf_usb_deq.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_deq.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %brcmf_usb_deq.exit

brcmf_usb_deq.exit:                               ; preds = %if.end.i.i.i, %if.end.i.brcmf_usb_deq.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i14) #6
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %brcmf_usb_deq.exit.cleanup_crit_edge, label %while.body

brcmf_usb_deq.exit.cleanup_crit_edge:             ; preds = %brcmf_usb_deq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %brcmf_usb_deq.exit
  tail call fastcc void @brcmf_usb_rx_refill(ptr noundef %devinfo, ptr noundef nonnull %4)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %13 = ptrtoint ptr %rx_freeq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %rx_freeq, align 4
  %cmp.i.not.i = icmp eq ptr %14, %rx_freeq
  br i1 %cmp.i.not.i, label %while.body.brcmf_usb_deq.exit.thread_crit_edge, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.body.brcmf_usb_deq.exit.thread_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_deq.exit.thread

cleanup:                                          ; preds = %brcmf_usb_deq.exit.cleanup_crit_edge, %brcmf_usb_deq.exit.thread, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_usb_rx_refill(ptr noundef %devinfo, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  %tobool1.not = icmp eq ptr %devinfo, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_mtu = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 7
  %0 = ptrtoint ptr %bus_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_mtu, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %1, i32 noundef 2592) #6
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %rx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %req, ptr noundef %3, ptr noundef %rx_freeq) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.brcmf_usb_enq.exit_crit_edge

if.then3.brcmf_usb_enq.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_freeq, ptr %req, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %req, ptr %3, align 4
  br label %brcmf_usb_enq.exit

brcmf_usb_enq.exit:                               ; preds = %if.end.i.i.i, %if.then3.brcmf_usb_enq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %skb5 = getelementptr inbounds %struct.brcmf_usbreq, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %skb5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %skb5, align 4
  %urb = getelementptr inbounds %struct.brcmf_usbreq, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb, align 4
  %usbdev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 19
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev, align 4
  %rx_pipe = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 6
  %13 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pipe, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end4.skb_tailroom.exit_crit_edge

if.end4.skb_tailroom.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end4.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end4.skb_tailroom.exit_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @brcmf_usb_rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %28 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req, ptr %context4.i, align 4
  %devinfo7 = getelementptr inbounds %struct.brcmf_usbreq, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %devinfo7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %devinfo, ptr %devinfo7, align 4
  %rx_postq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 3
  %qlock.i42 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 1
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i42) #6
  %prev.i.i44 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i44, align 4
  %call.i.i.i45 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %req, ptr noundef %31, ptr noundef %rx_postq) #6
  br i1 %call.i.i.i45, label %if.end.i.i.i47, label %skb_tailroom.exit.brcmf_usb_enq.exit48_crit_edge

skb_tailroom.exit.brcmf_usb_enq.exit48_crit_edge: ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit48

if.end.i.i.i47:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %req, ptr %prev.i.i44, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx_postq, ptr %req, align 4
  %prev3.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i46, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %req, ptr %31, align 4
  br label %brcmf_usb_enq.exit48

brcmf_usb_enq.exit48:                             ; preds = %if.end.i.i.i47, %skb_tailroom.exit.brcmf_usb_enq.exit48_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i42, i32 noundef %call2.i43) #6
  %36 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %urb, align 4
  %call9 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %brcmf_usb_enq.exit48.cleanup_crit_edge, label %if.then11

brcmf_usb_enq.exit48.cleanup_crit_edge:           ; preds = %brcmf_usb_enq.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %brcmf_usb_enq.exit48
  %call2.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i42) #6
  %call.i.i.i51 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %req) #6
  br i1 %call.i.i.i51, label %if.end.i.i.i52, label %if.then11.brcmf_usb_del_fromq.exit_crit_edge

if.then11.brcmf_usb_del_fromq.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_del_fromq.exit

if.end.i.i.i52:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %brcmf_usb_del_fromq.exit

brcmf_usb_del_fromq.exit:                         ; preds = %if.end.i.i.i52, %if.then11.brcmf_usb_del_fromq.exit_crit_edge
  %44 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %req, ptr %req, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %req, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i42, i32 noundef %call2.i50) #6
  %46 = ptrtoint ptr %skb5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb5, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %47) #6
  %48 = ptrtoint ptr %skb5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %skb5, align 4
  %rx_freeq14 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2
  %call2.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i42) #6
  %prev.i.i55 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i55, align 4
  %call.i.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %req, ptr noundef %50, ptr noundef %rx_freeq14) #6
  br i1 %call.i.i.i56, label %if.end.i.i.i58, label %brcmf_usb_del_fromq.exit.brcmf_usb_enq.exit59_crit_edge

brcmf_usb_del_fromq.exit.brcmf_usb_enq.exit59_crit_edge: ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit59

if.end.i.i.i58:                                   ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %req, ptr %prev.i.i55, align 4
  %52 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_freeq14, ptr %req, align 4
  %53 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %req, ptr %50, align 4
  br label %brcmf_usb_enq.exit59

brcmf_usb_enq.exit59:                             ; preds = %if.end.i.i.i58, %brcmf_usb_del_fromq.exit.brcmf_usb_enq.exit59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i42, i32 noundef %call2.i54) #6
  br label %cleanup

cleanup:                                          ; preds = %brcmf_usb_enq.exit59, %brcmf_usb_enq.exit48.cleanup_crit_edge, %brcmf_usb_enq.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_rx_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_usbreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devinfo1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_rx_complete, ptr noundef nonnull @.str.27, i32 noundef %5) #6
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.brcmf_usb_del_fromq.exit_crit_edge

entry.brcmf_usb_del_fromq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_del_fromq.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %brcmf_usb_del_fromq.exit

brcmf_usb_del_fromq.exit:                         ; preds = %if.end.i.i.i, %entry.brcmf_usb_del_fromq.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #6
  %skb2 = getelementptr inbounds %struct.brcmf_usbreq, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb2, align 4
  store ptr null, ptr %skb2, align 4
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %lor.lhs.false, label %brcmf_usb_del_fromq.exit.if.then_crit_edge

brcmf_usb_del_fromq.exit.if.then_crit_edge:       ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %brcmf_usb_del_fromq.exit
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %brcmf_usb_del_fromq.exit.if.then_crit_edge
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %15) #6
  %rx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 2
  %call2.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i41 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %21, ptr noundef %rx_freeq) #6
  br i1 %call.i.i.i41, label %if.end.i.i.i42, label %if.then.brcmf_usb_enq.exit_crit_edge

if.then.brcmf_usb_enq.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit

if.end.i.i.i42:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rx_freeq, ptr %1, align 4
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %1, ptr %21, align 4
  br label %brcmf_usb_enq.exit

brcmf_usb_enq.exit:                               ; preds = %if.end.i.i.i42, %if.then.brcmf_usb_enq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i40) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.brcmf_usbdev, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %.off = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @skb_put(ptr noundef %15, i32 noundef %19) #6
  %dev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void @brcmf_rx_frame(ptr noundef %29, ptr noundef %15, i1 noundef zeroext true, i1 noundef zeroext true) #6
  tail call fastcc void @brcmf_usb_rx_refill(ptr noundef %3, ptr noundef %1)
  %dev12 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %30 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %15) #6
  %rx_freeq13 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 2
  %call2.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i45 = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i45, align 4
  %call.i.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %34, ptr noundef %rx_freeq13) #6
  br i1 %call.i.i.i46, label %if.end.i.i.i48, label %if.else.brcmf_usb_enq.exit49_crit_edge

if.else.brcmf_usb_enq.exit49_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit49

if.end.i.i.i48:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %prev.i.i45, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx_freeq13, ptr %1, align 4
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %1, ptr %34, align 4
  br label %brcmf_usb_enq.exit49

brcmf_usb_enq.exit49:                             ; preds = %if.end.i.i.i48, %if.else.brcmf_usb_enq.exit49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i44) #6
  br label %cleanup

cleanup:                                          ; preds = %brcmf_usb_enq.exit49, %if.then10, %brcmf_usb_enq.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_rx_frame(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_cancel_all_urbs(ptr nocapture noundef readonly %devinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 24
  %0 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_urb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_urb(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bulk_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 33
  %2 = ptrtoint ptr %bulk_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_urb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tx_reqs = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 14
  %4 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_reqs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %for.cond.preheader

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.preheader:                               ; preds = %if.end5
  %ntxq = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 4
  %6 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntxq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp38 = icmp sgt i32 %7, 0
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_reqs, align 4
  %urb = getelementptr %struct.brcmf_usbreq, ptr %9, i32 %i.039, i32 2
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #6
  %inc = add nuw nsw i32 %i.039, 1
  %12 = ptrtoint ptr %ntxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntxq, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %rx_reqs = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 15
  %14 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_reqs, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.if.end22_crit_edge, label %for.cond12.preheader

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.cond12.preheader:                             ; preds = %if.end9
  %nrxq = getelementptr inbounds %struct.brcmf_usbdev, ptr %devinfo, i32 0, i32 5
  %16 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrxq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1440 = icmp sgt i32 %17, 0
  br i1 %cmp1440, label %for.cond12.preheader.for.body15_crit_edge, label %for.cond12.preheader.if.end22_crit_edge

for.cond12.preheader.if.end22_crit_edge:          ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %i.141 = phi i32 [ %inc20, %for.body15.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %18 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_reqs, align 4
  %urb18 = getelementptr %struct.brcmf_usbreq, ptr %19, i32 %i.141, i32 2
  %20 = ptrtoint ptr %urb18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb18, align 4
  tail call void @usb_kill_urb(ptr noundef %21) #6
  %inc20 = add nuw nsw i32 %i.141, 1
  %22 = ptrtoint ptr %nrxq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nrxq, align 4
  %cmp14 = icmp slt i32 %inc20, %23
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.if.end22_crit_edge

for.body15.if.end22_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

if.end22:                                         ; preds = %for.body15.if.end22_crit_edge, %for.cond12.preheader.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_tx_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %devinfo1 = getelementptr inbounds %struct.brcmf_usbreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devinfo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devinfo1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %skb = getelementptr inbounds %struct.brcmf_usbreq, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_tx_complete, ptr noundef nonnull @.str.31, i32 noundef %5, ptr noundef %7) #6
  %qlock.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.brcmf_usb_del_fromq.exit_crit_edge

entry.brcmf_usb_del_fromq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_del_fromq.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %brcmf_usb_del_fromq.exit

brcmf_usb_del_fromq.exit:                         ; preds = %if.end.i.i.i, %entry.brcmf_usb_del_fromq.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #6
  %dev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  tail call void @brcmf_proto_bcdc_txcomplete(ptr noundef %17, ptr noundef %19, i1 noundef zeroext %cmp) #6
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %skb, align 4
  %tx_freeq = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 4
  %tx_freecount = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 11
  %call2.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #6
  %prev.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %24, ptr noundef %tx_freeq) #6
  br i1 %call.i.i.i40, label %if.end.i.i.i41, label %brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge

brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge: ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i41:                                   ; preds = %brcmf_usb_del_fromq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tx_freeq, ptr %1, align 4
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev.i3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %1, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i41, %brcmf_usb_del_fromq.exit.list_add_tail.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %tx_freecount, null
  br i1 %tobool.not.i, label %list_add_tail.exit.i.brcmf_usb_enq.exit_crit_edge, label %if.then.i

list_add_tail.exit.i.brcmf_usb_enq.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_enq.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %tx_freecount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_freecount, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %tx_freecount, align 4
  br label %brcmf_usb_enq.exit

brcmf_usb_enq.exit:                               ; preds = %if.then.i, %list_add_tail.exit.i.brcmf_usb_enq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i39) #6
  %tx_flowblock_lock = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 13
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_flowblock_lock) #6
  %31 = ptrtoint ptr %tx_freecount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_freecount, align 4
  %tx_high_watermark = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %tx_high_watermark to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_high_watermark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp14 = icmp sgt i32 %32, %34
  br i1 %cmp14, label %land.lhs.true, label %brcmf_usb_enq.exit.if.end_crit_edge

brcmf_usb_enq.exit.if.end_crit_edge:              ; preds = %brcmf_usb_enq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %brcmf_usb_enq.exit
  %tx_flowblock = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %3, i32 0, i32 12
  %35 = ptrtoint ptr %tx_flowblock to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_flowblock, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void @brcmf_proto_bcdc_txflowblock(ptr noundef %38, i1 noundef zeroext false) #6
  %39 = ptrtoint ptr %tx_flowblock to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %tx_flowblock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %brcmf_usb_enq.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_flowblock_lock, i32 noundef %call8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txflowblock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_bcdc_txcomplete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_usb_ioctl_resp_wait(ptr noundef %devinfo) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 187) #6
  %ctl_completed = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 29
  %0 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then9, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %ioctl_resp_wait = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 30
  %call1252 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_resp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %3 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool15.not53.not = icmp eq i32 %4, 0
  br i1 %tobool15.not53.not, label %if.then9.cleanup_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.155 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then9.cleanup_crit_edge ]
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret10.155) #6
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_resp_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %5 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl_completed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool19.not = icmp eq i32 %call32, 0
  %spec.store.select37 = select i1 %tobool19.not, i32 1, i32 %call32
  %__ret10.1 = select i1 %tobool15.not, i32 %call32, i32 %spec.store.select37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool25.not = icmp eq i32 %__ret10.1, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %7 = select i1 %not.tobool15.not, i1 true, i1 %tobool25.not
  br i1 %7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ 200, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ioctl_resp_wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end35

if.end35:                                         ; preds = %for.end, %entry.if.end35_crit_edge
  %__ret.1 = phi i32 [ 200, %entry.if.end35_crit_edge ], [ %__ret10.1.lcssa, %for.end ]
  ret i32 %__ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_ctlwrite_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_ctlwrite_complete, ptr noundef nonnull @.str) #6
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_ctl_complete, ptr noundef nonnull @.str.35, i32 noundef %3) #6
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.brcmf_usb_ctl_complete.exit_crit_edge, label %if.end.i, !prof !212

entry.brcmf_usb_ctl_complete.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_ctl_complete.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.i = icmp eq i32 %3, 0
  %tx_ctlerrs.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %1, i32 0, i32 3, i32 1
  %stats16.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %1, i32 0, i32 3
  %tx_ctlerrs.sink36.i = select i1 %cmp4.i, ptr %stats16.i, ptr %tx_ctlerrs.i
  %4 = ptrtoint ptr %tx_ctlerrs.sink36.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ctlerrs.sink36.i, align 4
  %inc21.i = add i32 %5, 1
  store i32 %inc21.i, ptr %tx_ctlerrs.sink36.i, align 4
  %ctl_urb_status.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %ctl_urb_status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %ctl_urb_status.i, align 4
  %ctl_completed.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %ctl_completed.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ctl_completed.i, align 4
  %ioctl_resp_wait.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %ioctl_resp_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %brcmf_usb_ctl_complete.exit

brcmf_usb_ctl_complete.exit:                      ; preds = %if.end.i, %entry.brcmf_usb_ctl_complete.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_ctlread_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_ctlread_complete, ptr noundef nonnull @.str) #6
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %ctl_urb_actual_length = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %ctl_urb_actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ctl_urb_actual_length, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8192, ptr noundef nonnull @__func__.brcmf_usb_ctl_complete, ptr noundef nonnull @.str.35, i32 noundef %6) #6
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.brcmf_usb_ctl_complete.exit_crit_edge, label %if.end.i, !prof !212

entry.brcmf_usb_ctl_complete.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_usb_ctl_complete.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp eq i32 %6, 0
  %rx_ctlpkts.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %1, i32 0, i32 3, i32 2
  %rx_ctlerrs.i = getelementptr inbounds %struct.brcmf_usbdev, ptr %1, i32 0, i32 3, i32 3
  %tx_ctlerrs.sink36.i = select i1 %cmp4.i, ptr %rx_ctlpkts.i, ptr %rx_ctlerrs.i
  %7 = ptrtoint ptr %tx_ctlerrs.sink36.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ctlerrs.sink36.i, align 4
  %inc21.i = add i32 %8, 1
  store i32 %inc21.i, ptr %tx_ctlerrs.sink36.i, align 4
  %ctl_urb_status.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %ctl_urb_status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %ctl_urb_status.i, align 4
  %ctl_completed.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %ctl_completed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ctl_completed.i, align 4
  %ioctl_resp_wait.i.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %ioctl_resp_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %brcmf_usb_ctl_complete.exit

brcmf_usb_ctl_complete.exit:                      ; preds = %if.end.i, %entry.brcmf_usb_ctl_complete.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fw_alloc_request(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_usb_dl_cmd(ptr noundef %devinfo, i8 noundef zeroext %cmd, ptr nocapture noundef writeonly %buffer, i32 noundef %buflen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %devinfo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ctl_urb = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 24
  %0 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_urb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buflen, i32 noundef 2592) #10
  %tobool1.not = icmp eq ptr %call9.i, null
  br i1 %tobool1.not, label %if.end8.i.cleanup_crit_edge, label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i
  %conv = trunc i32 %buflen to i16
  %conv4 = and i32 %buflen, 65535
  %2 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4, ptr %transfer_buffer_length, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %ctl_read = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 26
  %wLength = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 26, i32 4
  %6 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %wLength, align 2
  %7 = ptrtoint ptr %ctl_read to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -63, ptr %ctl_read, align 4
  %bRequest = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cmd, ptr %bRequest, align 1
  %9 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl_urb, align 4
  %usbdev = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 19
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or12 = or i32 %shl.i, -2147483520
  %dev1.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or12, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 21
  %17 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctl_read, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @brcmf_usb_sync_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %21 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %devinfo, ptr %context5.i, align 4
  %ctl_completed = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %devinfo, i32 0, i32 29
  %22 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ctl_completed, align 4
  %23 = load ptr, ptr %ctl_urb, align 4
  %call16 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_usb_dl_cmd, ptr noundef nonnull @.str.34, i32 noundef %call16) #6
  br label %finalize

if.end20:                                         ; preds = %if.end3
  %call21 = tail call fastcc i32 @brcmf_usb_ioctl_resp_wait(ptr noundef nonnull %devinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ctl_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #6
  br label %finalize

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %26 = call ptr @memcpy(ptr %buffer, ptr %call9.i, i32 %buflen)
  br label %finalize

finalize:                                         ; preds = %if.else, %if.then23, %do.body
  %ret.0 = phi i32 [ %call16, %do.body ], [ %call16, %if.else ], [ -110, %if.then23 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %finalize, %if.end8.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %finalize ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_usb_sync_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ctl_completed = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %ctl_completed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ctl_completed, align 4
  %ioctl_resp_wait.i = getelementptr inbounds %struct.brcmf_usbdev_info, ptr %1, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %ioctl_resp_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_release_module_param(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_dev_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !54, !56, !57, !59, !60, !62, !64, !65, !67, !69, !71, !72, !74, !76, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !185, !187, !188, !190, !192, !193, !195, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__UNIQUE_ID_firmware348, !1, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware349, !3, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware350, !5, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware351, !7, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 41, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware352, !9, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 42, i32 1}
!10 = !{ptr @__func__.brcmf_usb_exit, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1578, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1582, i32 3}
!15 = !{ptr @__func__.brcmf_usb_register, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1589, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1590, i32 9}
!19 = !{ptr @brcmf_usbdrvr, !20, !"brcmf_usbdrvr", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1552, i32 26}
!21 = !{ptr @__func__.brcmf_usb_probe, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1356, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1375, i32 3}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1384, i32 3}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1394, i32 3}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1418, i32 3}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1423, i32 3}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1431, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1433, i32 3}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1435, i32 3}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1437, i32 3}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__func__.brcmf_usb_probe_cb, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1264, i32 2}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1317, i32 3}
!49 = !{ptr @__func__.brcmf_usb_attach, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1105, i32 2}
!51 = !{ptr @brcmf_usb_attach.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1119, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @brcmf_usb_attach.__key.16, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1122, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @brcmf_usb_attach.__key.18, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1123, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1152, i32 2}
!62 = !{ptr @__func__.brcmf_usbdev_qinit, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 455, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @brcmf_usb_bus_ops, !66, !"brcmf_usb_bus_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1177, i32 35}
!67 = !{ptr @__func__.brcmf_usb_up, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 676, i32 2}
!69 = !{ptr @__func__.brcmf_usb_state_change, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 595, i32 2}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 605, i32 3}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 608, i32 3}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 611, i32 3}
!78 = !{ptr @__func__.brcmf_usb_rx_fill_all, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 583, i32 3}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__func__.brcmf_usb_rx_complete, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 520, i32 2}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__func__.brcmf_usb_down, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 725, i32 2}
!86 = !{ptr @__func__.brcmf_usb_tx, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 627, i32 2}
!88 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 636, i32 3}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 649, i32 3}
!93 = !{ptr @__func__.brcmf_usb_tx_complete, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 498, i32 2}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__func__.brcmf_usb_tx_ctlpkt, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 316, i32 2}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 335, i32 3}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 341, i32 3}
!102 = !{ptr @__func__.brcmf_usb_send_ctl, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 249, i32 2}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 270, i32 3}
!106 = !{ptr @__func__.brcmf_usb_ctlwrite_complete, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 238, i32 2}
!108 = !{ptr @__func__.brcmf_usb_ctl_complete, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 198, i32 2}
!110 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 186, i32 9}
!113 = !{ptr @__func__.brcmf_usb_rx_ctlpkt, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 361, i32 2}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 387, i32 3}
!117 = !{ptr @__func__.brcmf_usb_recv_ctl, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 281, i32 2}
!119 = !{ptr @__func__.brcmf_usb_ctlread_complete, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 226, i32 2}
!121 = !{ptr @brcmf_usb_fwnames, !122, !"brcmf_usb_fwnames", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 44, i32 44}
!123 = !{ptr @BRCM_43143_FIRMWARE_BASENAME, !1, !"BRCM_43143_FIRMWARE_BASENAME", i1 false, i1 false}
!124 = !{ptr @BRCM_43236B_FIRMWARE_BASENAME, !3, !"BRCM_43236B_FIRMWARE_BASENAME", i1 false, i1 false}
!125 = !{ptr @BRCM_43242A_FIRMWARE_BASENAME, !5, !"BRCM_43242A_FIRMWARE_BASENAME", i1 false, i1 false}
!126 = !{ptr @BRCM_43569_FIRMWARE_BASENAME, !7, !"BRCM_43569_FIRMWARE_BASENAME", i1 false, i1 false}
!127 = !{ptr @BRCM_4373_FIRMWARE_BASENAME, !9, !"BRCM_4373_FIRMWARE_BASENAME", i1 false, i1 false}
!128 = !{ptr @__func__.brcmf_usb_dlneeded, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 801, i32 2}
!130 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 814, i32 3}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 816, i32 3}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 818, i32 3}
!136 = !{ptr @__func__.brcmf_usb_dl_cmd, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 779, i32 3}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1240, i32 5}
!140 = !{ptr @__func__.brcmf_usb_probe_phase2, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1198, i32 2}
!142 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1205, i32 3}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1230, i32 2}
!147 = !{ptr @__func__.check_file, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1085, i32 2}
!149 = !{ptr @__func__.brcmf_usb_fw_download, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1033, i32 2}
!151 = !{ptr @.str.45, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1040, i32 3}
!153 = !{ptr @__func__.brcmf_usb_dlstart, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 979, i32 2}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 992, i32 2}
!157 = !{ptr @__func__.brcmf_usb_dl_writeimage, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 897, i32 2}
!159 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 913, i32 3}
!162 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 942, i32 5}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 953, i32 4}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 962, i32 4}
!168 = !{ptr @__func__.brcmf_usb_dl_send_bulk, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 881, i32 3}
!170 = !{ptr @__func__.brcmf_usb_dlrun, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1001, i32 2}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1020, i32 3}
!174 = !{ptr @.str.53, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1023, i32 2}
!176 = !{ptr @__func__.brcmf_usb_resetcfg, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 835, i32 2}
!178 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 850, i32 3}
!180 = !{ptr @.str.55, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 856, i32 3}
!182 = !{ptr @__func__.brcmf_usb_detach, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1063, i32 2}
!184 = !{ptr @.str.56, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__func__.brcmf_usb_free_q, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 473, i32 4}
!187 = !{ptr @.str.57, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @__func__.brcmf_usb_disconnect, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1458, i32 2}
!190 = !{ptr @__func__.brcmf_usb_disconnect_cb, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1337, i32 2}
!192 = !{ptr @.str.58, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__func__.brcmf_usb_suspend, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1484, i32 2}
!195 = !{ptr @__func__.brcmf_usb_resume, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1499, i32 2}
!197 = !{ptr @__func__.brcmf_usb_reset_resume, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1514, i32 2}
!199 = !{ptr @brcmf_usb_devid_table, !200, !"brcmf_usb_devid_table", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c", i32 1536, i32 35}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
!211 = !{i8 0, i8 2}
!212 = !{!"branch_weights", i32 1, i32 2000}
