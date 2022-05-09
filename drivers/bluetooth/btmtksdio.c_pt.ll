; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btmtksdio.c_pt.bc'
source_filename = "../drivers/bluetooth/btmtksdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btmtksdio_data = type { ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.reg_read_cmd = type <{ i8, i8, i8, i32 }>
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btmtksdio_dev = type { ptr, ptr, ptr, %struct.work_struct, i32, %struct.sk_buff_head, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.mtkbtsdio_hdr = type <{ i16, i16, i8 }>
%struct.btmtk_hci_wmt_params = type { i8, i8, i16, ptr, ptr }
%struct.btmtk_tci_sleep = type <{ i8, i16, i16, i8, i8 }>
%struct.btmtk_wmt_hdr = type <{ i8, i8, i16, i8 }>
%struct.btmtk_hci_wmt_cmd = type { %struct.btmtk_wmt_hdr, [0 x i8] }
%struct.btmtk_hci_wmt_evt = type { %struct.hci_event_hdr, %struct.btmtk_wmt_hdr }
%struct.hci_event_hdr = type { i8, i8 }
%struct.btmtk_hci_wmt_evt_funcc = type <{ %struct.btmtk_hci_wmt_evt, i16 }>
%struct.btmtk_hci_wmt_evt_reg = type <{ %struct.btmtk_hci_wmt_evt, [2 x i8], i8, i32, i32 }>

@__initcall__kmod_btmtksdio__492_1137_btmtksdio_driver_init6 = internal global ptr @btmtksdio_driver_init, section ".initcall6.init", align 4
@btmtksdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.1, ptr @btmtksdio_table, ptr @btmtksdio_probe, ptr @btmtksdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @btmtksdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_btmtksdio_driver_exit = internal global ptr @btmtksdio_driver_exit, section ".exitcall.exit", align 4
@__param_str_enable_autosuspend = internal constant [29 x i8] c"btmtksdio.enable_autosuspend\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_autosuspend = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_autosuspend = internal constant %struct.kernel_param { ptr @__param_str_enable_autosuspend, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @enable_autosuspend } }, section "__param", align 4
@__UNIQUE_ID_enable_autosuspendtype493 = internal constant [43 x i8] c"btmtksdio.parmtype=enable_autosuspend:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_autosuspend494 = internal constant [64 x i8] c"btmtksdio.parm=enable_autosuspend:Enable autosuspend by default\00", section ".modinfo", align 1
@__UNIQUE_ID_author495 = internal constant [52 x i8] c"btmtksdio.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description496 = internal constant [61 x i8] c"btmtksdio.description=MediaTek Bluetooth SDIO driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version497 = internal constant [22 x i8] c"btmtksdio.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"btmtksdio\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file498 = internal constant [43 x i8] c"btmtksdio.file=drivers/bluetooth/btmtksdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [22 x i8] c"btmtksdio.license=GPL\00", section ".modinfo", align 1
@btmtksdio_table = internal constant { [4 x %struct.sdio_device_id], [48 x i8] } { [4 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 890, i16 30307, i32 ptrtoint (ptr @mt7663_data to i32) }, %struct.sdio_device_id { i8 -1, i16 890, i16 30312, i32 ptrtoint (ptr @mt7668_data to i32) }, %struct.sdio_device_id { i8 -1, i16 890, i16 31073, i32 ptrtoint (ptr @mt7921_data to i32) }, %struct.sdio_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@btmtksdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @btmtksdio_runtime_suspend, ptr @btmtksdio_runtime_resume, ptr @btmtksdio_runtime_suspend, ptr @btmtksdio_runtime_resume, ptr @btmtksdio_runtime_suspend, ptr @btmtksdio_runtime_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @btmtksdio_runtime_suspend, ptr @btmtksdio_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt7663_data = internal constant { %struct.btmtksdio_data, [24 x i8] } { %struct.btmtksdio_data { ptr @.str.3, i16 30307 }, [24 x i8] zeroinitializer }, align 32
@mt7668_data = internal constant { %struct.btmtksdio_data, [24 x i8] } { %struct.btmtksdio_data { ptr @.str.4, i16 30312 }, [24 x i8] zeroinitializer }, align 32
@mt7921_data = internal constant { %struct.btmtksdio_data, [24 x i8] } { %struct.btmtksdio_data { ptr @.str.5, i16 31009 }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7663pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7668pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mediatek/BT_RAM_CODE_MT7961_1_2_hdr.bin\00", [56 x i8] zeroinitializer }, align 32
@btmtksdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&bdev->txrx_work)\00", [60 x i8] zeroinitializer }, align 32
@btmtksdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 985, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btmtksdio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/btmtksdio.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@btmtksdio_probe._entry_ptr = internal global ptr @btmtksdio_probe._entry, section ".printk_index", align 4
@btmtksdio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1009, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@btmtksdio_probe._entry_ptr.14 = internal global ptr @btmtksdio_probe._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@btmtksdio_txrx_work.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.9, ptr @.str.16, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btmtksdio_txrx_work\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Get fw own back\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Tx fifo overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_recv_pkts = internal constant { [3 x %struct.h4_recv_pkt], [60 x i8] } { [3 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @btmtksdio_recv_acl }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @btmtksdio_recv_event }], [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Rx size in sdio header is mismatched \0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid bt type 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: The size of bt header is mismatched\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: The size of bt payload is mismatched\0A\00", [54 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Cannot get ownership from device\0A\00", [58 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Cannot return ownership to device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to get device id (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to get fw version (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mediatek/BT_RAM_CODE_MT%04x_1_%x_hdr.bin\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Device setup in %llu usecs\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.btsdio_mtk_reg_read.reg_read = private unnamed_addr constant %struct.reg_read_cmd <{ i8 1, i8 0, i8 1, i32 0 }>, align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to read reg(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Execution of wmt command interrupted\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Execution of wmt command timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Wrong op received %d expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to setup 79xx firmware (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to send wmt func ctrl (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query firmware status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Firmware already downloaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: function already on\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to apply low power setting (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query function status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: status (%d) return ownership to device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: status (%d) get ownership from device\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 16, i64 30307, i64 30312, i64 31009]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 16, i64 1534, i64 1535, i64 64623]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 6, i64 8, i64 23]
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"btmtksdio_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1126, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"enable_autosuspend\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 36, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1144, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"btmtksdio_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 58, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"btmtksdio_pm_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1119, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"mt7663_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 43, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mt7668_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 48, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"mt7921_data\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 53, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 44, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 49, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 54, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 979, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 985, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1009, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 485, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 491, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"mtk_recv_pkts\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 349, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 386, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 405, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 412, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 432, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1984, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 553, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 644, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 849, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 855, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 860, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 897, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 824, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 172, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 178, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 187, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 125, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 777, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 790, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 704, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 709, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 732, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 761, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 680, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1082, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [33 x i8] c"../drivers/bluetooth/btmtksdio.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1112, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description496, ptr @__UNIQUE_ID_enable_autosuspend494, ptr @__UNIQUE_ID_enable_autosuspendtype493, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_license499, ptr @__UNIQUE_ID_version497, ptr @__exitcall_btmtksdio_driver_exit, ptr @__initcall__kmod_btmtksdio__492_1137_btmtksdio_driver_init6, ptr @__modver_attr, ptr @__param_enable_autosuspend, ptr @btmtksdio_driver_exit, ptr @btmtksdio_probe._entry, ptr @btmtksdio_probe._entry.12, ptr @btmtksdio_probe._entry_ptr, ptr @btmtksdio_probe._entry_ptr.14, ptr @btmtksdio_driver, ptr @enable_autosuspend, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @btmtksdio_table, ptr @btmtksdio_pm_ops, ptr @mt7663_data, ptr @mt7668_data, ptr @mt7921_data, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @btmtksdio_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mtk_recv_pkts, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_autosuspend to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7663_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7668_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btmtksdio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_recv_pkts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @btmtksdio_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btmtksdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_unregister_driver(ptr noundef nonnull @btmtksdio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_probe(ptr noundef %func, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %data = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev6, align 4
  %func7 = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %func, ptr %func7, align 4
  %txrx_work = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %txrx_work, i32 noundef 0) #9
  %6 = ptrtoint ptr %txrx_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %txrx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @btmtksdio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry12, ptr %prev.i, align 4
  %func14 = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %func14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @btmtksdio_txrx_work, ptr %func14, align 4
  %txq = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %10 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.btmtksdio_dev, ptr %call.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i, align 4
  %call.i80 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #9
  %tobool16.not = icmp eq ptr %call.i80, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i80, ptr %call.i, align 4
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 5
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 204, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 232
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @btmtksdio_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 233
  %17 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @btmtksdio_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 234
  %18 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @btmtksdio_flush, ptr %flush, align 8
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 235
  %19 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @btmtksdio_setup, ptr %setup, align 4
  %shutdown = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 236
  %20 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @btmtksdio_shutdown, ptr %shutdown, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 237
  %21 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @btmtksdio_send_frame, ptr %send, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 242
  %22 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @btmtk_set_bdaddr, ptr %set_bdaddr, align 8
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 204, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 31
  %24 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 70, ptr %manufacturer, align 2
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i80, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 12, ptr noundef %quirks) #9
  %call26 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  tail call void @hci_free_dev(ptr noundef nonnull %call.i80) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i, align 4
  %26 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev6, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %27, i1 noundef zeroext true) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !126
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end38.cleanup_crit_edge, label %do.end11.i.i.i.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.end38.cleanup_crit_edge, %do.end30, %do.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.end30 ], [ -12, %do.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtksdio_remove(ptr nocapture noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !128
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @hci_unregister_dev(ptr noundef %6) #9
  tail call void @hci_free_dev(ptr noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtksdio_txrx_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %dev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %func = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #9
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %5, i32 noundef 2, i32 noundef 4, ptr noundef null) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 500
  %tx_state = getelementptr i8, ptr %work, i32 44
  %txq = getelementptr i8, ptr %work, i32 48
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  %call3 = tail call i32 @sdio_readl(ptr noundef %8, i32 noundef 16, ptr noundef null) #9
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %10, i32 noundef %call3, i32 noundef 16, ptr noundef null) #9
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end12_crit_edge, label %do.body5

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btmtksdio_txrx_work.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btmtksdio_txrx_work, %if.then11)) #9
          to label %if.end12 [label %if.then11], !srcloc !129

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btmtksdio_txrx_work.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.16, ptr noundef %name) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.body5, %do.body.if.end12_crit_edge
  %and13 = and i32 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #9
  br label %if.end29

if.else:                                          ; preds = %if.end12
  %and16 = and i32 %call3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else.if.end29_crit_edge, label %if.then24, !prof !130

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %name26 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.17, ptr noundef %name26) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.else.if.end29_crit_edge, %if.then15
  %15 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %tx_state, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not = icmp eq i32 %17, 0
  br i1 %tobool32.not, label %if.end29.if.end43_crit_edge, label %if.then33

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then33:                                        ; preds = %if.end29
  %call34 = tail call ptr @skb_dequeue(ptr noundef %txq) #9
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then33.if.end43_crit_edge, label %if.then36

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then36:                                        ; preds = %if.then33
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 5
  br i1 %cmp.i, label %if.then.i, label %if.then36.if.end5.i_crit_edge, !prof !131

if.then36.if.end5.i_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then36
  %call2.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %call34, i32 noundef 5, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then.i.if.then38_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i.if.then38_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.then36.if.end5.i_crit_edge
  %call6.i = tail call ptr @skb_push(ptr noundef nonnull %call34, i32 noundef 5) #9
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %25 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %23, align 1
  %reserved.i = getelementptr inbounds %struct.mtkbtsdio_hdr, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %reserved.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %reserved.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call34, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cb.i, align 8
  %bt_type.i = getelementptr inbounds %struct.mtkbtsdio_hdr, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %bt_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bt_type.i, align 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #9
  %32 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func, align 4
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %37, -1
  %or.i = or i32 %sub.i, 255
  %add.i = add i32 %or.i, 1
  %call10.i = tail call i32 @sdio_writesb(ptr noundef %33, i32 noundef 24, ptr noundef %35, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %err_skb_pull.i, label %btmtksdio_tx_packet.exit

err_skb_pull.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call ptr @skb_pull(ptr noundef nonnull %call34, i32 noundef 5) #9
  br label %if.then38

btmtksdio_tx_packet.exit:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %byte_tx.i = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 199, i32 9
  %42 = ptrtoint ptr %byte_tx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %byte_tx.i, align 4
  %add16.i = add i32 %43, %39
  store i32 %add16.i, ptr %byte_tx.i, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call34, i32 noundef 0) #9
  br label %if.end43

if.then38:                                        ; preds = %err_skb_pull.i, %if.then.i.if.then38_crit_edge
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %45, i32 0, i32 199, i32 1
  %46 = ptrtoint ptr %err_tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err_tx, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %err_tx, align 4
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call34) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %btmtksdio_tx_packet.exit, %if.then33.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %and44 = and i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.cond59, label %if.then46

if.then46:                                        ; preds = %if.end43
  %48 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %func, align 4
  %call48 = tail call i32 @sdio_readl(ptr noundef %49, i32 noundef 36, ptr noundef null) #9
  %shr = lshr i32 %call48, 16
  %conv = trunc i32 %shr to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv)
  %cmp.i98 = icmp ult i16 %conv, 5
  br i1 %cmp.i98, label %if.then46.if.then53_crit_edge, label %if.end.i

if.then46.if.then53_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end.i:                                         ; preds = %if.then46
  %add.i.i = add nuw nsw i32 %shr, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then53_crit_edge, label %if.end4.i

if.end.i.if.then53_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end4.i:                                        ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call6.i99 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %shr) #9
  %54 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func, align 4
  %56 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i, align 4
  %call8.i = tail call i32 @sdio_readsb(ptr noundef %55, ptr noundef %57, i32 noundef 28, i32 noundef %shr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end4.i.err_kfree_skb.i_crit_edge, label %if.end12.i

if.end4.i.err_kfree_skb.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_skb.i

if.end12.i:                                       ; preds = %if.end4.i
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %59, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %conv)
  %cmp16.not.i = icmp eq i16 %62, %conv
  br i1 %cmp16.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %64, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %name.i) #9
  br label %err_kfree_skb.i

if.end19.i:                                       ; preds = %if.end12.i
  %bt_type.i101 = getelementptr inbounds %struct.mtkbtsdio_hdr, ptr %59, i32 0, i32 2
  %65 = ptrtoint ptr %bt_type.i101 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bt_type.i101, align 1
  %cb.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %cb.i102 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %cb.i102, align 8
  %call21.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 5) #9
  %68 = ptrtoint ptr %bt_type.i101 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bt_type.i101, align 1
  %switch.tableidx = add i8 %69, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %70 = icmp ult i8 %switch.tableidx, 3
  br i1 %70, label %switch.lookup, label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 4
  %name35.i = getelementptr inbounds %struct.hci_dev, ptr %72, i32 0, i32 2
  %conv38.i = zext i8 %69 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %name35.i, i32 noundef %conv38.i) #9
  br label %err_kfree_skb.i

switch.lookup:                                    ; preds = %if.end19.i
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %len40.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %len40.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len40.i, align 4
  %hlen.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 1
  %75 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hlen.i, align 1
  %conv42.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv42.i)
  %cmp43.i = icmp ult i32 %74, %conv42.i
  br i1 %cmp43.i, label %if.then45.i, label %if.end49.i

if.then45.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 4
  %name47.i = getelementptr inbounds %struct.hci_dev, ptr %78, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %name47.i) #9
  br label %err_kfree_skb.i

if.end49.i:                                       ; preds = %switch.lookup
  %lsize.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 3
  %79 = ptrtoint ptr %lsize.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lsize.i, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i8 %80, label %if.end49.i.err_kfree_skb.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb56.i
  ]

if.end49.i.err_kfree_skb.i_crit_edge:             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_skb.i

sw.bb.i:                                          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i, align 4
  %loff.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 2
  %84 = ptrtoint ptr %loff.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %loff.i, align 2
  %idxprom.i = zext i8 %85 to i32
  %arrayidx54.i = getelementptr i8, ptr %83, i32 %idxprom.i
  %86 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %87 to i16
  br label %sw.epilog.i

sw.bb56.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i.i, align 4
  %loff59.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 2
  %90 = ptrtoint ptr %loff59.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %loff59.i, align 2
  %conv60.i = zext i8 %91 to i32
  %add.ptr.i = getelementptr i8, ptr %89, i32 %conv60.i
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %add.ptr.i, align 1
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb56.i, %sw.bb.i
  %dlen.0.i = phi i16 [ %94, %sw.bb56.i ], [ %conv55.i, %sw.bb.i ]
  %conv66.i = zext i16 %dlen.0.i to i32
  %95 = add nuw nsw i32 %conv66.i, %conv42.i
  %sub67.i = sub i32 %74, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub67.i)
  %cmp68.i = icmp slt i32 %sub67.i, 0
  br i1 %cmp68.i, label %if.then70.i, label %btmtksdio_rx_packet.exit

if.then70.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 4
  %name72.i = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %name72.i) #9
  br label %err_kfree_skb.i

err_kfree_skb.i:                                  ; preds = %if.then70.i, %if.end49.i.err_kfree_skb.i_crit_edge, %if.then45.i, %for.inc.2.i, %if.then18.i, %if.end4.i.err_kfree_skb.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #9
  br label %if.then53

btmtksdio_rx_packet.exit:                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %95) #9
  %recv.i = getelementptr %struct.h4_recv_pkt, ptr @mtk_recv_pkts, i32 %switch.idx.cast, i32 5
  %98 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %recv.i, align 4
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 4
  %call79.i = tail call i32 %99(ptr noundef %101, ptr noundef nonnull %call.i.i.i) #9
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr, align 4
  %byte_rx.i = getelementptr inbounds %struct.hci_dev, ptr %103, i32 0, i32 199, i32 8
  br label %do.body.backedge.sink.split

if.then53:                                        ; preds = %err_kfree_skb.i, %if.end.i.if.then53_crit_edge, %if.then46.if.then53_crit_edge
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %stat55 = getelementptr inbounds %struct.hci_dev, ptr %105, i32 0, i32 199
  br label %do.body.backedge.sink.split

do.cond59:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool60.not = icmp eq i32 %call3, 0
  br i1 %tobool60.not, label %lor.rhs, label %do.cond59.do.body.backedge_crit_edge

do.cond59.do.body.backedge_crit_edge:             ; preds = %do.cond59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp61 = icmp slt i32 %sub, 0
  br i1 %cmp61, label %lor.rhs.do.body.backedge_crit_edge, label %do.end63

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.body.backedge.sink.split:                      ; preds = %if.then53, %btmtksdio_rx_packet.exit
  %stat55.sink114 = phi ptr [ %stat55, %if.then53 ], [ %byte_rx.i, %btmtksdio_rx_packet.exit ]
  %.sink113 = phi i32 [ 1, %if.then53 ], [ %shr, %btmtksdio_rx_packet.exit ]
  %107 = ptrtoint ptr %stat55.sink114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stat55.sink114, align 8
  %inc56 = add i32 %108, %.sink113
  store i32 %inc56, ptr %stat55.sink114, align 8
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.body.backedge.sink.split, %lor.rhs.do.body.backedge_crit_edge, %do.cond59.do.body.backedge_crit_edge
  br label %do.body

do.end63:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %110, i32 noundef 1, i32 noundef 4, ptr noundef null) #9
  %111 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %112) #9
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %call.i105 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 12, i32 22
  %115 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store volatile i64 %call.i105, ptr %last_busy.i, align 8
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %call.i106 = tail call i32 @__pm_runtime_suspend(ptr noundef %117, i32 noundef 13) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_open(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %func = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #9
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %call2 = tail call i32 @sdio_enable_func(ptr noundef %5) #9
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_release_host_crit_edge, label %if.end

entry.err_release_host_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_host

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %tx_state) #9
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %8, i32 noundef 512, i32 noundef 4, ptr noundef nonnull %err) #9
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.end.err_disable_func_crit_edge, label %if.end6

if.end.err_disable_func_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_func

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @ktime_get() #9
  %add.i = add i64 %call7, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 551) #9
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 4
  %call.i122 = call i32 @sdio_readl(ptr noundef %12, i32 noundef 4, ptr noundef null) #9
  %and123 = and i32 %call.i122, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool.not124 = icmp eq i32 %and123, 0
  br i1 %tobool.not124, label %if.end6.land.lhs.true_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge
  %call22 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  %call.i120 = call i32 @sdio_readl(ptr noundef %14, i32 noundef 4, ptr noundef null) #9
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func, align 4
  %call.i = call i32 @sdio_readl(ptr noundef %16, i32 noundef 4, ptr noundef null) #9
  %and = and i32 %call.i, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then29.land.lhs.true_crit_edge, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then25, %if.end6.for.end_crit_edge
  %status.0 = phi i32 [ %call.i120, %if.then25 ], [ %call.i122, %if.end6.for.end_crit_edge ], [ %call.i, %if.then29.for.end_crit_edge ]
  %and31 = and i32 %status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond = select i1 %tobool32.not, i32 -110, i32 0
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %err, align 4
  br i1 %tobool32.not, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %name) #9
  br label %err_disable_func

if.end36:                                         ; preds = %for.end
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %21, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %err) #9
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp38 = icmp slt i32 %23, 0
  br i1 %cmp38, label %if.end36.err_disable_func_crit_edge, label %if.end40

if.end36.err_disable_func_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_func

if.end40:                                         ; preds = %if.end36
  %24 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %25, i32 noundef 0, i32 noundef 20, ptr noundef nonnull %err) #9
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42 = icmp slt i32 %27, 0
  br i1 %cmp42, label %if.end40.err_disable_func_crit_edge, label %if.end44

if.end40.err_disable_func_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_func

if.end44:                                         ; preds = %if.end40
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func, align 4
  %call46 = call i32 @sdio_claim_irq(ptr noundef %29, ptr noundef nonnull @btmtksdio_interrupt) #9
  %30 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call46, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.err_disable_func_crit_edge, label %if.end49

if.end44.err_disable_func_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_func

if.end49:                                         ; preds = %if.end44
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func, align 4
  %call51 = call i32 @sdio_set_block_size(ptr noundef %32, i32 noundef 256) #9
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call51, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end49.err_release_irq_crit_edge, label %if.end54

if.end49.err_release_irq_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end54:                                         ; preds = %if.end49
  %34 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func, align 4
  %call56 = call i32 @sdio_readl(ptr noundef %35, i32 noundef 8, ptr noundef nonnull %err) #9
  %36 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp57 = icmp slt i32 %37, 0
  br i1 %cmp57, label %if.end54.err_release_irq_crit_edge, label %if.end59

if.end54.err_release_irq_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end59:                                         ; preds = %if.end54
  %or = or i32 %call56, 4
  %38 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %39, i32 noundef %or, i32 noundef 8, ptr noundef nonnull %err) #9
  %40 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp61 = icmp slt i32 %41, 0
  br i1 %cmp61, label %if.end59.err_release_irq_crit_edge, label %if.end63

if.end59.err_release_irq_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end63:                                         ; preds = %if.end59
  %42 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %func, align 4
  %call65 = call i32 @sdio_readl(ptr noundef %43, i32 noundef 12, ptr noundef nonnull %err) #9
  %44 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp66 = icmp slt i32 %45, 0
  br i1 %cmp66, label %if.end63.err_release_irq_crit_edge, label %if.end68

if.end63.err_release_irq_crit_edge:               ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end68:                                         ; preds = %if.end63
  %or69 = or i32 %call65, 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %47, i32 noundef %or69, i32 noundef 12, ptr noundef nonnull %err) #9
  %48 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp71 = icmp slt i32 %49, 0
  br i1 %cmp71, label %if.end68.err_release_irq_crit_edge, label %if.end73

if.end68.err_release_irq_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end73:                                         ; preds = %if.end68
  %50 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %51, i32 noundef 262, i32 noundef 20, ptr noundef nonnull %err) #9
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp75 = icmp slt i32 %53, 0
  br i1 %cmp75, label %if.end73.err_release_irq_crit_edge, label %if.end77

if.end73.err_release_irq_crit_edge:               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end77:                                         ; preds = %if.end73
  %54 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func, align 4
  call void @sdio_writel(ptr noundef %55, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %err) #9
  %56 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp79 = icmp slt i32 %57, 0
  br i1 %cmp79, label %if.end77.err_release_irq_crit_edge, label %if.end81

if.end77.err_release_irq_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_irq

if.end81:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %func, align 4
  call void @sdio_release_host(ptr noundef %59) #9
  br label %cleanup

err_release_irq:                                  ; preds = %if.end77.err_release_irq_crit_edge, %if.end73.err_release_irq_crit_edge, %if.end68.err_release_irq_crit_edge, %if.end63.err_release_irq_crit_edge, %if.end59.err_release_irq_crit_edge, %if.end54.err_release_irq_crit_edge, %if.end49.err_release_irq_crit_edge
  %60 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %func, align 4
  %call84 = call i32 @sdio_release_irq(ptr noundef %61) #9
  br label %err_disable_func

err_disable_func:                                 ; preds = %err_release_irq, %if.end44.err_disable_func_crit_edge, %if.end40.err_disable_func_crit_edge, %if.end36.err_disable_func_crit_edge, %if.then34, %if.end.err_disable_func_crit_edge
  %62 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %func, align 4
  %call86 = call i32 @sdio_disable_func(ptr noundef %63) #9
  br label %err_release_host

err_release_host:                                 ; preds = %err_disable_func, %entry.err_release_host_crit_edge
  %64 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %func, align 4
  call void @sdio_release_host(ptr noundef %65) #9
  %66 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_release_host, %if.end81
  %retval.0 = phi i32 [ %67, %err_release_host ], [ 0, %if.end81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %func = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #9
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %5, i32 noundef 2, i32 noundef 4, ptr noundef null) #9
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call3 = tail call i32 @sdio_release_irq(ptr noundef %7) #9
  %txrx_work = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 3
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %txrx_work) #9
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  tail call void @sdio_writel(ptr noundef %9, i32 noundef 256, i32 noundef 4, ptr noundef null) #9
  %call6 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call6, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 642) #9
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  %call.i54 = tail call i32 @sdio_readl(ptr noundef %11, i32 noundef 4, ptr noundef null) #9
  %and55 = and i32 %call.i54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool.not56 = icmp eq i32 %and55, 0
  br i1 %tobool.not56, label %entry.if.end32_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func, align 4
  %call.i = tail call i32 @sdio_readl(ptr noundef %13, i32 noundef 4, ptr noundef null) #9
  %and = and i32 %call.i, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25.if.end32_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  %call.i52 = tail call i32 @sdio_readl(ptr noundef %15, i32 noundef 4, ptr noundef null) #9
  %.pre = and i32 %call.i52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool28.not = icmp eq i32 %.pre, 0
  br i1 %tobool28.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge, %if.then25.if.end32_crit_edge, %entry.if.end32_crit_edge
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %tx_state) #9
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  %call34 = tail call i32 @sdio_disable_func(ptr noundef %19) #9
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %21) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %txq = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %txq) #9
  %txrx_work = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %txrx_work) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_setup(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params.i103.i = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i104.i = alloca i32, align 4
  %param.i105.i = alloca i8, align 1
  %wmt_params.i.i = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i.i = alloca i32, align 4
  %param.i.i = alloca i8, align 1
  %wmt_params.i94 = alloca %struct.btmtk_hci_wmt_params, align 4
  %tci_sleep.i = alloca %struct.btmtk_tci_sleep, align 1
  %status.i95 = alloca i32, align 4
  %param.i96 = alloca i8, align 1
  %wmt_params.i88 = alloca %struct.btmtk_hci_wmt_params, align 4
  %param.i = alloca i8, align 1
  %wmt_params.i78 = alloca %struct.btmtk_hci_wmt_params, align 4
  %reg_read.i79 = alloca %struct.reg_read_cmd, align 1
  %status.i80 = alloca i32, align 4
  %wmt_params.i = alloca %struct.btmtk_hci_wmt_params, align 4
  %reg_read.i = alloca %struct.reg_read_cmd, align 1
  %status.i = alloca i32, align 4
  %fwname = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fwname) #9
  %2 = call ptr @memset(ptr %fwname, i32 255, i32 64)
  %call1 = tail call i64 @ktime_get() #9
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #9
  %data = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %chipid = getelementptr inbounds %struct.btmtksdio_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chipid, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 31009, label %sw.bb
    i16 30307, label %entry.sw.bb20_crit_edge
    i16 30312, label %entry.sw.bb20_crit_edge129
  ]

entry.sw.bb20_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i) #9
  %8 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %reg_read.i) #9
  %12 = call ptr @memcpy(ptr %reg_read.i, ptr @__const.btsdio_mtk_reg_read.reg_read, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %status.i, align 4, !annotation !132
  %addr.i = getelementptr inbounds %struct.reg_read_cmd, ptr %reg_read.i, i32 0, i32 3
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 131440, ptr %addr.i, align 1
  %15 = ptrtoint ptr %wmt_params.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %wmt_params.i, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 7, ptr %9, align 2
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reg_read.i, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %status.i, ptr %11, align 4
  %call.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name.i, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg_read.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i) #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg_read.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i78) #9
  %22 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i78, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i78, i32 0, i32 2
  %24 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i78, i32 0, i32 3
  %25 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i78, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %reg_read.i79) #9
  %26 = call ptr @memcpy(ptr %reg_read.i79, ptr @__const.btsdio_mtk_reg_read.reg_read, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i80) #9
  %27 = ptrtoint ptr %status.i80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %status.i80, align 4, !annotation !132
  %addr.i81 = getelementptr inbounds %struct.reg_read_cmd, ptr %reg_read.i79, i32 0, i32 3
  %28 = ptrtoint ptr %addr.i81 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 68158080, ptr %addr.i81, align 1
  %29 = ptrtoint ptr %wmt_params.i78 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %wmt_params.i78, align 4
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 7, ptr %23, align 2
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %reg_read.i79, ptr %24, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %status.i80, ptr %25, align 4
  %call.i82 = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name.i84 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name.i84, i32 noundef %call.i82) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i80) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg_read.i79) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i78) #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name.i84, i32 noundef %call.i82) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %34 = ptrtoint ptr %status.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i80) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %reg_read.i79) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i78) #9
  %and = and i32 %21, 65535
  %and12 = and i32 %35, 255
  %add = add nuw nsw i32 %and12, 1
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.27, i32 noundef %and, i32 noundef %add)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i88) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #9
  %36 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %param.i, align 1
  %call.i89 = call i32 @btmtk_setup_firmware_79xx(ptr noundef %hdev, ptr noundef nonnull %fwname, ptr noundef nonnull @mtk_hci_wmt_sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %if.then.i92, label %if.end.i93

if.then.i92:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %name.i91 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %name.i91, i32 noundef %call.i89) #9
  br label %mt79xx_setup.exit.thread

if.end.i93:                                       ; preds = %if.end10
  %37 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i88, i32 0, i32 4
  %38 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i88, i32 0, i32 3
  %39 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i88, i32 0, i32 2
  %40 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i88, i32 0, i32 1
  %41 = ptrtoint ptr %wmt_params.i88 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 6, ptr %wmt_params.i88, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %40, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %39, align 2
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %param.i, ptr %38, align 4
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %37, align 4
  %call1.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %mt79xx_setup.exit

if.then3.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name4.i, i32 noundef %call1.i) #9
  br label %mt79xx_setup.exit.thread

mt79xx_setup.exit.thread:                         ; preds = %if.then3.i, %if.then.i92
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i89, %if.then.i92 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i88) #9
  br label %cleanup

mt79xx_setup.exit:                                ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  %msft_opcode.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %46 = ptrtoint ptr %msft_opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -720, ptr %msft_opcode.i.i, align 4
  %aosp_capable.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 230
  %47 = ptrtoint ptr %aosp_capable.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %aosp_capable.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i88) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge129
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i94) #9
  %50 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i94, i32 0, i32 1
  %51 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i94, i32 0, i32 2
  %52 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i94, i32 0, i32 3
  %53 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i94, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tci_sleep.i) #9
  %54 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep.i, i32 0, i32 1
  %55 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep.i, i32 0, i32 2
  %56 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep.i, i32 0, i32 3
  %57 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep.i, i32 0, i32 4
  %58 = call ptr @memset(ptr %tci_sleep.i, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i95) #9
  %59 = ptrtoint ptr %status.i95 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %status.i95, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i96) #9
  %60 = ptrtoint ptr %param.i96 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %param.i96, align 1
  %61 = ptrtoint ptr %wmt_params.i94 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 23, ptr %wmt_params.i94, align 4
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %50, align 1
  %63 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %51, align 2
  %64 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %52, align 4
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %status.i95, ptr %53, align 4
  %call.i97 = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %if.then.i100, label %if.end.i102

if.then.i100:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  %name.i99 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.36, ptr noundef %name.i99, i32 noundef %call.i97) #9
  br label %mt76xx_setup.exit.thread

if.end.i102:                                      ; preds = %sw.bb20
  %66 = ptrtoint ptr %status.i95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp2.i101 = icmp eq i32 %67, 3
  br i1 %cmp2.i101, label %if.then3.i104, label %if.end6.i105

if.then3.i104:                                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  %name4.i103 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.37, ptr noundef %name4.i103) #9
  br label %ignore_setup_fw.i

if.end6.i105:                                     ; preds = %if.end.i102
  %call7.i = call i32 @btmtk_setup_firmware(ptr noundef %hdev, ptr noundef %49, ptr noundef nonnull @mtk_hci_wmt_sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i105.mt76xx_setup.exit.thread_crit_edge, label %if.end6.i105.ignore_setup_fw.i_crit_edge

if.end6.i105.ignore_setup_fw.i_crit_edge:         ; preds = %if.end6.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %ignore_setup_fw.i

if.end6.i105.mt76xx_setup.exit.thread_crit_edge:  ; preds = %if.end6.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76xx_setup.exit.thread

ignore_setup_fw.i:                                ; preds = %if.end6.i105.ignore_setup_fw.i_crit_edge, %if.then3.i104
  %call11.i = call i64 @ktime_get() #9
  %add.i.i = add i64 %call11.i, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 722) #9
  %68 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i.i, i32 0, i32 2
  %70 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i.i, i32 0, i32 3
  %71 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %72 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %status.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i.i) #9
  %73 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %param.i.i, align 1
  %74 = ptrtoint ptr %wmt_params.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 6, ptr %wmt_params.i.i, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %68, align 1
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %69, align 2
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %param.i.i, ptr %70, align 4
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %status.i.i, ptr %71, align 4
  %call.i125.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %cmp.i126.i = icmp slt i32 %call.i125.i, 0
  br i1 %cmp.i126.i, label %ignore_setup_fw.i.for.end.thread.i_crit_edge, label %ignore_setup_fw.i.btmtksdio_func_query.exit.i_crit_edge

ignore_setup_fw.i.btmtksdio_func_query.exit.i_crit_edge: ; preds = %ignore_setup_fw.i
  br label %btmtksdio_func_query.exit.i

ignore_setup_fw.i.for.end.thread.i_crit_edge:     ; preds = %ignore_setup_fw.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.then34.i.for.end.thread.i_crit_edge, %ignore_setup_fw.i.for.end.thread.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i125.i, %ignore_setup_fw.i.for.end.thread.i_crit_edge ], [ %call.i.i, %if.then34.i.for.end.thread.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name.i.i, i32 noundef %call.i.lcssa.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i.i) #9
  br label %mt76xx_setup.exit.thread

btmtksdio_func_query.exit.i:                      ; preds = %if.then34.i.btmtksdio_func_query.exit.i_crit_edge, %ignore_setup_fw.i.btmtksdio_func_query.exit.i_crit_edge
  %79 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i.i) #9
  %81 = ptrtoint ptr %status.i95 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %status.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %80)
  %cmp24.not.i = icmp eq i32 %80, 6
  br i1 %cmp24.not.i, label %land.lhs.true.i, label %btmtksdio_func_query.exit.i.for.end.i_crit_edge

btmtksdio_func_query.exit.i.for.end.i_crit_edge:  ; preds = %btmtksdio_func_query.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %btmtksdio_func_query.exit.i
  %call27.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call27.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then30.i, label %if.then34.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i103.i) #9
  %82 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i103.i, i32 0, i32 1
  %83 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i103.i, i32 0, i32 2
  %84 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i103.i, i32 0, i32 3
  %85 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i103.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i104.i) #9
  %86 = ptrtoint ptr %status.i104.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %status.i104.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i105.i) #9
  %87 = ptrtoint ptr %param.i105.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %param.i105.i, align 1
  %88 = ptrtoint ptr %wmt_params.i103.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 6, ptr %wmt_params.i103.i, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %82, align 1
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %83, align 2
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %param.i105.i, ptr %84, align 4
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %status.i104.i, ptr %85, align 4
  %call.i106.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i103.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i)
  %cmp.i107.i = icmp slt i32 %call.i106.i, 0
  br i1 %cmp.i107.i, label %if.then.i109.i, label %if.end.i110.i

if.then.i109.i:                                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i108.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name.i108.i, i32 noundef %call.i106.i) #9
  br label %btmtksdio_func_query.exit112.i

if.end.i110.i:                                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %status.i104.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %status.i104.i, align 4
  br label %btmtksdio_func_query.exit112.i

btmtksdio_func_query.exit112.i:                   ; preds = %if.end.i110.i, %if.then.i109.i
  %retval.0.i111.i = phi i32 [ %call.i106.i, %if.then.i109.i ], [ %94, %if.end.i110.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i105.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i104.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i103.i) #9
  %95 = ptrtoint ptr %status.i95 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i111.i, ptr %status.i95, align 4
  br label %for.end.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %96 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %status.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i.i) #9
  %97 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %param.i.i, align 1
  %98 = ptrtoint ptr %wmt_params.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %wmt_params.i.i, align 4
  %99 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %68, align 1
  %100 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %69, align 2
  %101 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %param.i.i, ptr %70, align 4
  %102 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %status.i.i, ptr %71, align 4
  %call.i.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i.i) #9
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then34.i.for.end.thread.i_crit_edge, label %if.then34.i.btmtksdio_func_query.exit.i_crit_edge

if.then34.i.btmtksdio_func_query.exit.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %btmtksdio_func_query.exit.i

if.then34.i.for.end.thread.i_crit_edge:           ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.i:                                        ; preds = %btmtksdio_func_query.exit112.i, %btmtksdio_func_query.exit.i.for.end.i_crit_edge
  %103 = phi i32 [ %retval.0.i111.i, %btmtksdio_func_query.exit112.i ], [ %80, %btmtksdio_func_query.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp36.i = icmp slt i32 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %103)
  %cmp37.not.i = icmp eq i32 %103, 6
  %brmerge.i = or i1 %cmp37.not.i, %cmp36.i
  %phi.sel.mux.i = select i1 %cmp37.not.i, i32 -110, i32 %103
  br i1 %brmerge.i, label %for.end.i.mt76xx_setup.exit_crit_edge, label %if.end43.i

for.end.i.mt76xx_setup.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt76xx_setup.exit

if.end43.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %103)
  %cmp44.i = icmp eq i32 %103, 5
  br i1 %cmp44.i, label %if.then45.i, label %if.end48.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.38, ptr noundef %name46.i) #9
  br label %ignore_func_on.i

if.end48.i:                                       ; preds = %if.end43.i
  %104 = ptrtoint ptr %wmt_params.i94 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 6, ptr %wmt_params.i94, align 4
  %105 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %50, align 1
  %106 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %51, align 2
  %107 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %param.i96, ptr %52, align 4
  %108 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %53, align 4
  %call54.i = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.then56.i, label %if.end48.i.ignore_func_on.i_crit_edge

if.end48.i.ignore_func_on.i_crit_edge:            ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ignore_func_on.i

if.then56.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %name57.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name57.i, i32 noundef %call54.i) #9
  br label %mt76xx_setup.exit.thread

ignore_func_on.i:                                 ; preds = %if.end48.i.ignore_func_on.i_crit_edge, %if.then45.i
  %109 = ptrtoint ptr %tci_sleep.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 5, ptr %tci_sleep.i, align 1
  %110 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 16390, ptr %54, align 1
  %111 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 16390, ptr %55, align 1
  %112 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %56, align 1
  %113 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %57, align 1
  %call61.i = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -902, i32 noundef 7, ptr noundef nonnull %tci_sleep.i, i32 noundef 1000) #9
  %cmp.i113.i = icmp ugt ptr %call61.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %if.then63.i, label %mt76xx_setup.exit.thread114

if.then63.i:                                      ; preds = %ignore_func_on.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %call61.i to i32
  %name65.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name65.i, i32 noundef %114) #9
  br label %mt76xx_setup.exit

mt76xx_setup.exit.thread114:                      ; preds = %ignore_func_on.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %call61.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i96) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i95) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tci_sleep.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i94) #9
  br label %sw.epilog

mt76xx_setup.exit.thread:                         ; preds = %if.then56.i, %for.end.thread.i, %if.end6.i105.mt76xx_setup.exit.thread_crit_edge, %if.then.i100
  %retval.0.i106.ph = phi i32 [ %call.i.lcssa.i, %for.end.thread.i ], [ %call7.i, %if.end6.i105.mt76xx_setup.exit.thread_crit_edge ], [ %call54.i, %if.then56.i ], [ %call.i97, %if.then.i100 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i96) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i95) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tci_sleep.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i94) #9
  br label %cleanup

mt76xx_setup.exit:                                ; preds = %if.then63.i, %for.end.i.mt76xx_setup.exit_crit_edge
  %retval.0.i106 = phi i32 [ %114, %if.then63.i ], [ %phi.sel.mux.i, %for.end.i.mt76xx_setup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i96) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i95) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tci_sleep.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i106)
  %cmp24 = icmp slt i32 %retval.0.i106, 0
  br i1 %cmp24, label %mt76xx_setup.exit.cleanup_crit_edge, label %mt76xx_setup.exit.sw.epilog_crit_edge

mt76xx_setup.exit.sw.epilog_crit_edge:            ; preds = %mt76xx_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

mt76xx_setup.exit.cleanup_crit_edge:              ; preds = %mt76xx_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %mt76xx_setup.exit.sw.epilog_crit_edge, %mt76xx_setup.exit.thread114, %mt79xx_setup.exit
  %call28 = call i64 @ktime_get() #9
  %sub = sub i64 %call28, %call1
  %shr = lshr i64 %sub, 10
  %dev = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 2
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %116, i32 noundef 8000) #9
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %118, i1 noundef zeroext true) #9
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  %call.i107 = call i32 @__pm_runtime_set_status(ptr noundef %120, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp33 = icmp slt i32 %call.i107, 0
  br i1 %cmp33, label %sw.epilog.cleanup_crit_edge, label %if.end36

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %sw.epilog
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  call void @pm_runtime_forbid(ptr noundef %122) #9
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  call void @pm_runtime_enable(ptr noundef %124) #9
  %125 = load i8, ptr @enable_autosuspend, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not = icmp eq i8 %125, 0
  br i1 %tobool.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  call void @pm_runtime_allow(ptr noundef %127) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %name42 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.28, ptr noundef %name42, i64 noundef %shr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %sw.epilog.cleanup_crit_edge, %mt76xx_setup.exit.cleanup_crit_edge, %mt76xx_setup.exit.thread, %mt79xx_setup.exit.thread, %if.then7, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call.i, %if.then ], [ %call.i82, %if.then7 ], [ %retval.0.i106, %mt76xx_setup.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call.i107, %sw.epilog.cleanup_crit_edge ], [ %retval.0.i.ph, %mt79xx_setup.exit.thread ], [ %retval.0.i106.ph, %mt76xx_setup.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fwname) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_shutdown(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #9
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %5 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #9
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param, align 1
  %dev = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #9
  %9 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %wmt_params, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %3, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %param, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  %call2 = call i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !126
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %pm_runtime_put_noidle.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_send_frame(ptr nocapture noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %sco_tx.sink13 = phi ptr [ %sco_tx, %sw.bb4 ], [ %acl_tx, %sw.bb1 ], [ %cmd_tx, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink13, align 8
  %inc6 = add i32 %6, 1
  store i32 %inc6, ptr %sco_tx.sink13, align 8
  %txq = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #9
  %txrx_work = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %txrx_work) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -84, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_recv_acl(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %4, label %sw.epilog [
    i16 -913, label %sw.bb
    i16 1535, label %entry.sw.bb3_crit_edge
    i16 1534, label %entry.sw.bb3_crit_edge11
  ]

entry.sw.bb3_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.btmtksdio_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @pm_runtime_forbid(ptr noundef %9) #9
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge11
  %call4 = tail call i32 @hci_recv_diag(ptr noundef %hdev, ptr noundef %skb) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ %call4, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_recv_event(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 3264) #9
  %evt_skb = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %evt_skb, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %tx_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.cleanup_crit_edge, label %do.end

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @wake_up_bit(ptr noundef %tx_state, i32 noundef 1) #9
  br label %cleanup

err_free_skb:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %evt_skb31 = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %evt_skb31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evt_skb31, align 4
  tail call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #9
  %15 = ptrtoint ptr %evt_skb31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %evt_skb31, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_skb, %do.end, %if.then20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end15.cleanup_crit_edge ], [ %call11, %err_free_skb ], [ -12, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btmtksdio_interrupt(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %func1 = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func1, align 4
  tail call void @sdio_writel(ptr noundef %3, i32 noundef 2, i32 noundef 4, ptr noundef null) #9
  %txrx_work = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %txrx_work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hci_wmt_sync(ptr noundef %hdev, ptr nocapture noundef readonly %wmt_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dlen = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dlen, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %3)
  %cmp = icmp ugt i16 %3, 250
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end4

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i.i
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call9.i.i, align 128
  %5 = ptrtoint ptr %wmt_params to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wmt_params, align 4
  %op6 = getelementptr inbounds %struct.btmtk_wmt_hdr, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %op6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %op6, align 1
  %8 = ptrtoint ptr %dlen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dlen, align 2
  %add9 = add i16 %9, 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %add9)
  %dlen11 = getelementptr inbounds %struct.btmtk_wmt_hdr, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dlen11 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %dlen11, align 2
  %flag = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flag, align 1
  %flag12 = getelementptr inbounds %struct.btmtk_wmt_hdr, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %flag12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flag12, align 4
  %data = getelementptr inbounds %struct.btmtk_hci_wmt_cmd, ptr %call9.i.i, i32 0, i32 1
  %data13 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %15 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data13, align 4
  %conv15 = zext i16 %9 to i32
  %17 = call ptr @memcpy(ptr %data, ptr %16, i32 %conv15)
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tx_state) #9
  %call16 = tail call i32 @__hci_cmd_send(ptr noundef %hdev, i16 noundef zeroext -913, i32 noundef %add, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #9
  br label %err_free_wc

if.end21:                                         ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.33, i32 noundef 125) #9
  %18 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_state, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end21.if.end36_crit_edge, label %wait_on_bit_timeout.exit

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

wait_on_bit_timeout.exit:                         ; preds = %if.end21
  %call3.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %tx_state, i32 noundef 1, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 1000) #9
  %21 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call3.i, label %if.then32 [
    i32 -4, label %if.then27
    i32 0, label %wait_on_bit_timeout.exit.if.end36_crit_edge
  ]

wait_on_bit_timeout.exit.if.end36_crit_edge:      ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.30, ptr noundef %name) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #9
  br label %err_free_wc

if.then32:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name33 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name33) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #9
  br label %err_free_wc

if.end36:                                         ; preds = %wait_on_bit_timeout.exit.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %evt_skb = getelementptr inbounds %struct.btmtksdio_dev, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %evt_skb, align 4
  %data37 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data37, align 4
  %op38 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %op38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %op38, align 1
  %28 = ptrtoint ptr %op6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %op6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp42.not = icmp eq i8 %27, %29
  br i1 %cmp42.not, label %if.end52, label %if.then44

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %conv39 = zext i8 %27 to i32
  %conv41 = zext i8 %29 to i32
  %name45 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name45, i32 noundef %conv39, i32 noundef %conv41) #9
  br label %err_free_skb

if.end52:                                         ; preds = %if.end36
  %30 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %27, label %if.end52.sw.epilog_crit_edge [
    i8 23, label %sw.bb
    i8 6, label %sw.bb63
    i8 1, label %sw.bb78
    i8 8, label %sw.bb95
  ]

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %flag57 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %25, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %flag57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flag57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp59 = icmp eq i8 %32, 2
  %. = select i1 %cmp59, i32 1, i32 3
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %status64 = getelementptr inbounds %struct.btmtk_hci_wmt_evt_funcc, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %status64 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %status64, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1056, i16 %34)
  %switch.selectcmp = icmp eq i16 %34, 1056
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %34)
  %switch.selectcmp159 = icmp eq i16 %34, 1028
  %switch.select160 = select i1 %switch.selectcmp159, i32 5, i32 %switch.select
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %flag80 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %25, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %flag80 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flag80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %switch.selectcmp161 = icmp eq i8 %36, 1
  %switch.select162 = select i1 %switch.selectcmp161, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %switch.selectcmp163 = icmp eq i8 %36, 2
  %switch.select164 = select i1 %switch.selectcmp163, i32 3, i32 %switch.select162
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end52
  %dlen97 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %25, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %dlen97 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %dlen97, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %38)
  %cmp99 = icmp eq i16 %38, 3072
  br i1 %cmp99, label %if.then101, label %sw.bb95.sw.epilog_crit_edge

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then101:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.btmtk_hci_wmt_evt_reg, ptr %25, i32 0, i32 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %val, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then101, %sw.bb95.sw.epilog_crit_edge, %sw.bb78, %sw.bb63, %sw.bb, %if.end52.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %if.end52.sw.epilog_crit_edge ], [ %41, %if.then101 ], [ 0, %sw.bb95.sw.epilog_crit_edge ], [ %., %sw.bb ], [ %switch.select160, %sw.bb63 ], [ %switch.select164, %sw.bb78 ]
  %status103 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %42 = ptrtoint ptr %status103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %status103, align 4
  %tobool104.not = icmp eq ptr %43, null
  br i1 %tobool104.not, label %sw.epilog.err_free_skb_crit_edge, label %if.then105

sw.epilog.err_free_skb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_skb

if.then105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %status.0, ptr %43, align 4
  br label %err_free_skb

err_free_skb:                                     ; preds = %if.then105, %sw.epilog.err_free_skb_crit_edge, %if.then44
  %err.0 = phi i32 [ -5, %if.then44 ], [ 0, %if.then105 ], [ 0, %sw.epilog.err_free_skb_crit_edge ]
  %45 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %evt_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %46, i32 noundef 0) #9
  %47 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %evt_skb, align 4
  br label %err_free_wc

err_free_wc:                                      ; preds = %err_free_skb, %if.then32, %if.then27, %if.then19
  %err.1 = phi i32 [ %call16, %if.then19 ], [ -4, %if.then27 ], [ -110, %if.then32 ], [ %err.0, %err_free_skb ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_wc, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_free_wc ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hci_cmd_send(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_setup_firmware_79xx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_setup_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !132
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_state, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #9
  %func7 = getelementptr inbounds %struct.btmtksdio_dev, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func7, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #9
  %8 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func7, align 4
  call void @sdio_writel(ptr noundef %9, i32 noundef 256, i32 noundef 4, ptr noundef nonnull %err) #9
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.end5.out_crit_edge, label %if.end10

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end5
  %call11 = call i64 @ktime_get() #9
  %add.i = add i64 %call11, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 1080) #9
  %12 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func7, align 4
  %call.i59 = call i32 @sdio_readl(ptr noundef %13, i32 noundef 4, ptr noundef null) #9
  %and60 = and i32 %call.i59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool23.not61 = icmp eq i32 %and60, 0
  br i1 %tobool23.not61, label %if.end10.for.end.thread_crit_edge, label %if.end10.land.lhs.true_crit_edge

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  br label %land.lhs.true

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge
  %call27 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  %14 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func7, align 4
  %call.i = call i32 @sdio_readl(ptr noundef %15, i32 noundef 4, ptr noundef null) #9
  %and = and i32 %call.i, 256
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then34.for.end.thread_crit_edge, label %if.then34.land.lhs.true_crit_edge

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then34.for.end.thread_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func7, align 4
  %call.i57 = call i32 @sdio_readl(ptr noundef %17, i32 noundef 4, ptr noundef null) #9
  %.pre = and i32 %call.i57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool38.not = icmp eq i32 %.pre, 0
  br i1 %tobool38.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %18

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then34.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  br label %18

18:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %19 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %err, align 4
  br label %out

out:                                              ; preds = %18, %if.end5.out_crit_edge
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err, align 4
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %24) #9
  %25 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func7, align 4
  call void @sdio_release_host(ptr noundef %26) #9
  %27 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btmtksdio_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !132
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.btmtksdio_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_state, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %func6 = getelementptr inbounds %struct.btmtksdio_dev, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func6, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #9
  %8 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func6, align 4
  call void @sdio_writel(ptr noundef %9, i32 noundef 512, i32 noundef 4, ptr noundef nonnull %err) #9
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end5
  %call10 = call i64 @ktime_get() #9
  %add.i = add i64 %call10, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 1110) #9
  %12 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func6, align 4
  %call.i57 = call i32 @sdio_readl(ptr noundef %13, i32 noundef 4, ptr noundef null) #9
  %and58 = and i32 %call.i57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool22.not59 = icmp eq i32 %and58, 0
  br i1 %tobool22.not59, label %if.end9.land.lhs.true_crit_edge, label %if.end9.for.end.thread_crit_edge

if.end9.for.end.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %if.end9.land.lhs.true_crit_edge
  %call26 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  %14 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func6, align 4
  %call.i = call i32 @sdio_readl(ptr noundef %15, i32 noundef 4, ptr noundef null) #9
  %and = and i32 %call.i, 256
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.for.end.thread_crit_edge

if.then33.for.end.thread_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func6, align 4
  %call.i55 = call i32 @sdio_readl(ptr noundef %17, i32 noundef 4, ptr noundef null) #9
  %.pre = and i32 %call.i55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool37.not = icmp eq i32 %.pre, 0
  %spec.select = select i1 %tobool37.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then33.for.end.thread_crit_edge, %if.end9.for.end.thread_crit_edge
  %18 = phi i32 [ 0, %if.end9.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then33.for.end.thread_crit_edge ]
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %err, align 4
  br label %out

out:                                              ; preds = %for.end.thread, %if.end5.out_crit_edge
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %23) #9
  %24 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func6, align 4
  call void @sdio_release_host(ptr noundef %25) #9
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_btmtksdio__492_1137_btmtksdio_driver_init6, !1, !"__initcall__kmod_btmtksdio__492_1137_btmtksdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1137, i32 1}
!2 = !{ptr @__exitcall_btmtksdio_driver_exit, !1, !"__exitcall_btmtksdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_enable_autosuspend, !4, !"__param_enable_autosuspend", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1139, i32 1}
!5 = !{ptr @__UNIQUE_ID_enable_autosuspendtype493, !4, !"__UNIQUE_ID_enable_autosuspendtype493", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_enable_autosuspend494, !7, !"__UNIQUE_ID_enable_autosuspend494", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1140, i32 1}
!8 = !{ptr @__UNIQUE_ID_author495, !9, !"__UNIQUE_ID_author495", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1142, i32 1}
!10 = !{ptr @__UNIQUE_ID_description496, !11, !"__UNIQUE_ID_description496", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1143, i32 1}
!12 = !{ptr @__UNIQUE_ID_version497, !13, !"__UNIQUE_ID_version497", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1144, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file498, !19, !"__UNIQUE_ID_file498", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1145, i32 1}
!20 = !{ptr @__UNIQUE_ID_license499, !19, !"__UNIQUE_ID_license499", i1 false, i1 false}
!21 = !{ptr @enable_autosuspend, !22, !"enable_autosuspend", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/btmtksdio.c", i32 36, i32 13}
!23 = !{ptr @btmtksdio_driver, !24, !"btmtksdio_driver", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1126, i32 27}
!25 = !{ptr @btmtksdio_table, !26, !"btmtksdio_table", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/btmtksdio.c", i32 58, i32 36}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/btmtksdio.c", i32 44, i32 12}
!29 = !{ptr @mt7663_data, !30, !"mt7663_data", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/btmtksdio.c", i32 43, i32 36}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/btmtksdio.c", i32 49, i32 12}
!33 = !{ptr @mt7668_data, !34, !"mt7668_data", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/btmtksdio.c", i32 48, i32 36}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/btmtksdio.c", i32 54, i32 12}
!37 = !{ptr @mt7921_data, !38, !"mt7921_data", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/btmtksdio.c", i32 53, i32 36}
!39 = !{ptr @btmtksdio_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/btmtksdio.c", i32 979, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/btmtksdio.c", i32 985, i32 3}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @btmtksdio_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @btmtksdio_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1009, i32 3}
!52 = !{ptr @btmtksdio_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @btmtksdio_probe._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/btmtksdio.c", i32 485, i32 4}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @btmtksdio_txrx_work.__UNIQUE_ID_ddebug491, !55, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/btmtksdio.c", i32 491, i32 4}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/btmtksdio.c", i32 386, i32 3}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/btmtksdio.c", i32 405, i32 3}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/btmtksdio.c", i32 412, i32 3}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/btmtksdio.c", i32 432, i32 3}
!68 = !{ptr @mtk_recv_pkts, !69, !"mtk_recv_pkts", i1 false, i1 false}
!69 = !{!"../drivers/bluetooth/btmtksdio.c", i32 349, i32 33}
!70 = !{ptr @skb_queue_head_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/btmtksdio.c", i32 553, i32 3}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bluetooth/btmtksdio.c", i32 644, i32 3}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/btmtksdio.c", i32 849, i32 4}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/bluetooth/btmtksdio.c", i32 855, i32 4}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/btmtksdio.c", i32 860, i32 5}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/btmtksdio.c", i32 897, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/btmtksdio.c", i32 824, i32 3}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/btmtksdio.c", i32 172, i32 3}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bluetooth/btmtksdio.c", i32 178, i32 3}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bluetooth/btmtksdio.c", i32 187, i32 3}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/bluetooth/btmtksdio.c", i32 777, i32 3}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/btmtksdio.c", i32 790, i32 3}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bluetooth/btmtksdio.c", i32 704, i32 3}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/btmtksdio.c", i32 709, i32 3}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bluetooth/btmtksdio.c", i32 732, i32 3}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/btmtksdio.c", i32 761, i32 3}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/btmtksdio.c", i32 680, i32 3}
!109 = !{ptr @btmtksdio_pm_ops, !110, !"btmtksdio_pm_ops", i1 false, i1 false}
!110 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1119, i32 8}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1082, i32 2}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/bluetooth/btmtksdio.c", i32 1112, i32 2}
!115 = !{ptr @__param_str_enable_autosuspend, !4, !"__param_str_enable_autosuspend", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148187372}
!126 = !{i64 599454, i64 599479, i64 599501, i64 599517, i64 599529, i64 599549, i64 599573, i64 599589, i64 599601}
!127 = !{i64 2148187560}
!128 = !{i64 2148187953, i64 2148187979, i64 2148188008, i64 2148188042, i64 2148188073, i64 2148188096}
!129 = !{i64 2148737463, i64 2148737468, i64 2148737481, i64 2148737525, i64 2148737559, i64 2148737580}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2157543596}
