; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btmtkuart.c_pt.bc'
source_filename = "../drivers/bluetooth/btmtkuart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.btmtkuart_data = type { i32, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.btmtkuart_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, i32, %struct.sk_buff_head, ptr, ptr, [6 x i8], i8, i16, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.btmtk_hci_wmt_params = type { i8, i8, i16, ptr, ptr }
%struct.btmtk_tci_sleep = type <{ i8, i16, i16, i8, i8 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.mtk_stp_hdr = type <{ i8, i16, i8 }>
%struct.mtk_hci_wmt_cmd = type { %struct.mtk_wmt_hdr, [256 x i8] }
%struct.mtk_wmt_hdr = type <{ i8, i8, i16, i8 }>
%struct.btmtk_hci_wmt_evt = type { %struct.hci_event_hdr, %struct.mtk_wmt_hdr }
%struct.hci_event_hdr = type { i8, i8 }
%struct.btmtk_hci_wmt_evt_funcc = type <{ %struct.btmtk_hci_wmt_evt, i16 }>

@__initcall__kmod_btmtkuart__484_1128_btmtkuart_driver_init6 = internal global ptr @btmtkuart_driver_init, section ".initcall6.init", align 4
@btmtkuart_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @btmtkuart_probe, ptr @btmtkuart_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_btmtkuart_driver_exit = internal global ptr @btmtkuart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author485 = internal constant [52 x i8] c"btmtkuart.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description486 = internal constant [63 x i8] c"btmtkuart.description=MediaTek Bluetooth Serial driver ver 0.2\00", section ".modinfo", align 1
@__UNIQUE_ID_version487 = internal constant [22 x i8] c"btmtkuart.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"btmtkuart\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file488 = internal constant [43 x i8] c"btmtkuart.file=drivers/bluetooth/btmtkuart\00", section ".modinfo", align 1
@__UNIQUE_ID_license489 = internal constant [22 x i8] c"btmtkuart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware490 = internal constant [43 x i8] c"btmtkuart.firmware=mediatek/mt7622pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware491 = internal constant [43 x i8] c"btmtkuart.firmware=mediatek/mt7663pr2h.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware492 = internal constant [43 x i8] c"btmtkuart.firmware=mediatek/mt7668pr2h.bin\00", section ".modinfo", align 1
@mtk_of_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-bluetooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7663u-bluetooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7663_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7668u-bluetooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7668_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mt7622_data = internal constant { %struct.btmtkuart_data, [24 x i8] } { %struct.btmtkuart_data { i32 0, ptr @.str.3 }, [24 x i8] zeroinitializer }, align 32
@mt7663_data = internal constant { %struct.btmtkuart_data, [24 x i8] } { %struct.btmtkuart_data { i32 1, ptr @.str.4 }, [24 x i8] zeroinitializer }, align 32
@mt7668_data = internal constant { %struct.btmtkuart_data, [24 x i8] } { %struct.btmtkuart_data { i32 1, ptr @.str.5 }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7622pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7663pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7668pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@btmtkuart_client_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @btmtkuart_receive_buf, ptr @btmtkuart_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@btmtkuart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&bdev->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@btmtkuart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 995, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btmtkuart_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/btmtkuart.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@btmtkuart_probe._entry_ptr = internal global ptr @btmtkuart_probe._entry, section ".printk_index", align 4
@btmtkuart_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1063, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@btmtkuart_probe._entry_ptr.14 = internal global ptr @btmtkuart_probe._entry.12, section ".printk_index", align 4
@mtk_recv_pkts = internal constant { [3 x %struct.h4_recv_pkt], [60 x i8] } { [3 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @btmtkuart_recv_event }], [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: stp format unexpect (%d, %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@btmtkuart_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 940, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Should assign RXD to LOW at boot stage\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btmtkuart_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@btmtkuart_parse_dt._entry_ptr = internal global ptr @btmtkuart_parse_dt._entry, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"runtime\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unable to open UART device %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Unable to set baudrate UART device %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to wakeup the chip (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query firmware status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Firmware already downloaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: function already on\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to send wmt func ctrl (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to apply low power setting (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Device setup in %llu usecs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Execution of wmt command interrupted\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Execution of wmt command timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Wrong op received %d expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to device baudrate (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to set up host baudrate (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Failed to test new baudrate (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to load firmware file (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to send wmt patch dwnld (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to send wmt rst (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query function status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 23]
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"btmtkuart_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1119, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1132, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"mtk_of_match_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1110, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"mt7622_data\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1095, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"mt7663_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1099, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mt7668_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1104, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1096, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1101, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1106, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"btmtkuart_client_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 545, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 989, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 995, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1063, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"mtk_recv_pkts\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 365, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 510, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 453, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 906, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 910, i32 48 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 916, i32 51 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 922, i32 54 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 936, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 939, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 945, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 951, i32 55 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 958, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1984, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 558, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 572, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 752, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 771, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 776, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 799, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 812, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 828, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 837, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 193, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 199, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 208, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 125, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 683, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 690, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 717, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 253, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 288, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 306, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [33 x i8] c"../drivers/bluetooth/btmtkuart.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 656, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author485, ptr @__UNIQUE_ID_description486, ptr @__UNIQUE_ID_file488, ptr @__UNIQUE_ID_firmware490, ptr @__UNIQUE_ID_firmware491, ptr @__UNIQUE_ID_firmware492, ptr @__UNIQUE_ID_license489, ptr @__UNIQUE_ID_version487, ptr @__exitcall_btmtkuart_driver_exit, ptr @__initcall__kmod_btmtkuart__484_1128_btmtkuart_driver_init6, ptr @__modver_attr, ptr @btmtkuart_driver_exit, ptr @btmtkuart_parse_dt._entry, ptr @btmtkuart_parse_dt._entry_ptr, ptr @btmtkuart_probe._entry, ptr @btmtkuart_probe._entry.12, ptr @btmtkuart_probe._entry_ptr, ptr @btmtkuart_probe._entry_ptr.14, ptr @btmtkuart_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mtk_of_match_table, ptr @mt7622_data, ptr @mt7663_data, ptr @mt7668_data, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @btmtkuart_client_ops, ptr @btmtkuart_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @mtk_recv_pkts, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @skb_queue_head_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_of_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7668_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_client_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_recv_pkts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtkuart_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @btmtkuart_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btmtkuart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef nonnull @btmtkuart_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_probe(ptr noundef %serdev) #2 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 176, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %serdev) #7
  %data = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 20
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %serdev7 = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %serdev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serdev, ptr %serdev7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %3 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @btmtkuart_client_ops, ptr %ops1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #7
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 921600, ptr %speed.i, align 4
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call2, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then64.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %speed.i, i32 noundef 1, i32 noundef 0) #7
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed.i, align 4
  %desired_speed.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %desired_speed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %desired_speed.i, align 4
  %call3.i = call ptr @devm_regulator_get(ptr noundef %serdev, ptr noundef nonnull @.str.18) #7
  %vcc.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %vcc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %vcc.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end.i

if.then.i.btmtkuart_parse_dt.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.end.i:                                         ; preds = %if.then.i
  %call10.i = call ptr @devm_clk_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.19) #7
  %osc.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %osc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10.i, ptr %osc.i, align 4
  %cmp.i121.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %if.end.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end16.i

if.end.i.btmtkuart_parse_dt.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.end16.i:                                       ; preds = %if.end.i
  %call18.i = call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.20, i32 noundef 3) #7
  %boot.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %boot.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18.i, ptr %boot.i, align 4
  %cmp.i122.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %if.end16.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end24.i

if.end16.i.btmtkuart_parse_dt.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.end24.i:                                       ; preds = %if.end16.i
  %call26.i = call ptr @devm_pinctrl_get(ptr noundef %serdev) #7
  %pinctrl.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26.i, ptr %pinctrl.i, align 4
  %cmp.i123.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123.i, label %if.end24.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end32.i

if.end24.i.btmtkuart_parse_dt.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.end32.i:                                       ; preds = %if.end24.i
  %call34.i = call ptr @pinctrl_lookup_state(ptr noundef %call26.i, ptr noundef nonnull @.str.21) #7
  %pins_boot.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %pins_boot.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34.i, ptr %pins_boot.i, align 4
  %cmp.i124.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %land.lhs.true.i, label %if.end32.i.if.end43.i_crit_edge

if.end32.i.if.end43.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %17 = ptrtoint ptr %boot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %boot.i, align 4
  %tobool38.not.i = icmp eq ptr %18, null
  br i1 %tobool38.not.i, label %if.then39.i, label %land.lhs.true.i.if.end43.i_crit_edge

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.22) #10
  br label %btmtkuart_parse_dt.exit

if.end43.i:                                       ; preds = %land.lhs.true.i.if.end43.i_crit_edge, %if.end32.i.if.end43.i_crit_edge
  %19 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pinctrl.i, align 4
  %call45.i = call ptr @pinctrl_lookup_state(ptr noundef %20, ptr noundef nonnull @.str.24) #7
  %pins_runtime.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %pins_runtime.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call45.i, ptr %pins_runtime.i, align 4
  %cmp.i125.i = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %if.end43.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end51.i

if.end43.i.btmtkuart_parse_dt.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.end51.i:                                       ; preds = %if.end43.i
  %call53.i = call ptr @devm_gpiod_get_optional(ptr noundef %serdev, ptr noundef nonnull @.str.25, i32 noundef 3) #7
  %reset.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call53.i, ptr %reset.i, align 4
  %cmp.i126.i = icmp ugt ptr %call53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.end51.i.btmtkuart_parse_dt.exit_crit_edge, label %if.end51.i.btmtkuart_parse_dt.exit.thread_crit_edge

if.end51.i.btmtkuart_parse_dt.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit.thread

if.end51.i.btmtkuart_parse_dt.exit_crit_edge:     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

if.then64.i:                                      ; preds = %if.end6
  %call66.i = tail call ptr @devm_clk_get(ptr noundef %serdev, ptr noundef nonnull @.str.26) #7
  %clk.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call66.i, ptr %clk.i, align 4
  %cmp.i127.i = icmp ugt ptr %call66.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %if.then64.i.btmtkuart_parse_dt.exit_crit_edge, label %if.then64.i.btmtkuart_parse_dt.exit.thread_crit_edge

if.then64.i.btmtkuart_parse_dt.exit.thread_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit.thread

if.then64.i.btmtkuart_parse_dt.exit_crit_edge:    ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_parse_dt.exit

btmtkuart_parse_dt.exit.thread:                   ; preds = %if.then64.i.btmtkuart_parse_dt.exit.thread_crit_edge, %if.end51.i.btmtkuart_parse_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #7
  br label %do.body

btmtkuart_parse_dt.exit:                          ; preds = %if.then64.i.btmtkuart_parse_dt.exit_crit_edge, %if.end51.i.btmtkuart_parse_dt.exit_crit_edge, %if.end43.i.btmtkuart_parse_dt.exit_crit_edge, %if.then39.i, %if.end24.i.btmtkuart_parse_dt.exit_crit_edge, %if.end16.i.btmtkuart_parse_dt.exit_crit_edge, %if.end.i.btmtkuart_parse_dt.exit_crit_edge, %if.then.i.btmtkuart_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call34.i, %if.then39.i ], [ %call53.i, %if.end51.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call66.i, %if.then64.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call3.i, %if.then.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call10.i, %if.end.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call18.i, %if.end16.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call26.i, %if.end24.i.btmtkuart_parse_dt.exit_crit_edge ], [ %call45.i, %if.end43.i.btmtkuart_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #7
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %btmtkuart_parse_dt.exit.cleanup_crit_edge, label %btmtkuart_parse_dt.exit.do.body_crit_edge

btmtkuart_parse_dt.exit.do.body_crit_edge:        ; preds = %btmtkuart_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

btmtkuart_parse_dt.exit.cleanup_crit_edge:        ; preds = %btmtkuart_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %btmtkuart_parse_dt.exit.do.body_crit_edge, %btmtkuart_parse_dt.exit.thread
  %tx_work = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 12
  call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #7
  %24 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 12, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @btmtkuart_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry15 = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @btmtkuart_tx_work, ptr %func, align 4
  %txq = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 14, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %28 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %qlen.i.i, align 4
  %call.i146 = call ptr @hci_alloc_dev_priv(i32 noundef 0) #7
  %tobool18.not = icmp eq ptr %call.i146, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end24:                                         ; preds = %do.body
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i146, ptr %call.i, align 4
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 5
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %bus, align 2
  %driver_data.i.i147 = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 204, i32 8
  %33 = ptrtoint ptr %driver_data.i.i147 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i147, align 4
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 232
  %34 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @btmtkuart_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 233
  %35 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @btmtkuart_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 234
  %36 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @btmtkuart_flush, ptr %flush, align 8
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 235
  %37 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @btmtkuart_setup, ptr %setup, align 4
  %shutdown = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 236
  %38 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @btmtkuart_shutdown, ptr %shutdown, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 237
  %39 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @btmtkuart_send_frame, ptr %send, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 204, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %serdev, ptr %parent, align 8
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 31
  %41 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 70, ptr %manufacturer, align 2
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i146, i32 0, i32 118
  call void @_set_bit(i32 noundef 12, ptr noundef %quirks) #7
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end24.if.end58_crit_edge, label %if.then30

if.end24.if.end58_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then30:                                        ; preds = %if.end24
  %osc = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %osc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %osc, align 4
  %call.i148 = call i32 @clk_prepare(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i149, label %if.end.i150, label %if.then30.clk_prepare_enable.exit_crit_edge

if.then30.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i150:                                      ; preds = %if.then30
  %call1.i = call i32 @clk_enable(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i150.if.end34_crit_edge, label %if.then3.i

if.end.i150.if.end34_crit_edge:                   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then3.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %47) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then30.clk_prepare_enable.exit_crit_edge
  %retval.0.i151 = phi i32 [ %call.i148, %if.then30.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i151)
  %cmp32 = icmp slt i32 %retval.0.i151, 0
  br i1 %cmp32, label %clk_prepare_enable.exit.err_hci_free_dev_crit_edge, label %clk_prepare_enable.exit.if.end34_crit_edge

clk_prepare_enable.exit.if.end34_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

clk_prepare_enable.exit.err_hci_free_dev_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hci_free_dev

if.end34:                                         ; preds = %clk_prepare_enable.exit.if.end34_crit_edge, %if.end.i150.if.end34_crit_edge
  %boot = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %boot, align 4
  %tobool35.not = icmp eq ptr %49, null
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %49, i32 noundef 1) #7
  br label %if.end39

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %pinctrl = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pinctrl, align 4
  %pins_boot = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %pins_boot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pins_boot, align 4
  %call38 = call i32 @pinctrl_select_state(ptr noundef %51, ptr noundef %53) #7
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %vcc = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vcc, align 4
  %call40 = call i32 @regulator_enable(ptr noundef %55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.err_clk_disable_unprepare_crit_edge, label %if.end43

if.end39.err_clk_disable_unprepare_crit_edge:     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable_unprepare

if.end43:                                         ; preds = %if.end39
  %reset = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reset, align 4
  %tobool44.not = icmp eq ptr %57, null
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %57, i32 noundef 1) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %58 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %59, i32 noundef 0) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  call void @msleep(i32 noundef 50) #7
  %60 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %boot, align 4
  %tobool50.not = icmp eq ptr %61, null
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @devm_gpiod_put(ptr noundef %serdev, ptr noundef nonnull %61) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %pinctrl55 = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 7
  %62 = ptrtoint ptr %pinctrl55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pinctrl55, align 4
  %pins_runtime = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %pins_runtime to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pins_runtime, align 4
  %call56 = call i32 @pinctrl_select_state(ptr noundef %63, ptr noundef %65) #7
  call void @pm_runtime_no_callbacks(ptr noundef %serdev) #7
  %tx_state = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 13
  call void @_set_bit(i32 noundef 4, ptr noundef %tx_state) #7
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %if.end24.if.end58_crit_edge
  %call59 = call i32 @hci_register_dev(ptr noundef nonnull %call.i146) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end64:                                         ; preds = %if.end58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.13) #10
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %and69 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.end64.err_clk_disable_unprepare_crit_edge, label %if.then71

do.end64.err_clk_disable_unprepare_crit_edge:     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable_unprepare

if.then71:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  %vcc72 = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %vcc72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vcc72, align 4
  %call73 = call i32 @regulator_disable(ptr noundef %71) #7
  br label %err_clk_disable_unprepare

err_clk_disable_unprepare:                        ; preds = %if.then71, %do.end64.err_clk_disable_unprepare_crit_edge, %if.end39.err_clk_disable_unprepare_crit_edge
  %err.0 = phi i32 [ %call40, %if.end39.err_clk_disable_unprepare_crit_edge ], [ %call59, %if.then71 ], [ %call59, %do.end64.err_clk_disable_unprepare_crit_edge ]
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %and77 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %err_clk_disable_unprepare.err_hci_free_dev_crit_edge, label %if.then79

err_clk_disable_unprepare.err_hci_free_dev_crit_edge: ; preds = %err_clk_disable_unprepare
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hci_free_dev

if.then79:                                        ; preds = %err_clk_disable_unprepare
  call void @__sanitizer_cov_trace_pc() #9
  %osc80 = getelementptr inbounds %struct.btmtkuart_dev, ptr %call.i, i32 0, i32 3
  %76 = ptrtoint ptr %osc80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %osc80, align 4
  call void @clk_disable(ptr noundef %77) #7
  call void @clk_unprepare(ptr noundef %77) #7
  br label %err_hci_free_dev

err_hci_free_dev:                                 ; preds = %if.then79, %err_clk_disable_unprepare.err_hci_free_dev_crit_edge, %clk_prepare_enable.exit.err_hci_free_dev_crit_edge
  %err.1 = phi i32 [ %retval.0.i151, %clk_prepare_enable.exit.err_hci_free_dev_crit_edge ], [ %err.0, %if.then79 ], [ %err.0, %err_clk_disable_unprepare.err_hci_free_dev_crit_edge ]
  call void @hci_free_dev(ptr noundef nonnull %call.i146) #7
  br label %cleanup

cleanup:                                          ; preds = %err_hci_free_dev, %if.end58.cleanup_crit_edge, %do.end22, %btmtkuart_parse_dt.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_hci_free_dev ], [ -12, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.i, %btmtkuart_parse_dt.exit.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtkuart_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vcc = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #7
  %osc = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %osc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %osc, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hci_unregister_dev(ptr noundef %3) #7
  tail call void @hci_free_dev(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtkuart_tx_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %serdev1 = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tx_state = getelementptr i8, ptr %work, i32 44
  %txq = getelementptr i8, ptr %work, i32 48
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 9
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 6
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 4
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #7
  %call48 = tail call ptr @skb_dequeue(ptr noundef %txq) #7
  %tobool.not49 = icmp eq ptr %call48, null
  br i1 %tobool.not49, label %while.cond.while.end_crit_edge, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  br label %if.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %while.cond.if.end_crit_edge
  %call50 = phi ptr [ %call, %cleanup.if.end_crit_edge ], [ %call48, %while.cond.if.end_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call50, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %call50, i32 0, i32 6
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len5, align 4
  %call6 = tail call i32 @serdev_device_write_buf(ptr noundef %1, ptr noundef %5, i32 noundef %7) #7
  %8 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %byte_tx, align 4
  %add = add i32 %9, %call6
  store i32 %add, ptr %byte_tx, align 4
  %call7 = tail call ptr @skb_pull(ptr noundef nonnull %call50, i32 noundef %call6) #7
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call50) #7
  br label %while.end

if.end11:                                         ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call50, i32 0, i32 3
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cb, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end11.cleanup_crit_edge [
    i8 1, label %if.end11.cleanup.sink.split_crit_edge
    i8 2, label %sw.bb13
    i8 3, label %sw.bb16
  ]

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb16, %sw.bb13, %if.end11.cleanup.sink.split_crit_edge
  %cmd_tx.sink53 = phi ptr [ %acl_tx, %sw.bb13 ], [ %sco_tx, %sw.bb16 ], [ %cmd_tx, %if.end11.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %cmd_tx.sink53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_tx.sink53, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %cmd_tx.sink53, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call50, i32 noundef 0) #7
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then9, %while.cond.while.end_crit_edge
  %17 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_state, align 4
  %19 = and i32 %18, 4
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %while.end25, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end25:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_open(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %call1 = tail call i32 @serdev_device_open(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef %retval.0.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end23_crit_edge, label %if.then6

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then6:                                         ; preds = %if.end
  %curr_speed = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %curr_speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_speed, align 4
  %desired_speed = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %desired_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desired_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  %18 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serdev, align 4
  %. = select i1 %cmp.not, i32 %15, i32 115200
  %call12 = tail call i32 @serdev_device_set_baudrate(ptr noundef %19, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then6
  %name16 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %20 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serdev, align 4
  %init_name.i61 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i61, align 8
  %tobool.not.i62 = icmp eq ptr %23, null
  br i1 %tobool.not.i62, label %if.end.i63, label %if.then15.dev_name.exit65_crit_edge

if.then15.dev_name.exit65_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit65

if.end.i63:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit65

dev_name.exit65:                                  ; preds = %if.end.i63, %if.then15.dev_name.exit65_crit_edge
  %retval.0.i64 = phi ptr [ %25, %if.end.i63 ], [ %23, %if.then15.dev_name.exit65_crit_edge ]
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name16, ptr noundef %retval.0.i64) #7
  br label %err_serdev_close

if.end21:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_set_flow_control(ptr noundef %27, i1 noundef zeroext false) #7
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end.if.end23_crit_edge
  %stp_cursor = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %stp_cursor to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %stp_cursor, align 2
  %stp_dlen = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %stp_dlen to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %stp_dlen, align 4
  %30 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serdev, align 4
  tail call void @pm_runtime_enable(ptr noundef %31) #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end29

if.then.i:                                        ; preds = %if.end23
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_disable_rpm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_disable_rpm_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_rpm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %err_disable_rpm

if.end29:                                         ; preds = %if.end23
  %clk = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %call.i67 = tail call i32 @clk_prepare(ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69, label %if.end29.clk_prepare_enable.exit_crit_edge

if.end29.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i69:                                       ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i69.cleanup_crit_edge, label %if.then3.i

if.end.i69.cleanup_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %34) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end29.clk_prepare_enable.exit_crit_edge
  %retval.0.i70 = phi i32 [ %call.i67, %if.end29.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i70)
  %cmp31 = icmp slt i32 %retval.0.i70, 0
  br i1 %cmp31, label %err_put_rpm, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_put_rpm:                                      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i71 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #7
  br label %err_disable_rpm

err_disable_rpm:                                  ; preds = %err_put_rpm, %do.end11.i.i.i.i.i, %if.then.i.err_disable_rpm_crit_edge
  %err.1 = phi i32 [ %retval.0.i70, %err_put_rpm ], [ %call.i, %if.then.i.err_disable_rpm_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  tail call void @__pm_runtime_disable(ptr noundef %31, i1 noundef zeroext true) #7
  br label %err_serdev_close

err_serdev_close:                                 ; preds = %err_disable_rpm, %dev_name.exit65
  %err.2 = phi i32 [ %call12, %dev_name.exit65 ], [ %err.1, %err_disable_rpm ]
  %35 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %err_serdev_close, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i69.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call1, %dev_name.exit ], [ %err.2, %err_serdev_close ], [ 0, %if.end.i69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %clk = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serdev = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_write_flush(ptr noundef %3) #7
  %txq = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 14
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  %tx_work = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #7
  %rx_skb = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #7
  %6 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_skb, align 4
  %stp_cursor = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %stp_cursor to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %stp_cursor, align 2
  %stp_dlen = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %stp_dlen to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %stp_dlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_setup(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params.i162 = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i163 = alloca i32, align 4
  %param.i164 = alloca i8, align 1
  %wmt_params.i152 = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i = alloca i32, align 4
  %param.i153 = alloca i8, align 1
  %wmt_params.i147 = alloca %struct.btmtk_hci_wmt_params, align 8
  %fw.i = alloca ptr, align 4
  %wmt_params.i = alloca %struct.btmtk_hci_wmt_params, align 4
  %baudrate.i = alloca i32, align 4
  %param.i = alloca i8, align 1
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %tci_sleep = alloca %struct.btmtk_tci_sleep, align 1
  %status = alloca i32, align 4
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #7
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %5 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %6 = call ptr @memset(ptr %wmt_params, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tci_sleep) #7
  %7 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 2
  %9 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 3
  %10 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 4
  %11 = call ptr @memset(ptr %tci_sleep, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %status, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #7
  %13 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %param, align 1
  %call1 = tail call i64 @ktime_get() #7
  %tx_state = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tx_state, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %17 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %wmt_params, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %2, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %3, align 2
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %4, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %5, align 4
  %call4 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %tx_state) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %data8 = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data8, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i) #7
  %28 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baudrate.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #7
  %desired_speed.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %27, i32 0, i32 10
  %32 = ptrtoint ptr %desired_speed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desired_speed.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %35 = ptrtoint ptr %baudrate.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %baudrate.i, align 4
  %36 = ptrtoint ptr %wmt_params.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %wmt_params.i, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %28, align 1
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 4, ptr %29, align 2
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %baudrate.i, ptr %30, align 4
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %31, align 4
  %call1.i = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.41, ptr noundef %name.i, i32 noundef %call1.i) #7
  br label %btmtkuart_change_baudrate.exit

if.end.i:                                         ; preds = %if.then10
  %serdev.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %27, i32 0, i32 1
  %41 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serdev.i, align 4
  %43 = ptrtoint ptr %desired_speed.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desired_speed.i, align 4
  %call3.i = call i32 @serdev_device_set_baudrate(ptr noundef %42, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name6.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.42, ptr noundef %name6.i, i32 noundef %call3.i) #7
  br label %btmtkuart_change_baudrate.exit

if.end8.i:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serdev.i, align 4
  call void @serdev_device_set_flow_control(ptr noundef %46, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %param.i, align 1
  %48 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serdev.i, align 4
  %call11.i = call i32 @serdev_device_write_buf(ptr noundef %49, ptr noundef nonnull %param.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %50 = icmp slt i32 %call11.i, 1
  br i1 %50, label %if.end8.i.btmtkuart_change_baudrate.exit_crit_edge, label %if.end15.i

if.end8.i.btmtkuart_change_baudrate.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_change_baudrate.exit

if.end15.i:                                       ; preds = %if.end8.i
  %51 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %serdev.i, align 4
  call void @serdev_device_wait_until_sent(ptr noundef %52, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 22000, i32 noundef 2) #7
  %53 = ptrtoint ptr %wmt_params.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %wmt_params.i, align 4
  %54 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 7, ptr %28, align 1
  %55 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %29, align 2
  %56 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %30, align 4
  %57 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %31, align 4
  %call22.i = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %name25.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.43, ptr noundef %name25.i, i32 noundef %call22.i) #7
  br label %btmtkuart_change_baudrate.exit

if.end27.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %desired_speed.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %desired_speed.i, align 4
  %curr_speed.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %27, i32 0, i32 11
  %60 = ptrtoint ptr %curr_speed.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %curr_speed.i, align 4
  br label %btmtkuart_change_baudrate.exit

btmtkuart_change_baudrate.exit:                   ; preds = %if.end27.i, %if.then24.i, %if.end8.i.btmtkuart_change_baudrate.exit_crit_edge, %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baudrate.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i) #7
  br label %if.end12

if.end12:                                         ; preds = %btmtkuart_change_baudrate.exit, %if.end7.if.end12_crit_edge
  %61 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 23, ptr %wmt_params, align 4
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %2, align 1
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %3, align 2
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %4, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %status, ptr %5, align 4
  %call18 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %name21 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name21, i32 noundef %call18) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp24 = icmp eq i32 %67, 2
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %name26 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.32, ptr noundef %name26) #7
  br label %ignore_setup_fw

if.end28:                                         ; preds = %if.end23
  %68 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data8, align 4
  %fwname = getelementptr inbounds %struct.btmtkuart_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %fwname to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fwname, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i147) #7
  %72 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i147, i32 0, i32 1
  %73 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i147, i32 0, i32 2
  %74 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i147, i32 0, i32 3
  %75 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i147, i32 0, i32 4
  %76 = ptrtoint ptr %wmt_params.i147 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 144115188075855871, ptr %wmt_params.i147, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %77 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !137
  %dev.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %71, ptr noundef %dev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i148 = icmp slt i32 %call.i, 0
  br i1 %cmp.i148, label %mtk_setup_firmware.exit.thread, label %if.end.i151

mtk_setup_firmware.exit.thread:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %name.i149 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.44, ptr noundef %name.i149, i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i147) #7
  br label %cleanup

if.end.i151:                                      ; preds = %if.end28
  %78 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fw.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %81)
  %cmp1.i = icmp ult i32 %81, 30
  br i1 %cmp1.i, label %if.end.i151.mtk_setup_firmware.exit.thread175_crit_edge, label %if.end3.i

if.end.i151.mtk_setup_firmware.exit.thread175_crit_edge: ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_setup_firmware.exit.thread175

if.end3.i:                                        ; preds = %if.end.i151
  %data.i = getelementptr inbounds %struct.firmware, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %sub.i = add i32 %81, -30
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.not70.i = icmp eq i32 %sub.i, 0
  br i1 %cmp4.not70.i, label %if.end3.i.while.end.i_crit_edge, label %while.body.preheader.i

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end3.i
  %add.ptr.i = getelementptr i8, ptr %83, i32 30
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.preheader.i
  %flag.073.i = phi i8 [ %flag.1.i, %if.end24.i.while.body.i_crit_edge ], [ 1, %while.body.preheader.i ]
  %fw_size.072.i = phi i32 [ %sub6.i, %if.end24.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %fw_ptr.071.i = phi ptr [ %add.ptr26.i, %if.end24.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %85 = call i32 @llvm.smin.i32(i32 %fw_size.072.i, i32 250) #7
  %sub6.i = sub i32 %fw_size.072.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp eq i32 %sub6.i, 0
  br i1 %cmp7.i, label %while.body.i.if.end14.i_crit_edge, label %if.else.i

while.body.i.if.end14.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fw.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %sub10.i = add i32 %89, -30
  call void @__sanitizer_cov_trace_cmp4(i32 %fw_size.072.i, i32 %sub10.i)
  %cmp11.i = icmp ult i32 %fw_size.072.i, %sub10.i
  %spec.select.i = select i1 %cmp11.i, i8 2, i8 %flag.073.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %while.body.i.if.end14.i_crit_edge
  %flag.1.i = phi i8 [ 3, %while.body.i.if.end14.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %90 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %flag.1.i, ptr %72, align 1
  %conv.i = trunc i32 %85 to i16
  %91 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i, ptr %73, align 2
  %92 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %fw_ptr.071.i, ptr %74, align 4
  %call18.i = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %name22.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45, ptr noundef %name22.i, i32 noundef %call18.i) #7
  br label %mtk_setup_firmware.exit.thread175

if.end24.i:                                       ; preds = %if.end14.i
  %add.ptr26.i = getelementptr i8, ptr %fw_ptr.071.i, i32 %85
  br i1 %cmp7.i, label %if.end24.i.while.end.i_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end24.i.while.end.i_crit_edge, %if.end3.i.while.end.i_crit_edge
  %93 = ptrtoint ptr %wmt_params.i147 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 7, ptr %wmt_params.i147, align 8
  %94 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %72, align 1
  %95 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %73, align 2
  %96 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %74, align 4
  %97 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %75, align 8
  %call32.i = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %mtk_setup_firmware.exit

if.then35.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name36.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.46, ptr noundef %name36.i, i32 noundef %call32.i) #7
  br label %mtk_setup_firmware.exit.thread175

mtk_setup_firmware.exit.thread175:                ; preds = %if.then35.i, %if.then21.i, %if.end.i151.mtk_setup_firmware.exit.thread175_crit_edge
  %err.0.i.ph = phi i32 [ -22, %if.end.i151.mtk_setup_firmware.exit.thread175_crit_edge ], [ %call32.i, %if.then35.i ], [ %call18.i, %if.then21.i ]
  %98 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %99) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i147) #7
  br label %cleanup

mtk_setup_firmware.exit:                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  %100 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %101) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i147) #7
  br label %ignore_setup_fw

ignore_setup_fw:                                  ; preds = %mtk_setup_firmware.exit, %if.then25
  %call34 = call i64 @ktime_get() #7
  %add.i = add i64 %call34, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 789) #7
  %102 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i152, i32 0, i32 1
  %103 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i152, i32 0, i32 2
  %104 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i152, i32 0, i32 3
  %105 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i152, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i152) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %106 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %status.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i153) #7
  %107 = ptrtoint ptr %param.i153 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %param.i153, align 1
  %108 = ptrtoint ptr %wmt_params.i152 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 6, ptr %wmt_params.i152, align 4
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 4, ptr %102, align 1
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %103, align 2
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %param.i153, ptr %104, align 4
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %status.i, ptr %105, align 4
  %call.i154190 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i152) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154190)
  %cmp.i155191 = icmp slt i32 %call.i154190, 0
  br i1 %cmp.i155191, label %ignore_setup_fw.for.end.thread_crit_edge, label %ignore_setup_fw.btmtkuart_func_query.exit_crit_edge

ignore_setup_fw.btmtkuart_func_query.exit_crit_edge: ; preds = %ignore_setup_fw
  br label %btmtkuart_func_query.exit

ignore_setup_fw.for.end.thread_crit_edge:         ; preds = %ignore_setup_fw
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then58.for.end.thread_crit_edge, %ignore_setup_fw.for.end.thread_crit_edge
  %call.i154.lcssa = phi i32 [ %call.i154190, %ignore_setup_fw.for.end.thread_crit_edge ], [ %call.i154, %if.then58.for.end.thread_crit_edge ]
  %name.i156 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.47, ptr noundef %name.i156, i32 noundef %call.i154.lcssa) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i153) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i152) #7
  br label %cleanup

btmtkuart_func_query.exit:                        ; preds = %if.then58.btmtkuart_func_query.exit_crit_edge, %ignore_setup_fw.btmtkuart_func_query.exit_crit_edge
  %113 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i153) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i152) #7
  %115 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %114)
  %cmp47.not = icmp eq i32 %114, 5
  br i1 %cmp47.not, label %land.lhs.true, label %btmtkuart_func_query.exit.for.end_crit_edge

btmtkuart_func_query.exit.for.end_crit_edge:      ; preds = %btmtkuart_func_query.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %btmtkuart_func_query.exit
  %call51 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call51, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call51, %add.i
  br i1 %cmp3.i, label %if.then54, label %if.then58

if.then54:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i162) #7
  %116 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i162, i32 0, i32 1
  %117 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i162, i32 0, i32 2
  %118 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i162, i32 0, i32 3
  %119 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i162, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i163) #7
  %120 = ptrtoint ptr %status.i163 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %status.i163, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i164) #7
  %121 = ptrtoint ptr %param.i164 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %param.i164, align 1
  %122 = ptrtoint ptr %wmt_params.i162 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 6, ptr %wmt_params.i162, align 4
  %123 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %116, align 1
  %124 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %117, align 2
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %param.i164, ptr %118, align 4
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %status.i163, ptr %119, align 4
  %call.i165 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %if.then.i168, label %if.end.i169

if.then.i168:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %name.i167 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.47, ptr noundef %name.i167, i32 noundef %call.i165) #7
  br label %btmtkuart_func_query.exit171

if.end.i169:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %status.i163 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %status.i163, align 4
  br label %btmtkuart_func_query.exit171

btmtkuart_func_query.exit171:                     ; preds = %if.end.i169, %if.then.i168
  %retval.0.i170 = phi i32 [ %call.i165, %if.then.i168 ], [ %128, %if.end.i169 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i164) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i163) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i162) #7
  %129 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %retval.0.i170, ptr %status, align 4
  br label %for.end

if.then58:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i152) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %130 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %status.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i153) #7
  %131 = ptrtoint ptr %param.i153 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %param.i153, align 1
  %132 = ptrtoint ptr %wmt_params.i152 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 6, ptr %wmt_params.i152, align 4
  %133 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 4, ptr %102, align 1
  %134 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %103, align 2
  %135 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %param.i153, ptr %104, align 4
  %136 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %status.i, ptr %105, align 4
  %call.i154 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i152) #7
  %cmp.i155 = icmp slt i32 %call.i154, 0
  br i1 %cmp.i155, label %if.then58.for.end.thread_crit_edge, label %if.then58.btmtkuart_func_query.exit_crit_edge

if.then58.btmtkuart_func_query.exit_crit_edge:    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_func_query.exit

if.then58.for.end.thread_crit_edge:               ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %btmtkuart_func_query.exit171, %btmtkuart_func_query.exit.for.end_crit_edge
  %137 = phi i32 [ %retval.0.i170, %btmtkuart_func_query.exit171 ], [ %114, %btmtkuart_func_query.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp60 = icmp slt i32 %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %137)
  %cmp61.not = icmp eq i32 %137, 5
  %brmerge = or i1 %cmp61.not, %cmp60
  %phi.sel.mux = select i1 %cmp61.not, i32 -110, i32 %137
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %if.end67

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp68 = icmp eq i32 %137, 4
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %name70 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.33, ptr noundef %name70) #7
  br label %ignore_func_on

if.end72:                                         ; preds = %if.end67
  %138 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 6, ptr %wmt_params, align 4
  %139 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %2, align 1
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %3, align 2
  %141 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %param, ptr %4, align 4
  %142 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %5, align 4
  %call78 = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then80, label %if.end72.ignore_func_on_crit_edge

if.end72.ignore_func_on_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_func_on

if.then80:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %name81 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %name81, i32 noundef %call78) #7
  br label %cleanup

ignore_func_on:                                   ; preds = %if.end72.ignore_func_on_crit_edge, %if.then69
  %143 = ptrtoint ptr %tci_sleep to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 5, ptr %tci_sleep, align 1
  %144 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 16390, ptr %7, align 1
  %145 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 16390, ptr %8, align 1
  %146 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %9, align 1
  %147 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %10, align 1
  %call86 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -902, i32 noundef 7, ptr noundef nonnull %tci_sleep, i32 noundef 1000) #7
  %cmp.i172 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then88, label %if.end92

if.then88:                                        ; preds = %ignore_func_on
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %call86 to i32
  %name90 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name90, i32 noundef %148) #7
  br label %cleanup

if.end92:                                         ; preds = %ignore_func_on
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call86, i32 noundef 0) #7
  %call93 = call i64 @ktime_get() #7
  %sub = sub i64 %call93, %call1
  %shr95 = lshr i64 %sub, 10
  %name96 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.36, ptr noundef %name96, i64 noundef %shr95) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then88, %if.then80, %for.end.cleanup_crit_edge, %for.end.thread, %mtk_setup_firmware.exit.thread175, %mtk_setup_firmware.exit.thread, %if.then20, %if.then5
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ %call18, %if.then20 ], [ %148, %if.then88 ], [ 0, %if.end92 ], [ %call78, %if.then80 ], [ %phi.sel.mux, %for.end.cleanup_crit_edge ], [ %call.i, %mtk_setup_firmware.exit.thread ], [ %err.0.i.ph, %mtk_setup_firmware.exit.thread175 ], [ %call.i154.lcssa, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tci_sleep) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_shutdown(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #7
  %0 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #7
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %param, align 1
  %5 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %wmt_params, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %1, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %param, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %call = call fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_send_frame(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call1, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 4
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false, !prof !138

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_tailroom.exit:                                ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i29 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i30 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i31 = sub i32 %sub.ptr.lhs.cast.i29, %sub.ptr.rhs.cast.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i31)
  %cmp5 = icmp slt i32 %sub.ptr.sub.i31, 2
  br i1 %cmp5, label %skb_tailroom.exit.if.then_crit_edge, label %skb_tailroom.exit.if.end9_crit_edge

skb_tailroom.exit.if.end9_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

skb_tailroom.exit.if.then_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_tailroom.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 4, i32 noundef 2, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %skb_tailroom.exit.if.end9_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #7
  %17 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %call10, align 1
  %18 = trunc i32 %16 to i16
  %conv = and i16 %18, 4095
  %dlen11 = getelementptr inbounds %struct.mtk_stp_hdr, ptr %call10, i32 0, i32 1
  %19 = ptrtoint ptr %dlen11 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv, ptr %dlen11, align 1
  %cs = getelementptr inbounds %struct.mtk_stp_hdr, ptr %call10, i32 0, i32 2
  %20 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %cs, align 1
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 0, ptr %call.i, align 1
  %txq = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #7
  %tx_state.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 13
  %call.i32 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i, label %if.end9.btmtkuart_tx_wakeup.exit_crit_edge, label %if.then.i

if.end9.btmtkuart_tx_wakeup.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_tx_wakeup.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state.i) #7
  br label %btmtkuart_tx_wakeup.exit

btmtkuart_tx_wakeup.exit:                         ; preds = %if.then.i, %if.end9.btmtkuart_tx_wakeup.exit_crit_edge
  %tx_work.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %tx_work.i) #7
  br label %cleanup

cleanup:                                          ; preds = %btmtkuart_tx_wakeup.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %btmtkuart_tx_wakeup.exit ], [ %call6, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_receive_buf(ptr nocapture noundef readonly %serdev, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp57.i = icmp sgt i32 %count, 0
  br i1 %cmp57.i, label %while.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %stp_dlen.i.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %5, i32 0, i32 19
  %stp_cursor.i.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %5, i32 0, i32 18
  %arrayidx20.i.i = getelementptr %struct.btmtkuart_dev, ptr %5, i32 0, i32 17, i32 2
  %dlen.i.i = getelementptr %struct.btmtkuart_dev, ptr %5, i32 0, i32 17, i32 3
  %rx_skb.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %5, i32 0, i32 15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sz_left.060.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %sub13.i, %if.end12.i.while.body.i_crit_edge ]
  %p_left.058.i = phi ptr [ %data, %while.body.lr.ph.i ], [ %add.ptr14.i, %if.end12.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %stp_dlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  %8 = ptrtoint ptr %stp_cursor.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stp_cursor.i.i, align 2
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i.i = icmp ugt i8 %9, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.while.body.i.i.preheader_crit_edge

land.lhs.true.i.i.while.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %stp_cursor.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %stp_cursor.i.i, align 2
  br label %while.body.i.i.preheader

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp580.i.i = icmp ult i8 %9, 6
  br i1 %cmp580.i.i, label %if.end.i.i.while.body.i.i.preheader_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.end.i.i.while.body.i.i.preheader_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.end.i.i.while.body.i.i.preheader_crit_edge, %if.then.i.i, %land.lhs.true.i.i.while.body.i.i.preheader_crit_edge
  %.ph = phi i8 [ 0, %if.then.i.i ], [ %9, %land.lhs.true.i.i.while.body.i.i.preheader_crit_edge ], [ %9, %if.end.i.i.while.body.i.i.preheader_crit_edge ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %11 = phi i8 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.ph, %while.body.i.i.preheader ]
  %data.addr.084.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %p_left.058.i, %while.body.i.i.preheader ]
  %count.addr.083.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sz_left.060.i, %while.body.i.i.preheader ]
  %conv4.i.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %data.addr.084.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.addr.084.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.btmtkuart_dev, ptr %5, i32 0, i32 17, i32 %conv4.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx.i.i, align 1
  %15 = ptrtoint ptr %stp_cursor.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stp_cursor.i.i, align 2
  %inc.i.i = add i8 %16, 1
  store i8 %inc.i.i, ptr %stp_cursor.i.i, align 2
  %incdec.ptr.i.i = getelementptr i8, ptr %data.addr.084.i.i, i32 1
  %dec.i.i = add nsw i32 %count.addr.083.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc.i.i)
  %cmp5.i.i = icmp ult i8 %inc.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.083.i.i)
  %cmp7.i.i = icmp ugt i32 %count.addr.083.i.i, 1
  %or.cond.i.i = select i1 %cmp5.i.i, i1 %cmp7.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge
  %count.addr.0.lcssa.i.i = phi i32 [ %sz_left.060.i, %if.end.i.i.while.end.i.i_crit_edge ], [ %dec.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %data.addr.0.lcssa.i.i = phi ptr [ %p_left.058.i, %if.end.i.i.while.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %.lcssa.i.i = phi i8 [ %9, %if.end.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %17 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %stp_dlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool12.not.i.i = icmp eq i16 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.lcssa.i.i)
  %cmp16.i.i = icmp ugt i8 %.lcssa.i.i, 5
  %or.cond79.i.i = select i1 %tobool12.not.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond79.i.i, label %if.then18.i.i, label %while.end.i.i.if.end39.i.i_crit_edge

while.end.i.i.if.end39.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then18.i.i:                                    ; preds = %while.end.i.i
  %19 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %dlen.i.i, align 1
  %21 = and i16 %20, 4095
  %22 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %stp_dlen.i.i, align 4
  %23 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %24)
  %cmp25.not.i.i = icmp ne i8 %24, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp29.i.i = icmp ugt i16 %21, 2048
  %or.cond78.i.i = select i1 %cmp25.not.i.i, i1 true, i1 %cmp29.i.i
  br i1 %or.cond78.i.i, label %if.then31.i.i, label %if.then18.i.i.if.end39.i.i_crit_edge

if.then18.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then31.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %name.i.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 2
  %conv33.i.i = zext i8 %24 to i32
  %conv35.i.i = zext i16 %21 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef %conv33.i.i, i32 noundef %conv35.i.i) #7
  %27 = ptrtoint ptr %stp_cursor.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %stp_cursor.i.i, align 2
  %28 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %stp_dlen.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then31.i.i, %if.then18.i.i.if.end39.i.i_crit_edge, %while.end.i.i.if.end39.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0.lcssa.i.i)
  %cmp40.i.i = icmp slt i32 %count.addr.0.lcssa.i.i, 1
  br i1 %cmp40.i.i, label %if.end39.i.i.if.end_crit_edge, label %mtk_stp_split.exit.i

if.end39.i.i.if.end_crit_edge:                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mtk_stp_split.exit.i:                             ; preds = %if.end39.i.i
  %29 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %stp_dlen.i.i, align 4
  %conv45.i.i = zext i16 %30 to i32
  %31 = tail call i32 @llvm.umin.i32(i32 %count.addr.0.lcssa.i.i, i32 %conv45.i.i) #7
  %32 = trunc i32 %31 to i16
  %conv50.i.i = sub i16 %30, %32
  %33 = ptrtoint ptr %stp_dlen.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv50.i.i, ptr %stp_dlen.i.i, align 4
  %tobool.not.i = icmp eq ptr %data.addr.0.lcssa.i.i, null
  br i1 %tobool.not.i, label %mtk_stp_split.exit.i.if.end_crit_edge, label %if.end.i

mtk_stp_split.exit.i.if.end_crit_edge:            ; preds = %mtk_stp_split.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %mtk_stp_split.exit.i
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %36 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_skb.i, align 4
  %cmp.i.i.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr null, ptr %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not36.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not36.i.i, label %if.end.i.if.end12.sink.split.i_crit_edge, label %if.end.i.while.body.i38.i_crit_edge

if.end.i.while.body.i38.i_crit_edge:              ; preds = %if.end.i
  br label %while.body.i38.i

if.end.i.if.end12.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split.i

while.body.i38.i:                                 ; preds = %while.body.i38.i.backedge, %if.end.i.while.body.i38.i_crit_edge
  %skb.addr.139.i.i = phi ptr [ %skb.addr.139.i.i.be, %while.body.i38.i.backedge ], [ %spec.select.i.i, %if.end.i.while.body.i38.i_crit_edge ]
  %buffer.addr.038.i.i = phi ptr [ %add.ptr37.i.i, %while.body.i38.i.backedge ], [ %data.addr.0.lcssa.i.i, %if.end.i.while.body.i38.i_crit_edge ]
  %count.addr.037.i.i = phi i32 [ %sub36.i.i, %while.body.i38.i.backedge ], [ %31, %if.end.i.while.body.i38.i_crit_edge ]
  %tobool1.not.i.i = icmp eq ptr %skb.addr.139.i.i, null
  br i1 %tobool1.not.i.i, label %for.cond.preheader.i.i, label %while.body.i38.i.if.end26.i.i_crit_edge

while.body.i38.i.if.end26.i.i_crit_edge:          ; preds = %while.body.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i38.i
  %38 = ptrtoint ptr %buffer.addr.038.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buffer.addr.038.i.i, align 1
  %switch.tableidx = add i8 %39, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %40 = icmp ult i8 %switch.tableidx, 3
  br i1 %40, label %switch.lookup, label %for.cond.preheader.i.i.h4_recv_buf.exit.thread.i_crit_edge

for.cond.preheader.i.i.h4_recv_buf.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %h4_recv_buf.exit.thread.i

switch.lookup:                                    ; preds = %for.cond.preheader.i.i
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %maxlen.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 4
  %41 = ptrtoint ptr %maxlen.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %maxlen.i.i, align 4
  %conv10.i.i = zext i16 %42 to i32
  %add.i.i.i = add nuw nsw i32 %conv10.i.i, 8
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %switch.lookup.h4_recv_buf.exit.thread.i_crit_edge, label %if.end25.i.i

switch.lookup.h4_recv_buf.exit.thread.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %h4_recv_buf.exit.thread.i

if.end25.i.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %46, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %39, ptr %cb.i.i, align 8
  %hlen.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 1
  %48 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hlen.i.i, align 1
  %conv19.i.i = zext i8 %49 to i16
  %expect.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv19.i.i, ptr %expect.i.i, align 2
  %sub.i.i = add i32 %count.addr.037.i.i, -1
  %add.ptr.i.i = getelementptr i8, ptr %buffer.addr.038.i.i, i32 1
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %while.body.i38.i.if.end26.i.i_crit_edge
  %count.addr.1.i.i = phi i32 [ %count.addr.037.i.i, %while.body.i38.i.if.end26.i.i_crit_edge ], [ %sub.i.i, %if.end25.i.i ]
  %buffer.addr.1.i.i = phi ptr [ %buffer.addr.038.i.i, %while.body.i38.i.if.end26.i.i_crit_edge ], [ %add.ptr.i.i, %if.end25.i.i ]
  %skb.addr.3.i.i = phi ptr [ %skb.addr.139.i.i, %while.body.i38.i.if.end26.i.i_crit_edge ], [ %call.i.i.i.i, %if.end25.i.i ]
  %expect29.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %expect29.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %expect29.i.i, align 2
  %conv30.i.i = zext i16 %52 to i32
  %len31.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %len31.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len31.i.i, align 4
  %sub32.i.i = sub i32 %conv30.i.i, %54
  %55 = tail call i32 @llvm.umin.i32(i32 %sub32.i.i, i32 %count.addr.1.i.i) #7
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.3.i.i, i32 noundef %55) #7
  %56 = call ptr @memcpy(ptr %call.i.i.i, ptr %buffer.addr.1.i.i, i32 %55)
  %sub36.i.i = sub i32 %count.addr.1.i.i, %55
  %add.ptr37.i.i = getelementptr i8, ptr %buffer.addr.1.i.i, i32 %55
  %57 = ptrtoint ptr %len31.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len31.i.i, align 4
  %59 = ptrtoint ptr %expect29.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %expect29.i.i, align 2
  %conv42.i.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv42.i.i)
  %cmp43.i.i = icmp ult i32 %58, %conv42.i.i
  br i1 %cmp43.i.i, label %if.end26.i.i.cleanup127.i.i_crit_edge, label %for.cond47.preheader.i.i

if.end26.i.i.cleanup127.i.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.i

for.cond47.preheader.i.i:                         ; preds = %if.end26.i.i
  %cb27.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %cb27.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cb27.i.i, align 8
  %switch.tableidx20 = add i8 %62, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx20)
  %63 = icmp ult i8 %switch.tableidx20, 3
  br i1 %63, label %switch.lookup19, label %for.cond47.preheader.i.i.return.sink.split.i.i_crit_edge

for.cond47.preheader.i.i.return.sink.split.i.i_crit_edge: ; preds = %for.cond47.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

switch.lookup19:                                  ; preds = %for.cond47.preheader.i.i
  %switch.idx.cast21 = zext i8 %switch.tableidx20 to i32
  %hlen72.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast21, i32 1
  %64 = ptrtoint ptr %hlen72.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hlen72.i.i, align 1
  %conv73.i.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv73.i.i)
  %cmp74.i.i = icmp eq i32 %58, %conv73.i.i
  br i1 %cmp74.i.i, label %if.then76.i.i, label %switch.lookup19.cleanup127.i.thread.i_crit_edge

switch.lookup19.cleanup127.i.thread.i_crit_edge:  ; preds = %switch.lookup19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread.i

if.then76.i.i:                                    ; preds = %switch.lookup19
  %lsize.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast21, i32 3
  %66 = ptrtoint ptr %lsize.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lsize.i.i, align 1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %67, label %if.then76.i.i.return.sink.split.i.i_crit_edge [
    i8 0, label %if.then76.i.i.cleanup127.i.thread.i_crit_edge
    i8 1, label %sw.bb79.i.i
    i8 2, label %sw.bb96.i.i
  ]

if.then76.i.i.cleanup127.i.thread.i_crit_edge:    ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread.i

if.then76.i.i.return.sink.split.i.i_crit_edge:    ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb79.i.i:                                      ; preds = %if.then76.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 19
  %69 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i, align 4
  %loff.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast21, i32 2
  %71 = ptrtoint ptr %loff.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %loff.i.i, align 2
  %idxprom.i.i = zext i8 %72 to i32
  %arrayidx81.i.i = getelementptr i8, ptr %70, i32 %idxprom.i.i
  %73 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx81.i.i, align 1
  %conv82.i.i = zext i8 %74 to i16
  %conv83.i.i = zext i8 %74 to i32
  %conv88.i.i = add i16 %60, %conv82.i.i
  %75 = ptrtoint ptr %expect29.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv88.i.i, ptr %expect29.i.i, align 2
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %sw.bb79.i.i.skb_tailroom.exit.i.i_crit_edge

sw.bb79.i.i.skb_tailroom.exit.i.i_crit_edge:      ; preds = %sw.bb79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %sw.bb79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %sw.bb79.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %sw.bb79.i.i.skb_tailroom.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %conv83.i.i)
  %cmp91.i.i = icmp slt i32 %cond.i.i.i, %conv83.i.i
  br i1 %cmp91.i.i, label %skb_tailroom.exit.i.i.return.sink.split.i.i_crit_edge, label %skb_tailroom.exit.i.i.sw.epilog.i.i_crit_edge

skb_tailroom.exit.i.i.sw.epilog.i.i_crit_edge:    ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

skb_tailroom.exit.i.i.return.sink.split.i.i_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.bb96.i.i:                                      ; preds = %if.then76.i.i
  %data97.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %data97.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data97.i.i, align 4
  %loff99.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast21, i32 2
  %84 = ptrtoint ptr %loff99.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %loff99.i.i, align 2
  %conv100.i.i = zext i8 %85 to i32
  %add.ptr101.i.i = getelementptr i8, ptr %83, i32 %conv100.i.i
  %86 = ptrtoint ptr %add.ptr101.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %add.ptr101.i.i, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #7
  %conv103.i.i = zext i16 %88 to i32
  %add108.i.i = add i16 %88, %60
  %89 = ptrtoint ptr %expect29.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %add108.i.i, ptr %expect29.i.i, align 2
  %data_len.i.i1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %data_len.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i2.i.i = icmp eq i32 %91, 0
  br i1 %tobool.i.not.i2.i.i, label %cond.false.i8.i.i, label %sw.bb96.i.i.skb_tailroom.exit10.i.i_crit_edge

sw.bb96.i.i.skb_tailroom.exit10.i.i_crit_edge:    ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit10.i.i

cond.false.i8.i.i:                                ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 17
  %92 = ptrtoint ptr %end.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i3.i.i, align 4
  %tail.i4.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i.i, i32 0, i32 16
  %94 = ptrtoint ptr %tail.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i4.i.i, align 8
  %sub.ptr.lhs.cast.i5.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i6.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i7.i.i = sub i32 %sub.ptr.lhs.cast.i5.i.i, %sub.ptr.rhs.cast.i6.i.i
  br label %skb_tailroom.exit10.i.i

skb_tailroom.exit10.i.i:                          ; preds = %cond.false.i8.i.i, %sw.bb96.i.i.skb_tailroom.exit10.i.i_crit_edge
  %cond.i9.i.i = phi i32 [ %sub.ptr.sub.i7.i.i, %cond.false.i8.i.i ], [ 0, %sw.bb96.i.i.skb_tailroom.exit10.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i9.i.i, i32 %conv103.i.i)
  %cmp112.i.i = icmp slt i32 %cond.i9.i.i, %conv103.i.i
  br i1 %cmp112.i.i, label %skb_tailroom.exit10.i.i.return.sink.split.i.i_crit_edge, label %skb_tailroom.exit10.i.i.sw.epilog.i.i_crit_edge

skb_tailroom.exit10.i.i.sw.epilog.i.i_crit_edge:  ; preds = %skb_tailroom.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

skb_tailroom.exit10.i.i.return.sink.split.i.i_crit_edge: ; preds = %skb_tailroom.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

sw.epilog.i.i:                                    ; preds = %skb_tailroom.exit10.i.i.sw.epilog.i.i_crit_edge, %skb_tailroom.exit.i.i.sw.epilog.i.i_crit_edge
  %dlen.0.i.i = phi i16 [ %88, %skb_tailroom.exit10.i.i.sw.epilog.i.i_crit_edge ], [ %conv82.i.i, %skb_tailroom.exit.i.i.sw.epilog.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dlen.0.i.i)
  %tobool118.not.i.i = icmp eq i16 %dlen.0.i.i, 0
  br i1 %tobool118.not.i.i, label %sw.epilog.i.i.cleanup127.i.thread.i_crit_edge, label %sw.epilog.i.i.cleanup127.i.i_crit_edge

sw.epilog.i.i.cleanup127.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.i

sw.epilog.i.i.cleanup127.i.thread.i_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread.i

cleanup127.i.i:                                   ; preds = %sw.epilog.i.i.cleanup127.i.i_crit_edge, %if.end26.i.i.cleanup127.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i.i)
  %tobool.not.i39.i = icmp eq i32 %sub36.i.i, 0
  br i1 %tobool.not.i39.i, label %h4_recv_buf.exit.i, label %cleanup127.i.i.while.body.i38.i.backedge_crit_edge

cleanup127.i.i.while.body.i38.i.backedge_crit_edge: ; preds = %cleanup127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i38.i.backedge

cleanup127.i.thread.i:                            ; preds = %sw.epilog.i.i.cleanup127.i.thread.i_crit_edge, %if.then76.i.i.cleanup127.i.thread.i_crit_edge, %switch.lookup19.cleanup127.i.thread.i_crit_edge
  %recv124.i.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast21, i32 5
  %96 = ptrtoint ptr %recv124.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %recv124.i.i, align 4
  %call125.i.i = tail call i32 %97(ptr noundef %35, ptr noundef nonnull %skb.addr.3.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i.i)
  %tobool.not.i3965.i = icmp eq i32 %sub36.i.i, 0
  br i1 %tobool.not.i3965.i, label %cleanup127.i.thread.i.if.end12.sink.split.i_crit_edge, label %cleanup127.i.thread.i.while.body.i38.i.backedge_crit_edge

cleanup127.i.thread.i.while.body.i38.i.backedge_crit_edge: ; preds = %cleanup127.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i38.i.backedge

cleanup127.i.thread.i.if.end12.sink.split.i_crit_edge: ; preds = %cleanup127.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split.i

while.body.i38.i.backedge:                        ; preds = %cleanup127.i.thread.i.while.body.i38.i.backedge_crit_edge, %cleanup127.i.i.while.body.i38.i.backedge_crit_edge
  %skb.addr.139.i.i.be = phi ptr [ %skb.addr.3.i.i, %cleanup127.i.i.while.body.i38.i.backedge_crit_edge ], [ null, %cleanup127.i.thread.i.while.body.i38.i.backedge_crit_edge ]
  br label %while.body.i38.i

return.sink.split.i.i:                            ; preds = %skb_tailroom.exit10.i.i.return.sink.split.i.i_crit_edge, %skb_tailroom.exit.i.i.return.sink.split.i.i_crit_edge, %if.then76.i.i.return.sink.split.i.i_crit_edge, %for.cond47.preheader.i.i.return.sink.split.i.i_crit_edge
  %retval.4.ph.i.i = phi ptr [ inttoptr (i32 -84 to ptr), %for.cond47.preheader.i.i.return.sink.split.i.i_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit.i.i.return.sink.split.i.i_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit10.i.i.return.sink.split.i.i_crit_edge ], [ inttoptr (i32 -84 to ptr), %if.then76.i.i.return.sink.split.i.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.3.i.i, i32 noundef 0) #7
  br label %h4_recv_buf.exit.thread.i

h4_recv_buf.exit.thread.i:                        ; preds = %return.sink.split.i.i, %switch.lookup.h4_recv_buf.exit.thread.i_crit_edge, %for.cond.preheader.i.i.h4_recv_buf.exit.thread.i_crit_edge
  %retval.4.i.ph.i = phi ptr [ %retval.4.ph.i.i, %return.sink.split.i.i ], [ inttoptr (i32 -84 to ptr), %for.cond.preheader.i.i.h4_recv_buf.exit.thread.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %switch.lookup.h4_recv_buf.exit.thread.i_crit_edge ]
  %98 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %retval.4.i.ph.i, ptr %rx_skb.i, align 4
  br label %btmtkuart_recv.exit

h4_recv_buf.exit.i:                               ; preds = %cleanup127.i.i
  %99 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %skb.addr.3.i.i, ptr %rx_skb.i, align 4
  %cmp.i40.i = icmp ugt ptr %skb.addr.3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %h4_recv_buf.exit.i.btmtkuart_recv.exit_crit_edge, label %h4_recv_buf.exit.i.if.end12.i_crit_edge

h4_recv_buf.exit.i.if.end12.i_crit_edge:          ; preds = %h4_recv_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

h4_recv_buf.exit.i.btmtkuart_recv.exit_crit_edge: ; preds = %h4_recv_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_recv.exit

if.end12.sink.split.i:                            ; preds = %cleanup127.i.thread.i.if.end12.sink.split.i_crit_edge, %if.end.i.if.end12.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %spec.select.i.i, %if.end.i.if.end12.sink.split.i_crit_edge ], [ null, %cleanup127.i.thread.i.if.end12.sink.split.i_crit_edge ]
  %100 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %.sink.i, ptr %rx_skb.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %h4_recv_buf.exit.i.if.end12.i_crit_edge
  %sub.ptr.lhs.cast.i = ptrtoint ptr %data.addr.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p_left.058.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i = getelementptr i8, ptr %p_left.058.i, i32 %sub.ptr.sub.i
  %101 = add i32 %sub.ptr.sub.i, %31
  %sub13.i = sub i32 %sz_left.060.i, %101
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %31
  %cmp.i = icmp sgt i32 %sub13.i, 0
  br i1 %cmp.i, label %if.end12.i.while.body.i_crit_edge, label %if.end12.i.if.end_crit_edge

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

btmtkuart_recv.exit:                              ; preds = %h4_recv_buf.exit.i.btmtkuart_recv.exit_crit_edge, %h4_recv_buf.exit.thread.i
  %retval.4.i47.i = phi ptr [ %retval.4.i.ph.i, %h4_recv_buf.exit.thread.i ], [ %skb.addr.3.i.i, %h4_recv_buf.exit.i.btmtkuart_recv.exit_crit_edge ]
  %102 = ptrtoint ptr %retval.4.i47.i to i32
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %5, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %104, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %102) #7
  %105 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %rx_skb.i, align 4
  %cmp = icmp slt ptr %retval.4.i47.i, null
  br i1 %cmp, label %btmtkuart_recv.exit.cleanup_crit_edge, label %btmtkuart_recv.exit.if.end_crit_edge

btmtkuart_recv.exit.if.end_crit_edge:             ; preds = %btmtkuart_recv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

btmtkuart_recv.exit.cleanup_crit_edge:            ; preds = %btmtkuart_recv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %btmtkuart_recv.exit.if.end_crit_edge, %if.end12.i.if.end_crit_edge, %mtk_stp_split.exit.i.if.end_crit_edge, %if.end39.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %107, i32 0, i32 199, i32 8
  %108 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %byte_rx, align 8
  %add = add i32 %109, %count
  store i32 %add, ptr %byte_rx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %btmtkuart_recv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %102, %btmtkuart_recv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtkuart_write_wakeup(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_state.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.btmtkuart_tx_wakeup.exit_crit_edge, label %if.then.i

entry.btmtkuart_tx_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btmtkuart_tx_wakeup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state.i) #7
  br label %btmtkuart_tx_wakeup.exit

btmtkuart_tx_wakeup.exit:                         ; preds = %if.then.i, %entry.btmtkuart_tx_wakeup.exit_crit_edge
  %tx_work.i = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tx_work.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtkuart_recv_event(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %5)
  %cmp = icmp eq i8 %5, -28
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_state = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_state, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 3264) #7
  %evt_skb = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %evt_skb, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %err_free_skb, label %if.end15

if.end15:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp18 = icmp eq i8 %12, -1
  br i1 %cmp18, label %if.then20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %tx_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.cleanup_crit_edge, label %do.end

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @wake_up_bit(ptr noundef %tx_state, i32 noundef 3) #7
  br label %cleanup

err_free_skb:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %evt_skb31 = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %evt_skb31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evt_skb31, align 4
  tail call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #7
  %15 = ptrtoint ptr %evt_skb31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %evt_skb31, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_skb, %do.end, %if.then20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end15.cleanup_crit_edge ], [ %call11, %err_free_skb ], [ -12, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr nocapture noundef readonly %wmt_params) unnamed_addr #2 align 64 {
entry:
  %wc = alloca %struct.mtk_hci_wmt_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 261, ptr nonnull %wc) #7
  %2 = call ptr @memset(ptr %wc, i32 255, i32 261)
  %dlen = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dlen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %4)
  %cmp = icmp ugt i16 %4, 250
  br i1 %cmp, label %entry.err_free_skb_crit_edge, label %if.end

entry.err_free_skb_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_skb

if.end:                                           ; preds = %entry
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 5
  %5 = ptrtoint ptr %wc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %wc, align 1
  %6 = ptrtoint ptr %wmt_params to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wmt_params, align 4
  %op2 = getelementptr inbounds %struct.mtk_wmt_hdr, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %op2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %op2, align 1
  %add5 = add nuw nsw i16 %4, 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %add5)
  %dlen7 = getelementptr inbounds %struct.mtk_wmt_hdr, ptr %wc, i32 0, i32 2
  %10 = ptrtoint ptr %dlen7 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %dlen7, align 1
  %flag = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag, align 1
  %flag8 = getelementptr inbounds %struct.mtk_wmt_hdr, ptr %wc, i32 0, i32 3
  %13 = ptrtoint ptr %flag8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %flag8, align 1
  %data = getelementptr inbounds %struct.mtk_hci_wmt_cmd, ptr %wc, i32 0, i32 1
  %data9 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %14 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data9, align 4
  %16 = call ptr @memcpy(ptr %data, ptr %15, i32 %conv)
  %tx_state = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %tx_state) #7
  %call12 = call i32 @__hci_cmd_send(ptr noundef %hdev, i16 noundef zeroext -913, i32 noundef %add, ptr noundef nonnull %wc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %tx_state) #7
  br label %err_free_skb

if.end17:                                         ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 125) #7
  %17 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_state, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end17.if.end31_crit_edge, label %wait_on_bit_timeout.exit

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

wait_on_bit_timeout.exit:                         ; preds = %if.end17
  %call3.i = call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %tx_state, i32 noundef 3, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 1000) #7
  %20 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call3.i, label %if.then27 [
    i32 -4, label %if.then23
    i32 0, label %wait_on_bit_timeout.exit.if.end31_crit_edge
  ]

wait_on_bit_timeout.exit.if.end31_crit_edge:      ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then23:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.37, ptr noundef %name) #7
  call void @_clear_bit(i32 noundef 3, ptr noundef %tx_state) #7
  br label %err_free_skb

if.then27:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name28 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.38, ptr noundef %name28) #7
  call void @_clear_bit(i32 noundef 3, ptr noundef %tx_state) #7
  br label %err_free_skb

if.end31:                                         ; preds = %wait_on_bit_timeout.exit.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %evt_skb = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %evt_skb, align 4
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data32, align 4
  %op33 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %op33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %op33, align 1
  %27 = ptrtoint ptr %op2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %op2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp37.not = icmp eq i8 %26, %28
  br i1 %cmp37.not, label %if.end47, label %if.then39

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %conv34 = zext i8 %26 to i32
  %conv36 = zext i8 %28 to i32
  %name40 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name40, i32 noundef %conv34, i32 noundef %conv36) #7
  br label %err_free_skb

if.end47:                                         ; preds = %if.end31
  %29 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %26, label %if.end47.sw.epilog_crit_edge [
    i8 23, label %sw.bb
    i8 6, label %sw.bb58
  ]

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %flag52 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %24, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %flag52 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flag52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp54 = icmp eq i8 %31, 2
  %. = select i1 %cmp54, i32 1, i32 2
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %status59 = getelementptr inbounds %struct.btmtk_hci_wmt_evt_funcc, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %status59 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %status59, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1056, i16 %33)
  %switch.selectcmp = icmp eq i16 %33, 1056
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %33)
  %switch.selectcmp112 = icmp eq i16 %33, 1028
  %switch.select113 = select i1 %switch.selectcmp112, i32 4, i32 %switch.select
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb, %if.end47.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %if.end47.sw.epilog_crit_edge ], [ %., %sw.bb ], [ %switch.select113, %sw.bb58 ]
  %status73 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %34 = ptrtoint ptr %status73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %status73, align 4
  %tobool74.not = icmp eq ptr %35, null
  br i1 %tobool74.not, label %sw.epilog.err_free_skb_crit_edge, label %if.then75

sw.epilog.err_free_skb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_skb

if.then75:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %status.0, ptr %35, align 4
  br label %err_free_skb

err_free_skb:                                     ; preds = %if.then75, %sw.epilog.err_free_skb_crit_edge, %if.then39, %if.then27, %if.then23, %if.then15, %entry.err_free_skb_crit_edge
  %err.0 = phi i32 [ %call12, %if.then15 ], [ -4, %if.then23 ], [ -110, %if.then27 ], [ -5, %if.then39 ], [ 0, %if.then75 ], [ 0, %sw.epilog.err_free_skb_crit_edge ], [ -22, %entry.err_free_skb_crit_edge ]
  %evt_skb78 = getelementptr inbounds %struct.btmtkuart_dev, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %evt_skb78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %evt_skb78, align 4
  call void @kfree_skb_reason(ptr noundef %38, i32 noundef 0) #7
  %39 = ptrtoint ptr %evt_skb78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %evt_skb78, align 4
  call void @llvm.lifetime.end.p0(i64 261, ptr nonnull %wc) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hci_cmd_send(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_btmtkuart__484_1128_btmtkuart_driver_init6, !1, !"__initcall__kmod_btmtkuart__484_1128_btmtkuart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1128, i32 1}
!2 = !{ptr @__exitcall_btmtkuart_driver_exit, !1, !"__exitcall_btmtkuart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author485, !4, !"__UNIQUE_ID_author485", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1130, i32 1}
!5 = !{ptr @__UNIQUE_ID_description486, !6, !"__UNIQUE_ID_description486", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1131, i32 1}
!7 = !{ptr @__UNIQUE_ID_version487, !8, !"__UNIQUE_ID_version487", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1132, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file488, !14, !"__UNIQUE_ID_file488", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1133, i32 1}
!15 = !{ptr @__UNIQUE_ID_license489, !14, !"__UNIQUE_ID_license489", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware490, !17, !"__UNIQUE_ID_firmware490", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1134, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware491, !19, !"__UNIQUE_ID_firmware491", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1135, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware492, !21, !"__UNIQUE_ID_firmware492", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1136, i32 1}
!22 = !{ptr @btmtkuart_driver, !23, !"btmtkuart_driver", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1119, i32 36}
!24 = !{ptr @mtk_of_match_table, !25, !"mtk_of_match_table", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1110, i32 34}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1096, i32 12}
!28 = !{ptr @mt7622_data, !29, !"mt7622_data", i1 false, i1 false}
!29 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1095, i32 36}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1101, i32 12}
!32 = !{ptr @mt7663_data, !33, !"mt7663_data", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1099, i32 36}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1106, i32 12}
!36 = !{ptr @mt7668_data, !37, !"mt7668_data", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1104, i32 36}
!38 = !{ptr @btmtkuart_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/btmtkuart.c", i32 989, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/btmtkuart.c", i32 995, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @btmtkuart_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @btmtkuart_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/btmtkuart.c", i32 1063, i32 3}
!51 = !{ptr @btmtkuart_probe._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @btmtkuart_probe._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @btmtkuart_client_ops, !54, !"btmtkuart_client_ops", i1 false, i1 false}
!54 = !{!"../drivers/bluetooth/btmtkuart.c", i32 545, i32 39}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/bluetooth/btmtkuart.c", i32 510, i32 4}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bluetooth/btmtkuart.c", i32 453, i32 4}
!59 = !{ptr @mtk_recv_pkts, !60, !"mtk_recv_pkts", i1 false, i1 false}
!60 = !{!"../drivers/bluetooth/btmtkuart.c", i32 365, i32 33}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/btmtkuart.c", i32 906, i32 30}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/bluetooth/btmtkuart.c", i32 910, i32 48}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/btmtkuart.c", i32 916, i32 51}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/btmtkuart.c", i32 922, i32 54}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/btmtkuart.c", i32 936, i32 14}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bluetooth/btmtkuart.c", i32 939, i32 4}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @btmtkuart_parse_dt._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @btmtkuart_parse_dt._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bluetooth/btmtkuart.c", i32 945, i32 10}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/btmtkuart.c", i32 951, i32 55}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bluetooth/btmtkuart.c", i32 958, i32 42}
!82 = !{ptr @skb_queue_head_init.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/btmtkuart.c", i32 558, i32 3}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/btmtkuart.c", i32 572, i32 4}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bluetooth/btmtkuart.c", i32 752, i32 4}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bluetooth/btmtkuart.c", i32 771, i32 3}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/btmtkuart.c", i32 776, i32 3}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/btmtkuart.c", i32 799, i32 3}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/btmtkuart.c", i32 812, i32 3}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bluetooth/btmtkuart.c", i32 828, i32 3}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/btmtkuart.c", i32 837, i32 2}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bluetooth/btmtkuart.c", i32 193, i32 3}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/btmtkuart.c", i32 199, i32 3}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/btmtkuart.c", i32 208, i32 3}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bluetooth/btmtkuart.c", i32 683, i32 3}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/btmtkuart.c", i32 690, i32 3}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bluetooth/btmtkuart.c", i32 717, i32 3}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/bluetooth/btmtkuart.c", i32 253, i32 3}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bluetooth/btmtkuart.c", i32 288, i32 4}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/btmtkuart.c", i32 306, i32 3}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bluetooth/btmtkuart.c", i32 656, i32 3}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148186909}
!135 = !{i64 598991, i64 599016, i64 599038, i64 599054, i64 599066, i64 599086, i64 599110, i64 599126, i64 599138}
!136 = !{i64 2148187097}
!137 = !{!"auto-init"}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2157845381}
