; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btusb.c_pt.bc'
source_filename = "../drivers/bluetooth/btusb.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qca_device_info = type { i32, i8, i8, i8 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.btusb_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, %struct.usb_anchor, i32, %struct.spinlock, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.hci_acl_hdr = type { i16, i16 }
%struct.hci_event_hdr = type { i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.hci_ev_cmd_complete = type <{ i8, i16 }>
%struct.btmtk_hci_wmt_params = type { i8, i8, i16, ptr, ptr }
%struct.btmtk_tci_sleep = type <{ i8, i16, i16, i8, i8 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.qca_rampatch_version = type { i16, i16, i16 }
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>
%struct.hci_sco_hdr = type <{ i16, i8 }>
%struct.btmtk_wmt_hdr = type <{ i8, i8, i16, i8 }>
%struct.btmtk_hci_wmt_cmd = type { %struct.btmtk_wmt_hdr, [0 x i8] }
%struct.btmtk_hci_wmt_evt = type { %struct.hci_event_hdr, %struct.btmtk_wmt_hdr }
%struct.btmtk_hci_wmt_evt_funcc = type <{ %struct.btmtk_hci_wmt_evt, i16 }>
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_btusb__522_4111_btusb_driver_init6 = internal global ptr @btusb_driver_init, section ".initcall6.init", align 4
@btusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @btusb_probe, ptr @btusb_disconnect, ptr null, ptr @btusb_suspend, ptr @btusb_resume, ptr null, ptr null, ptr null, ptr @btusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_btusb_driver_exit = internal global ptr @btusb_driver_exit, section ".exitcall.exit", align 4
@__param_str_disable_scofix = internal constant [21 x i8] c"btusb.disable_scofix\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_scofix = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_scofix = internal constant %struct.kernel_param { ptr @__param_str_disable_scofix, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @disable_scofix } }, section "__param", align 4
@__UNIQUE_ID_disable_scofixtype523 = internal constant [35 x i8] c"btusb.parmtype=disable_scofix:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_scofix524 = internal constant [65 x i8] c"btusb.parm=disable_scofix:Disable fixup of wrong SCO buffer size\00", section ".modinfo", align 1
@__param_str_force_scofix = internal constant [19 x i8] c"btusb.force_scofix\00", align 1
@force_scofix = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_scofix = internal constant %struct.kernel_param { ptr @__param_str_force_scofix, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @force_scofix } }, section "__param", align 4
@__UNIQUE_ID_force_scofixtype525 = internal constant [33 x i8] c"btusb.parmtype=force_scofix:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_scofix526 = internal constant [62 x i8] c"btusb.parm=force_scofix:Force fixup of wrong SCO buffers size\00", section ".modinfo", align 1
@__param_str_enable_autosuspend = internal constant [25 x i8] c"btusb.enable_autosuspend\00", align 1
@enable_autosuspend = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_autosuspend = internal constant %struct.kernel_param { ptr @__param_str_enable_autosuspend, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @enable_autosuspend } }, section "__param", align 4
@__UNIQUE_ID_enable_autosuspendtype527 = internal constant [39 x i8] c"btusb.parmtype=enable_autosuspend:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_autosuspend528 = internal constant [64 x i8] c"btusb.parm=enable_autosuspend:Enable USB autosuspend by default\00", section ".modinfo", align 1
@__param_str_reset = internal constant [12 x i8] c"btusb.reset\00", align 1
@reset = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype529 = internal constant [26 x i8] c"btusb.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset530 = internal constant [58 x i8] c"btusb.parm=reset:Send HCI reset command on initialization\00", section ".modinfo", align 1
@__UNIQUE_ID_author531 = internal constant [51 x i8] c"btusb.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description532 = internal constant [55 x i8] c"btusb.description=Generic Bluetooth USB driver ver 0.8\00", section ".modinfo", align 1
@__UNIQUE_ID_version533 = internal constant [18 x i8] c"btusb.version=0.8\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btusb\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.8\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file534 = internal constant [35 x i8] c"btusb.file=drivers/bluetooth/btusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license535 = internal constant [18 x i8] c"btusb.license=GPL\00", section ".modinfo", align 1
@btusb_table = internal constant { [32 x %struct.usb_device_id], [192 x i8] } { [32 x %struct.usb_device_id] [%struct.usb_device_id { i16 112, i16 0, i16 0, i16 0, i16 0, i8 -32, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 112, i16 0, i16 0, i16 0, i16 0, i8 -32, i8 1, i8 4, i8 0, i8 0, i8 0, i8 0, i32 16384 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -32, i8 1, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 897, i16 1452, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 589824 }, %struct.usb_device_id { i16 3, i16 3725, i16 30271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 8673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32237, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32235, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32229, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1452, i16 -32127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1404, i16 14336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 1215, i16 778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1102, i16 12289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1102, i16 12290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3035, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3088, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6655, i16 569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 4187, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 2996, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 1161, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 1226, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 2652, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 2821, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 1293, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 5075, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 16700, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 897, i16 2352, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 1, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2650, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 544 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@btusb_probe.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 3, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btusb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/bluetooth/btusb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intf %p id %p\0A\00", [17 x i8] zeroinitializer }, align 32
@blacklist_table = internal constant { [178 x %struct.usb_device_id], [1072 x i8] } { [178 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2578, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 2652, i16 8243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2652, i16 8261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 262144 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1266, i16 -20495, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2352, i16 533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 12290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8167, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5075, i16 13060, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 12573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8074, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8043, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1221, i16 4912, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1226, i16 12312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 2352, i16 537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 2352, i16 540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 2352, i16 544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 2352, i16 551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 2821, i16 6096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 12577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -32390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -32389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13173, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13205, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13347, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13426, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13428, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13447, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 5075, i16 13456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 3315, i16 21339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -8176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -7424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -7423, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -7328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -6912, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8046, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8033, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8030, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1226, i16 12305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1226, i16 12309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1226, i16 12310, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1226, i16 12314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 1226, i16 12321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13462, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4227072 }, %struct.usb_device_id { i16 3, i16 3315, i16 -6656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7988, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7978, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7965, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 4267, i16 -27895, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 4267, i16 -27639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29360128 }, %struct.usb_device_id { i16 3, i16 2652, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 2652, i16 8202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2652, i16 8245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2652, i16 8249, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2652, i16 8449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2652, i16 8222, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2652, i16 8464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1008, i16 5917, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32474, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32430, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32426, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1293, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1293, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 2821, i16 5909, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1149, i16 4190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1024, i16 2055, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32 }, %struct.usb_device_id { i16 3, i16 1024, i16 2058, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32 }, %struct.usb_device_id { i16 3, i16 3678, i16 26146, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1048608 }, %struct.usb_device_id { i16 3, i16 4880, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 2301, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2301, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2578, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 40 }, %struct.usb_device_id { i16 3, i16 5843, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 40 }, %struct.usb_device_id { i16 3, i16 4742, i16 8260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 4742, i16 8262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 4742, i16 8270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 -32633, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 38, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 41, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 50, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 51, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2010, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2012, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 100663552 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554688 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2603, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2727, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33554688 }, %struct.usb_device_id { i16 3, i16 -32633, i16 2730, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 897, i16 -32633, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -32, i8 1, i8 1, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3034, i16 -20468, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3034, i16 -14302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3034, i16 -14254, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3034, i16 14426, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3034, i16 18514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 1221, i16 5724, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 1226, i16 16390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 897, i16 3034, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -32, i8 1, i8 1, i8 0, i32 131072 }, %struct.usb_device_id { i16 897, i16 3725, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -32, i8 1, i8 1, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 5075, i16 13664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2097152 }, %struct.usb_device_id { i16 3, i16 1086, i16 12553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 1226, i16 14338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 5075, i16 13667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 5075, i16 13668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 1161, i16 -7975, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14680064 }, %struct.usb_device_id { i16 3, i16 2352, i16 541, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8059, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8053, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13334, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13460, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 29586, i16 -23023, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 3034, i16 -20471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 12280, i16 -20463, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 9047, i16 1540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 2821, i16 6414, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 2821, i16 6108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13332, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13409, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13410, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 5075, i16 13606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 2821, i16 6236, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 1226, i16 16389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 1221, i16 5663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 2821, i16 6383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 5075, i16 13640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 5075, i16 13641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 5075, i16 13651, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 5075, i16 13653, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 12280, i16 12369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 4952, i16 -16093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3034, i16 -16093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3253, i16 -15033, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4325376 }, %struct.usb_device_id { i16 3, i16 3088, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id zeroinitializer], [1072 x i8] zeroinitializer }, align 32
@btusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@btusb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&data->waker)\00", [32 x i8] zeroinitializer }, align 32
@btusb_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&data->rx_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@btusb_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&data->rx_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@btusb_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&data->txlock\00", [18 x i8] zeroinitializer }, align 32
@btusb_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&data->rxlock\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set interface 0, alt 0 %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"force_poll_sync\00", [16 x i8] zeroinitializer }, align 32
@force_poll_sync_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_poll_sync_read, ptr @force_poll_sync_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@btusb_qca_send_vendor_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 3047, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to access otp area (%d)\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"btusb_qca_send_vendor_req\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@btusb_qca_send_vendor_req._entry_ptr = internal global ptr @btusb_qca_send_vendor_req._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@btusb_work.alts = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 5], [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: set USB alt:(%d) failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@btusb_find_altsetting.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 1, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_find_altsetting\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Looking for Alt no :%d\0A\00", [40 x i8] zeroinitializer }, align 32
@btusb_submit_isoc_urb.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_submit_isoc_urb\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: urb %p submission failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@btusb_isoc_complete.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btusb_isoc_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s urb %p status %d count %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: corrupted SCO packet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: urb %p failed to resubmit (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__fill_isoc_descriptor.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__fill_isoc_descriptor\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"len %d mtu %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: setting interface failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid SCO descriptors\0A\00", [35 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@btusb_open.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.4, ptr @.str.28, i8 1, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btusb_open\00", [21 x i8] zeroinitializer }, align 32
@btusb_submit_intr_urb.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.28, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_submit_intr_urb\00", [42 x i8] zeroinitializer }, align 32
@btusb_intr_complete.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.4, ptr @.str.31, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btusb_intr_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: corrupted event packet\0A\00", [36 x i8] zeroinitializer }, align 32
@btusb_submit_bulk_urb.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.4, ptr @.str.28, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_submit_bulk_urb\00", [42 x i8] zeroinitializer }, align 32
@btusb_bulk_complete.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.4, ptr @.str.31, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btusb_bulk_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: corrupted ACL packet\0A\00", [38 x i8] zeroinitializer }, align 32
@btusb_submit_diag_urb.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.28, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_submit_diag_urb\00", [42 x i8] zeroinitializer }, align 32
@btusb_diag_complete.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.4, ptr @.str.31, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"btusb_diag_complete\00", [44 x i8] zeroinitializer }, align 32
@btusb_close.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.4, ptr @.str.28, i8 1, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btusb_close\00", [20 x i8] zeroinitializer }, align 32
@btusb_flush.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.28, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btusb_flush\00", [20 x i8] zeroinitializer }, align 32
@btusb_send_frame.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.4, ptr @.str.28, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btusb_send_frame\00", [47 x i8] zeroinitializer }, align 32
@btusb_tx_complete.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.4, ptr @.str.31, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btusb_tx_complete\00", [46 x i8] zeroinitializer }, align 32
@btusb_isoc_tx_complete.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.4, ptr @.str.31, i8 1, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btusb_isoc_tx_complete\00", [41 x i8] zeroinitializer }, align 32
@__fill_isoc_descriptor_msbc.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.4, ptr @.str.35, i8 1, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__fill_isoc_descriptor_msbc\00", [36 x i8] zeroinitializer }, align 32
@btusb_notify.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btusb_notify\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s evt %d\0A\00", [21 x i8] zeroinitializer }, align 32
@btusb_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb1286,204e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usbcf3,e300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb4ca,301a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@btusb_config_oob_wake.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 3, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_config_oob_wake\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s: no OOB Wakeup IRQ in DT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OOB Wake-on-BT\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s: IRQ request failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s: failed to init_wakeup\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: OOB Wake-on-BT configured at IRQ %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell,wakeup-pin\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,wakeup-gap-ms\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s: No memory\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.marvell_config_oob_wake = private unnamed_addr constant [24 x i8] c"marvell_config_oob_wake\00", align 1
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %s: configuration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@btusb_setup_bcm92035.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.4, ptr @.str.28, i8 1, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btusb_setup_bcm92035\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: BCM92035 command failed (%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@btusb_send_frame_intel.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.4, ptr @.str.28, i8 2, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btusb_send_frame_intel\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: No way to reset. Ignoring and continuing\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: last reset failed? Not resetting again\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Initiating HW reset via gpio\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: changing Marvell device address failed (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to get device id (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to get fw version (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7663pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek/mt7668pr2h.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mediatek/BT_RAM_CODE_MT%04x_1_%x_hdr.bin\00", [55 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to set up firmware (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to send wmt func ctrl (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unsupported hardware variant (%08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query firmware status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: firmware already downloaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: function already on\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to apply low power setting (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Device setup in %llu usecs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Execution of wmt command interrupted\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Execution of wmt command timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Wrong op received %d expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to write uhw reg(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to query function status (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.4, ptr @.str.97, i8 2, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btusb_mtk_cmd_timeout\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Initiating reset mechanism via uhw\0A\00", [56 x i8] zeroinitializer }, align 32
@btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.4, ptr @.str.98, i8 2, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Bluetooth Reset Successfully\0A\00", [62 x i8] zeroinitializer }, align 32
@btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.4, ptr @.str.99, i8 2, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Polling Bluetooth Reset CR\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Can't get device id, subsys reset fail.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to read uhw reg(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@btusb_mtk_uhw_reg_read.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 2, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btusb_mtk_uhw_reg_read\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: reg=%x, value=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@qca_devices_table = internal constant { [9 x %struct.qca_device_info], [56 x i8] } { [9 x %struct.qca_device_info] [%struct.qca_device_info { i32 256, i8 20, i8 4, i8 8 }, %struct.qca_device_info { i32 257, i8 20, i8 4, i8 8 }, %struct.qca_device_info { i32 512, i8 28, i8 4, i8 16 }, %struct.qca_device_info { i32 513, i8 28, i8 4, i8 16 }, %struct.qca_device_info { i32 768, i8 28, i8 4, i8 16 }, %struct.qca_device_info { i32 770, i8 28, i8 4, i8 16 }, %struct.qca_device_info { i32 1245440, i8 40, i8 4, i8 16 }, %struct.qca_device_info { i32 1245696, i8 40, i8 4, i8 16 }, %struct.qca_device_info { i32 1245697, i8 40, i8 4, i8 16 }], [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: don't support firmware rome 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qca/rampatch_usb_%08x.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to request rampatch file: %s (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: using rampatch file: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: QCA: patch rome 0x%x build 0x%x, firmware rome 0x%x build 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: rampatch file version did not match with firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to send headers (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to send body at %zd of %zd (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to get bulk buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to request NVM file: %s (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: using NVM file: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_gf\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qca/nvm_usb_%08x%s.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qca/nvm_usb_%08x%s_%04x.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca/nvm_usb_%08x.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Change address command failed (%ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Reset qca device via bt_en gpio\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Multiple cmd timeouts seen. Resetting usb device.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed usb_autopm_get_interface with %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: HCI reset during shutdown failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: No gpio to reset Realtek device, ignoring\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Reset Realtek device via gpio\0A\00", [61 x i8] zeroinitializer }, align 32
@btusb_setup_csr.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.127, ptr @.str.4, ptr @.str.28, i8 1, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btusb_setup_csr\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: CSR: Local version failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: CSR: Local version length mismatch\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: CSR: Unbranded CSR clone detected; adding workarounds and force-suspending once...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s: CSR: Failed to suspend the device for our Barrot 8041a02 receive-issue workaround\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: invalid diagnostic descriptors\0A\00", [60 x i8] zeroinitializer }, align 32
@btusb_disconnect.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.4, ptr @.str.134, i8 3, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btusb_disconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intf %p\0A\00", [23 x i8] zeroinitializer }, align 32
@btusb_suspend.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.135, ptr @.str.4, ptr @.str.134, i8 3, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btusb_suspend\00", [18 x i8] zeroinitializer }, align 32
@btusb_resume.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.4, ptr @.str.134, i8 3, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btusb_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s urb %p submission failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [6 x i64] [i64 4, i64 32, i64 30307, i64 30312, i64 31010, i64 31073]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 16, i64 1534, i64 1535, i64 64623]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 23]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967295]
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"btusb_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 4098, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"disable_scofix\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 32, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"force_scofix\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 33, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"enable_autosuspend\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 34, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 35, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 4127, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"btusb_table\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 66, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3552, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"blacklist_table\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 175, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3623, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3624, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3625, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3631, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3638, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3672, i32 52 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3868, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3897, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"force_poll_sync_fops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3535, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3047, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [5 x i8] c"alts\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1877, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1904, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1843, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1270, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1303, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1161, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1179, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1199, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1245, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1766, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1790, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1984, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1367, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1368, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1458, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1003, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 956, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 967, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1117, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1072, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1083, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1362, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1319, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1521, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1558, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1707, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1407, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1436, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1211, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1745, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [18 x i8] c"btusb_match_table\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3425, i32 34 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3446, i32 40 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3448, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3454, i32 14 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3456, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3462, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3467, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2881, i32 41 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2882, i32 41 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2895, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2904, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1943, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1947, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2176, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 647, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 659, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 663, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2927, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2626, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2638, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2645, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2648, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2653, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2658, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2675, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2683, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2697, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2702, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2725, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2755, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2765, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2440, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2446, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2455, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 125, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2538, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2513, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2812, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2831, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2835, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2842, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2564, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2569, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [18 x i8] c"qca_devices_table\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3018, i32 37 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3293, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3142, i32 35 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3146, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3151, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3164, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3169, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3087, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3108, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3114, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3238, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3243, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3205, i32 14 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3208, i32 14 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3213, i32 31 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3216, i32 31 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3220, i32 30 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2952, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 709, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 729, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 735, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3491, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 678, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 693, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1963, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1969, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1974, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2035, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2083, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3351, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3914, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 3959, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 4040, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.619 = private constant [29 x i8] c"../drivers/bluetooth/btusb.c\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 4015, i32 5 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author531, ptr @__UNIQUE_ID_description532, ptr @__UNIQUE_ID_disable_scofix524, ptr @__UNIQUE_ID_disable_scofixtype523, ptr @__UNIQUE_ID_enable_autosuspend528, ptr @__UNIQUE_ID_enable_autosuspendtype527, ptr @__UNIQUE_ID_file534, ptr @__UNIQUE_ID_force_scofix526, ptr @__UNIQUE_ID_force_scofixtype525, ptr @__UNIQUE_ID_license535, ptr @__UNIQUE_ID_reset530, ptr @__UNIQUE_ID_resettype529, ptr @__UNIQUE_ID_version533, ptr @__exitcall_btusb_driver_exit, ptr @__initcall__kmod_btusb__522_4111_btusb_driver_init6, ptr @__modver_attr, ptr @__param_disable_scofix, ptr @__param_enable_autosuspend, ptr @__param_force_scofix, ptr @__param_reset, ptr @btusb_driver_exit, ptr @btusb_qca_send_vendor_req._entry, ptr @btusb_qca_send_vendor_req._entry_ptr, ptr @btusb_driver, ptr @disable_scofix, ptr @force_scofix, ptr @enable_autosuspend, ptr @reset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @btusb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @blacklist_table, ptr @btusb_probe.__key, ptr @.str.6, ptr @btusb_probe.__key.7, ptr @.str.8, ptr @btusb_probe.__key.9, ptr @.str.10, ptr @btusb_probe.__key.11, ptr @.str.12, ptr @btusb_probe.__key.13, ptr @.str.14, ptr @btusb_probe.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @force_poll_sync_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @btusb_work.alts, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @skb_queue_head_init.__key, ptr @.str.38, ptr @init_usb_anchor.__key, ptr @.str.39, ptr @init_usb_anchor.__key.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @btusb_match_table, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @qca_devices_table, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_scofix to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_scofix to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_autosuspend to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklist_table to i32), i32 4272, i32 5344, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_poll_sync_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_qca_send_vendor_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_work.alts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btusb_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_devices_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @btusb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @btusb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_probe.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_probe.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.5, ptr noundef %intf, ptr noundef %id) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %do.end.if.end16_crit_edge, label %if.then4

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then4:                                         ; preds = %do.end
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %and = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp12.not = icmp eq i8 %3, 2
  %or.cond = select i1 %tobool5.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.then4.if.end16_crit_edge, label %if.then4.cleanup480_crit_edge

if.then4.cleanup480_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

if.then4.if.end16_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.then4.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %conv20 = zext i8 %3 to i32
  %driver_info21 = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %6 = ptrtoint ptr %driver_info21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_info21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %if.then23, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call ptr @usb_match_id(ptr noundef %intf, ptr noundef nonnull @blacklist_table) #11
  %tobool25.not = icmp eq ptr %call24, null
  %spec.select = select i1 %tobool25.not, ptr %id, ptr %call24
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end16.if.end28_crit_edge
  %id.addr.1 = phi ptr [ %id, %if.end16.if.end28_crit_edge ], [ %spec.select, %if.then23 ]
  %driver_info29 = getelementptr inbounds %struct.usb_device_id, ptr %id.addr.1, i32 0, i32 12
  %8 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_info29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp30 = icmp eq i32 %9, 1
  br i1 %cmp30, label %if.end28.cleanup480_crit_edge, label %if.end33

if.end28.cleanup480_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

if.end33:                                         ; preds = %if.end28
  %and35 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end45_crit_edge, label %if.then37

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then37:                                        ; preds = %if.end33
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -128
  %bcdDevice = getelementptr i8, ptr %11, i32 940
  %12 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bcdDevice, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp40 = icmp ult i16 %14, 2
  br i1 %cmp40, label %land.lhs.true, label %if.then37.if.end45_crit_edge

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true:                                    ; preds = %if.then37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 20) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.cleanup480_crit_edge, label %if.end.i.i

land.lhs.true.cleanup480_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

if.end.i.i:                                       ; preds = %land.lhs.true
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or2.i.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 20, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %btusb_qca_send_vendor_req.exit.thread4.i, label %btusb_qca_need_patch.exit

btusb_qca_send_vendor_req.exit.thread4.i:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %call3.i.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup480

btusb_qca_need_patch.exit:                        ; preds = %if.end.i.i
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %ver.sroa.0.0.copyload.i = load i32, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %19 = and i32 %ver.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %btusb_qca_need_patch.exit.if.end45_crit_edge, label %btusb_qca_need_patch.exit.cleanup480_crit_edge

btusb_qca_need_patch.exit.cleanup480_crit_edge:   ; preds = %btusb_qca_need_patch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

btusb_qca_need_patch.exit.if.end45_crit_edge:     ; preds = %btusb_qca_need_patch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %btusb_qca_need_patch.exit.if.end45_crit_edge, %if.then37.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1248, i32 noundef 3520) #11
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.end45.cleanup480_crit_edge, label %for.cond.preheader

if.end45.cleanup480_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

for.cond.preheader:                               ; preds = %if.end45
  %20 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp53754.not = icmp eq i8 %23, 0
  br i1 %cmp53754.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %21, i32 0, i32 3
  %intr_ep = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 26
  %bulk_tx_ep = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 27
  %bulk_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0755 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %i.0755
  %26 = ptrtoint ptr %intr_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intr_ep, align 4
  %tobool57.not = icmp eq ptr %27, null
  br i1 %tobool57.not, label %land.lhs.true58, label %for.body.if.end63_crit_edge

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true58:                                  ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %28 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmAttributes.i.i, align 1
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp.i.not.i = icmp eq i8 %30, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %land.lhs.true58.if.end63_crit_edge

land.lhs.true58.if.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

usb_endpoint_is_int_in.exit:                      ; preds = %land.lhs.true58
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %31 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool60.not = icmp sgt i8 %32, -1
  br i1 %tobool60.not, label %usb_endpoint_is_int_in.exit.if.end63_crit_edge, label %usb_endpoint_is_int_in.exit.for.inc.sink.split_crit_edge

usb_endpoint_is_int_in.exit.for.inc.sink.split_crit_edge: ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

usb_endpoint_is_int_in.exit.if.end63_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63:                                         ; preds = %usb_endpoint_is_int_in.exit.if.end63_crit_edge, %land.lhs.true58.if.end63_crit_edge, %for.body.if.end63_crit_edge
  %33 = ptrtoint ptr %bulk_tx_ep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bulk_tx_ep, align 4
  %tobool64.not = icmp eq ptr %34, null
  br i1 %tobool64.not, label %land.lhs.true65, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

land.lhs.true65:                                  ; preds = %if.end63
  %bmAttributes.i.i712 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %35 = ptrtoint ptr %bmAttributes.i.i712 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bmAttributes.i.i712, align 1
  %37 = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp.i.not.i713 = icmp eq i8 %37, 2
  br i1 %cmp.i.not.i713, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true65.if.end70_crit_edge

land.lhs.true65.if.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true65
  %bEndpointAddress.i.i714 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %38 = ptrtoint ptr %bEndpointAddress.i.i714 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bEndpointAddress.i.i714, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool67.not = icmp slt i8 %39, 0
  br i1 %tobool67.not, label %usb_endpoint_is_bulk_out.exit.if.end70_crit_edge, label %usb_endpoint_is_bulk_out.exit.for.inc.sink.split_crit_edge

usb_endpoint_is_bulk_out.exit.for.inc.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

usb_endpoint_is_bulk_out.exit.if.end70_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end70:                                         ; preds = %usb_endpoint_is_bulk_out.exit.if.end70_crit_edge, %land.lhs.true65.if.end70_crit_edge, %if.end63.if.end70_crit_edge
  %40 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bulk_rx_ep, align 4
  %tobool71.not = icmp eq ptr %41, null
  br i1 %tobool71.not, label %land.lhs.true72, label %if.end70.for.inc_crit_edge

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true72:                                  ; preds = %if.end70
  %bmAttributes.i.i716 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %42 = ptrtoint ptr %bmAttributes.i.i716 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bmAttributes.i.i716, align 1
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp.i.not.i717 = icmp eq i8 %44, 2
  br i1 %cmp.i.not.i717, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true72.for.inc_crit_edge

land.lhs.true72.for.inc_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true72
  %bEndpointAddress.i.i718 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %45 = ptrtoint ptr %bEndpointAddress.i.i718 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bEndpointAddress.i.i718, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool74.not = icmp sgt i8 %46, -1
  br i1 %tobool74.not, label %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, label %usb_endpoint_is_bulk_in.exit.for.inc.sink.split_crit_edge

usb_endpoint_is_bulk_in.exit.for.inc.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

usb_endpoint_is_bulk_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc.sink.split:                               ; preds = %usb_endpoint_is_bulk_in.exit.for.inc.sink.split_crit_edge, %usb_endpoint_is_bulk_out.exit.for.inc.sink.split_crit_edge, %usb_endpoint_is_int_in.exit.for.inc.sink.split_crit_edge
  %bulk_rx_ep.sink = phi ptr [ %intr_ep, %usb_endpoint_is_int_in.exit.for.inc.sink.split_crit_edge ], [ %bulk_tx_ep, %usb_endpoint_is_bulk_out.exit.for.inc.sink.split_crit_edge ], [ %bulk_rx_ep, %usb_endpoint_is_bulk_in.exit.for.inc.sink.split_crit_edge ]
  %47 = ptrtoint ptr %bulk_rx_ep.sink to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx, ptr %bulk_rx_ep.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, %land.lhs.true72.for.inc_crit_edge, %if.end70.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0755, 1
  %48 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bNumEndpoints, align 4
  %conv52 = zext i8 %49 to i32
  %cmp53 = icmp ult i32 %inc, %conv52
  br i1 %cmp53, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %intr_ep78 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 26
  %50 = ptrtoint ptr %intr_ep78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intr_ep78, align 4
  %tobool79.not = icmp eq ptr %51, null
  br i1 %tobool79.not, label %for.end.cleanup480_crit_edge, label %lor.lhs.false

for.end.cleanup480_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

lor.lhs.false:                                    ; preds = %for.end
  %bulk_tx_ep80 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 27
  %52 = ptrtoint ptr %bulk_tx_ep80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bulk_tx_ep80, align 4
  %tobool81.not = icmp eq ptr %53, null
  br i1 %tobool81.not, label %lor.lhs.false.cleanup480_crit_edge, label %lor.lhs.false82

lor.lhs.false.cleanup480_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

lor.lhs.false82:                                  ; preds = %lor.lhs.false
  %bulk_rx_ep83 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 28
  %54 = ptrtoint ptr %bulk_rx_ep83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bulk_rx_ep83, align 4
  %tobool84.not = icmp eq ptr %55, null
  br i1 %tobool84.not, label %lor.lhs.false82.cleanup480_crit_edge, label %if.end86

lor.lhs.false82.cleanup480_crit_edge:             ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

if.end86:                                         ; preds = %lor.lhs.false82
  %56 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_info29, align 4
  %and88 = and i32 %57, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %spec.select759 = select i1 %tobool89.not, i8 32, i8 33
  %spec.select760 = select i1 %tobool89.not, i8 0, i8 43
  %58 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 34
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %spec.select759, ptr %58, align 4
  %60 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 35
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select760, ptr %60, align 1
  %parent.i721 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %parent.i721 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i721, align 8
  %add.ptr.i722 = getelementptr i8, ptr %63, i32 -128
  %udev95 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %udev95 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i722, ptr %udev95, align 4
  %intf96 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %intf96 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %intf, ptr %intf96, align 4
  %work = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %66 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @btusb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry102 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %entry102 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry102, ptr %entry102, align 4
  %prev.i = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %entry102, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 9, i32 2
  %69 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @btusb_work, ptr %func, align 4
  %waker = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %waker, i32 noundef 0) #11
  %70 = ptrtoint ptr %waker to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -64, ptr %waker, align 4
  %lockdep_map112 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map112, ptr noundef nonnull @.str.8, ptr noundef nonnull @btusb_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry114 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %entry114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entry114, ptr %entry114, align 4
  %prev.i723 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i723 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entry114, ptr %prev.i723, align 4
  %func116 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 10, i32 2
  %73 = ptrtoint ptr %func116 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @btusb_waker, ptr %func116, align 4
  %rx_work = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #11
  %74 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map129 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map129, ptr noundef nonnull @.str.10, ptr noundef nonnull @btusb_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry132 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %75 = ptrtoint ptr %entry132 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry132, ptr %entry132, align 4
  %prev.i724 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i724 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry132, ptr %prev.i724, align 4
  %func135 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %77 = ptrtoint ptr %func135 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @btusb_rx_work, ptr %func135, align 4
  %timer = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @btusb_probe.__key.11) #11
  %acl_q = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 12
  %lock.i = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %78 = ptrtoint ptr %acl_q to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %acl_q, ptr %acl_q, align 4
  %prev.i.i = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 12, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %acl_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 12, i32 1
  %80 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %qlen.i.i, align 4
  %deferred = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 13
  %81 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 13, i32 1
  %82 = call ptr @memset(ptr %81, i32 0, i32 104)
  %83 = ptrtoint ptr %deferred to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %deferred, ptr %deferred, align 4
  %prev.i.i725 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i725 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %deferred, ptr %prev.i.i725, align 4
  tail call void @__init_waitqueue_head(ptr noundef %81, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i726 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i726, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %tx_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 14
  %85 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 14, i32 1
  %86 = call ptr @memset(ptr %85, i32 0, i32 104)
  %87 = ptrtoint ptr %tx_anchor to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %tx_anchor, ptr %tx_anchor, align 4
  %prev.i.i727 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i727 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %tx_anchor, ptr %prev.i.i727, align 4
  tail call void @__init_waitqueue_head(ptr noundef %85, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i729 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i729, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %txlock = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %txlock, ptr noundef nonnull @.str.14, ptr noundef nonnull @btusb_probe.__key.13, i16 noundef signext 3) #11
  %intr_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 17
  %89 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 17, i32 1
  %90 = call ptr @memset(ptr %89, i32 0, i32 104)
  %91 = ptrtoint ptr %intr_anchor to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %intr_anchor, ptr %intr_anchor, align 4
  %prev.i.i730 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 17, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i730 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %intr_anchor, ptr %prev.i.i730, align 4
  tail call void @__init_waitqueue_head(ptr noundef %89, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i732 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i732, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %bulk_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 18
  %93 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 18, i32 1
  %94 = call ptr @memset(ptr %93, i32 0, i32 104)
  %95 = ptrtoint ptr %bulk_anchor to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %bulk_anchor, ptr %bulk_anchor, align 4
  %prev.i.i733 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 18, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i733 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %bulk_anchor, ptr %prev.i.i733, align 4
  tail call void @__init_waitqueue_head(ptr noundef %93, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i735 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i735, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %isoc_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 19
  %97 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 19, i32 1
  %98 = call ptr @memset(ptr %97, i32 0, i32 104)
  %99 = ptrtoint ptr %isoc_anchor to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %isoc_anchor, ptr %isoc_anchor, align 4
  %prev.i.i736 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 19, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i736 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %isoc_anchor, ptr %prev.i.i736, align 4
  tail call void @__init_waitqueue_head(ptr noundef %97, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i738 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i738, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %diag_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 20
  %101 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 20, i32 1
  %102 = call ptr @memset(ptr %101, i32 0, i32 104)
  %103 = ptrtoint ptr %diag_anchor to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %diag_anchor, ptr %diag_anchor, align 4
  %prev.i.i739 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 20, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i739 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %diag_anchor, ptr %prev.i.i739, align 4
  tail call void @__init_waitqueue_head(ptr noundef %101, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i741 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 20, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i741, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %ctrl_anchor = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 21
  %105 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 21, i32 1
  %106 = call ptr @memset(ptr %105, i32 0, i32 104)
  %107 = ptrtoint ptr %ctrl_anchor to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %ctrl_anchor, ptr %ctrl_anchor, align 4
  %prev.i.i742 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 21, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i742 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ctrl_anchor, ptr %prev.i.i742, align 4
  tail call void @__init_waitqueue_head(ptr noundef %105, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i744 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 21, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i744, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #11
  %rxlock = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %rxlock, ptr noundef nonnull @.str.16, ptr noundef nonnull @btusb_probe.__key.15, i16 noundef signext 3) #11
  %recv_event = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 41
  %109 = ptrtoint ptr %recv_event to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @hci_recv_frame, ptr %recv_event, align 4
  %recv_bulk = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 43
  %110 = ptrtoint ptr %recv_bulk to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @btusb_recv_bulk, ptr %recv_bulk, align 4
  %111 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %driver_info29, align 4
  %and153 = and i32 %112, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end86.if.end158_crit_edge, label %if.then155

if.end86.if.end158_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then155:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %recv_event to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @btusb_recv_event_intel, ptr %recv_event, align 4
  %114 = ptrtoint ptr %recv_bulk to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @btusb_recv_bulk_intel, ptr %recv_bulk, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end86.if.end158_crit_edge
  %priv_size.0 = phi i32 [ 4, %if.then155 ], [ 0, %if.end86.if.end158_crit_edge ]
  %recv_acl = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 42
  %115 = ptrtoint ptr %recv_acl to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @hci_recv_frame, ptr %recv_acl, align 4
  %call159 = tail call ptr @hci_alloc_dev_priv(i32 noundef %priv_size.0) #11
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %if.end158.cleanup480_crit_edge, label %if.end162

if.end158.cleanup480_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup480

if.end162:                                        ; preds = %if.end158
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 5
  %116 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 204, i32 8
  %117 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %118 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %driver_info29, align 4
  %and164 = lshr i32 %119, 14
  %120 = trunc i32 %and164 to i8
  %121 = and i8 %120, 1
  %122 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 6
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %121, ptr %122, align 1
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call159, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 204, i32 1
  %125 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %dev, ptr %parent, align 8
  %126 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %udev95, align 4
  %dev174 = getelementptr inbounds %struct.usb_device, ptr %127, i32 0, i32 15
  %call175 = tail call ptr @gpiod_get_optional(ptr noundef %dev174, ptr noundef nonnull @.str.17, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then177, label %if.else179

if.then177:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %call175 to i32
  br label %out_free_dev

if.else179:                                       ; preds = %if.end162
  %tobool180.not = icmp eq ptr %call175, null
  br i1 %tobool180.not, label %if.else179.if.end184_crit_edge, label %if.then181

if.else179.if.end184_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then181:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #13
  %reset_gpio182 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 33
  %129 = ptrtoint ptr %reset_gpio182 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call175, ptr %reset_gpio182, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %if.else179.if.end184_crit_edge
  %open = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 232
  %130 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @btusb_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 233
  %131 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @btusb_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 234
  %132 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @btusb_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 237
  %133 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @btusb_send_frame, ptr %send, align 4
  %notify = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 238
  %134 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @btusb_notify, ptr %notify, align 8
  %wakeup = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 244
  %135 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @btusb_wakeup, ptr %wakeup, align 8
  %call185 = tail call fastcc i32 @btusb_config_oob_wake(ptr noundef nonnull %call159)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end184.out_free_dev_crit_edge

if.end184.out_free_dev_crit_edge:                 ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.end188:                                        ; preds = %if.end184
  %136 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %driver_info29, align 4
  %and190 = and i32 %137, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end188.if.end199_crit_edge, label %land.lhs.true192

if.end188.if.end199_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

land.lhs.true192:                                 ; preds = %if.end188
  %oob_wake_irq = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 45
  %138 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %oob_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool193.not = icmp eq i32 %139, 0
  br i1 %tobool193.not, label %land.lhs.true192.if.end199_crit_edge, label %if.then194

land.lhs.true192.if.end199_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then194:                                       ; preds = %land.lhs.true192
  %call195 = tail call fastcc i32 @marvell_config_oob_wake(ptr noundef nonnull %call159)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.then194.if.end199_crit_edge, label %if.then194.out_free_dev_crit_edge

if.then194.out_free_dev_crit_edge:                ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.then194.if.end199_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.end199:                                        ; preds = %if.then194.if.end199_crit_edge, %land.lhs.true192.if.end199_crit_edge, %if.end188.if.end199_crit_edge
  %140 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %driver_info29, align 4
  %and201 = and i32 %141, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end199.if.end204_crit_edge, label %if.then203

if.end199.if.end204_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end204

if.then203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 5, ptr noundef %quirks) #11
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %if.end199.if.end204_crit_edge
  %142 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %driver_info29, align 4
  %and206 = and i32 %143, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.end204.if.end210_crit_edge, label %if.then208

if.end204.if.end210_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

if.then208:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  %quirks209 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 5, ptr noundef %quirks209) #11
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end204.if.end210_crit_edge
  %144 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %driver_info29, align 4
  %and212 = and i32 %145, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end210.if.end215_crit_edge, label %if.then214

if.end210.if.end215_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then214:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %146 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @btusb_setup_bcm92035, ptr %setup, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %if.end210.if.end215_crit_edge
  %147 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %driver_info29, align 4
  %and217 = and i32 %148, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end215.if.end224_crit_edge, label %if.then219

if.end215.if.end224_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end224

if.then219:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 31
  %149 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 15, ptr %manufacturer, align 2
  %setup220 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %150 = ptrtoint ptr %setup220 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @btbcm_setup_patchram, ptr %setup220, align 4
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 241
  %151 = ptrtoint ptr %set_diag to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @btusb_bcm_set_diag, ptr %set_diag, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %152 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @btbcm_set_bdaddr, ptr %set_bdaddr, align 8
  %153 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %udev95, align 4
  %add222 = add nuw nsw i32 %conv20, 2
  %call223 = tail call ptr @usb_ifnum_to_if(ptr noundef %154, i32 noundef %add222) #11
  %diag = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 4
  %155 = ptrtoint ptr %diag to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call223, ptr %diag, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %if.end215.if.end224_crit_edge
  %156 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %driver_info29, align 4
  %and226 = and i32 %157, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.end224.if.end236_crit_edge, label %if.then228

if.end224.if.end236_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236

if.then228:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  %manufacturer229 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 31
  %158 = ptrtoint ptr %manufacturer229 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 15, ptr %manufacturer229, align 2
  %setup230 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %159 = ptrtoint ptr %setup230 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @btbcm_setup_apple, ptr %setup230, align 4
  %set_diag231 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 241
  %160 = ptrtoint ptr %set_diag231 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @btusb_bcm_set_diag, ptr %set_diag231, align 4
  %161 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %udev95, align 4
  %add233 = add nuw nsw i32 %conv20, 2
  %call234 = tail call ptr @usb_ifnum_to_if(ptr noundef %162, i32 noundef %add233) #11
  %diag235 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 4
  %163 = ptrtoint ptr %diag235 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call234, ptr %diag235, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then228, %if.end224.if.end236_crit_edge
  %164 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %driver_info29, align 4
  %and238 = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %if.end236.if.end267_crit_edge, label %if.then240

if.end236.if.end267_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

if.then240:                                       ; preds = %if.end236
  %call241 = tail call i32 @btintel_configure_setup(ptr noundef nonnull %call159) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %if.then240.out_free_dev_crit_edge

if.then240.out_free_dev_crit_edge:                ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.end244:                                        ; preds = %if.then240
  %166 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @btusb_send_frame_intel, ptr %send, align 4
  %cmd_timeout = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 243
  %167 = ptrtoint ptr %cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @btusb_intel_cmd_timeout, ptr %cmd_timeout, align 4
  %168 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %driver_info29, align 4
  %and247 = and i32 %169, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end244.if.end254_crit_edge, label %do.body250

if.end244.if.end254_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end254

do.body250:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i745 = getelementptr i8, ptr %call159, i32 5544
  tail call void @_set_bit(i32 noundef 5, ptr noundef %add.ptr.i745) #11
  br label %if.end254

if.end254:                                        ; preds = %do.body250, %if.end244.if.end254_crit_edge
  %170 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %driver_info29, align 4
  %and256 = and i32 %171, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %if.end254.if.end267_crit_edge, label %do.body259

if.end254.if.end267_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

do.body259:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i746 = getelementptr i8, ptr %call159, i32 5544
  tail call void @_set_bit(i32 noundef 6, ptr noundef %add.ptr.i746) #11
  br label %if.end267

if.end267:                                        ; preds = %do.body259, %if.end254.if.end267_crit_edge, %if.end236.if.end267_crit_edge
  %172 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %driver_info29, align 4
  %and269 = and i32 %173, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.end267.if.end273_crit_edge, label %if.then271

if.end267.if.end273_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273

if.then271:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  %set_bdaddr272 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %174 = ptrtoint ptr %set_bdaddr272 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @btusb_set_bdaddr_marvell, ptr %set_bdaddr272, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %if.end267.if.end273_crit_edge
  %175 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %driver_info29, align 4
  %and275 = and i32 %176, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %if.end273.if.end284_crit_edge, label %if.then277

if.end273.if.end284_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end284

if.then277:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #13
  %setup278 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %177 = ptrtoint ptr %setup278 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @btusb_mtk_setup, ptr %setup278, align 4
  %shutdown = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 236
  %178 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @btusb_mtk_shutdown, ptr %shutdown, align 8
  %manufacturer279 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 31
  %179 = ptrtoint ptr %manufacturer279 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 70, ptr %manufacturer279, align 2
  %cmd_timeout280 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 243
  %180 = ptrtoint ptr %cmd_timeout280 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @btusb_mtk_cmd_timeout, ptr %cmd_timeout280, align 4
  %set_bdaddr281 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %181 = ptrtoint ptr %set_bdaddr281 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @btmtk_set_bdaddr, ptr %set_bdaddr281, align 8
  %quirks282 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 12, ptr noundef %quirks282) #11
  %182 = ptrtoint ptr %recv_acl to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @btusb_recv_acl_mtk, ptr %recv_acl, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then277, %if.end273.if.end284_crit_edge
  %183 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %driver_info29, align 4
  %and286 = and i32 %184, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %if.end284.if.end291_crit_edge, label %if.then288

if.end284.if.end291_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end291

if.then288:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  %quirks289 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 3, ptr noundef %quirks289) #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %quirks289) #11
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %if.end284.if.end291_crit_edge
  %185 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %driver_info29, align 4
  %and293 = and i32 %186, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %if.end291.if.end298_crit_edge, label %if.then295

if.end291.if.end298_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

if.then295:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  %manufacturer296 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 31
  %187 = ptrtoint ptr %manufacturer296 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 2, ptr %manufacturer296, align 2
  %quirks297 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %quirks297) #11
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end291.if.end298_crit_edge
  %188 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %driver_info29, align 4
  %and300 = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end298.if.end306_crit_edge, label %if.then302

if.end298.if.end306_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end306

if.then302:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #13
  %setup_on_usb = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 44
  %190 = ptrtoint ptr %setup_on_usb to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @btusb_setup_qca, ptr %setup_on_usb, align 4
  %set_bdaddr303 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %191 = ptrtoint ptr %set_bdaddr303 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @btusb_set_bdaddr_ath3012, ptr %set_bdaddr303, align 8
  %quirks304 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 10, ptr noundef %quirks304) #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %quirks304) #11
  br label %if.end306

if.end306:                                        ; preds = %if.then302, %if.end298.if.end306_crit_edge
  %192 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %driver_info29, align 4
  %and308 = and i32 %193, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308)
  %tobool309.not = icmp eq i32 %and308, 0
  br i1 %tobool309.not, label %if.end306.if.end315_crit_edge, label %if.then310

if.end306.if.end315_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end315

if.then310:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #13
  %setup_on_usb311 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 44
  %194 = ptrtoint ptr %setup_on_usb311 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @btusb_setup_qca, ptr %setup_on_usb311, align 4
  %set_bdaddr312 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %195 = ptrtoint ptr %set_bdaddr312 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @btusb_set_bdaddr_ath3012, ptr %set_bdaddr312, align 8
  %cmd_timeout313 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 243
  %196 = ptrtoint ptr %cmd_timeout313 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @btusb_qca_cmd_timeout, ptr %cmd_timeout313, align 4
  %quirks314 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 10, ptr noundef %quirks314) #11
  br label %if.end315

if.end315:                                        ; preds = %if.then310, %if.end306.if.end315_crit_edge
  %197 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %driver_info29, align 4
  %and317 = and i32 %198, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %if.end315.if.end325_crit_edge, label %if.then319

if.end315.if.end325_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end325

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  %setup_on_usb320 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 44
  %199 = ptrtoint ptr %setup_on_usb320 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @btusb_setup_qca, ptr %setup_on_usb320, align 4
  %shutdown321 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 236
  %200 = ptrtoint ptr %shutdown321 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @btusb_shutdown_qca, ptr %shutdown321, align 8
  %set_bdaddr322 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 242
  %201 = ptrtoint ptr %set_bdaddr322 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @btusb_set_bdaddr_wcn6855, ptr %set_bdaddr322, align 8
  %cmd_timeout323 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 243
  %202 = ptrtoint ptr %cmd_timeout323 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @btusb_qca_cmd_timeout, ptr %cmd_timeout323, align 4
  %quirks324 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 10, ptr noundef %quirks324) #11
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 227
  %203 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -656, ptr %msft_opcode.i, align 4
  br label %if.end325

if.end325:                                        ; preds = %if.then319, %if.end315.if.end325_crit_edge
  %204 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %driver_info29, align 4
  %and327 = and i32 %205, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.else330, label %if.end325.if.end336_crit_edge

if.end325.if.end336_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end336

if.else330:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  %206 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %udev95, align 4
  %add332 = add nuw nsw i32 %conv20, 1
  %call333 = tail call ptr @usb_ifnum_to_if(ptr noundef %207, i32 noundef %add332) #11
  %isoc_ifnum = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 5
  %208 = ptrtoint ptr %isoc_ifnum to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add332, ptr %isoc_ifnum, align 4
  br label %if.end336

if.end336:                                        ; preds = %if.else330, %if.end325.if.end336_crit_edge
  %.sink758 = phi ptr [ %call333, %if.else330 ], [ null, %if.end325.if.end336_crit_edge ]
  %209 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 3
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %.sink758, ptr %209, align 4
  %211 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %driver_info29, align 4
  %and338 = and i32 %212, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and338)
  %tobool339.not = icmp eq i32 %and338, 0
  br i1 %tobool339.not, label %if.end336.if.end346_crit_edge, label %if.then340

if.end336.if.end346_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end346

if.then340:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #13
  %setup341 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %213 = ptrtoint ptr %setup341 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @btrtl_setup_realtek, ptr %setup341, align 4
  %shutdown342 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 236
  %214 = ptrtoint ptr %shutdown342 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @btrtl_shutdown_realtek, ptr %shutdown342, align 8
  %cmd_timeout343 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 243
  %215 = ptrtoint ptr %cmd_timeout343 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @btusb_rtl_cmd_timeout, ptr %cmd_timeout343, align 4
  %flags344 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags344) #11
  tail call void @_set_bit(i32 noundef 15, ptr noundef %flags344) #11
  br label %if.end346

if.end346:                                        ; preds = %if.then340, %if.end336.if.end346_crit_edge
  %216 = load i8, ptr @reset, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool347.not = icmp eq i8 %216, 0
  br i1 %tobool347.not, label %if.then348, label %if.end346.if.end350_crit_edge

if.end346.if.end350_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end350

if.then348:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #13
  %quirks349 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks349) #11
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %if.end346.if.end350_crit_edge
  %217 = load i8, ptr @force_scofix, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool351.not = icmp eq i8 %217, 0
  br i1 %tobool351.not, label %lor.lhs.false353, label %if.end350.if.then357_crit_edge

if.end350.if.then357_crit_edge:                   ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then357

lor.lhs.false353:                                 ; preds = %if.end350
  %218 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %driver_info29, align 4
  %and355 = and i32 %219, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %lor.lhs.false353.if.end362_crit_edge, label %lor.lhs.false353.if.then357_crit_edge

lor.lhs.false353.if.then357_crit_edge:            ; preds = %lor.lhs.false353
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then357

lor.lhs.false353.if.end362_crit_edge:             ; preds = %lor.lhs.false353
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end362

if.then357:                                       ; preds = %lor.lhs.false353.if.then357_crit_edge, %if.end350.if.then357_crit_edge
  %220 = load i8, ptr @disable_scofix, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool358.not = icmp eq i8 %220, 0
  br i1 %tobool358.not, label %if.then359, label %if.then357.if.end362_crit_edge

if.then357.if.end362_crit_edge:                   ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end362

if.then359:                                       ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #13
  %quirks360 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 2, ptr noundef %quirks360) #11
  br label %if.end362

if.end362:                                        ; preds = %if.then359, %if.then357.if.end362_crit_edge, %lor.lhs.false353.if.end362_crit_edge
  %221 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %driver_info29, align 4
  %and364 = and i32 %222, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364)
  %tobool365.not = icmp eq i32 %and364, 0
  br i1 %tobool365.not, label %if.end362.if.end368_crit_edge, label %if.then366

if.end362.if.end368_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end368

if.then366:                                       ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %209, align 4
  br label %if.end368

if.end368:                                        ; preds = %if.then366, %if.end362.if.end368_crit_edge
  %224 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %driver_info29, align 4
  %and370 = and i32 %225, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  br i1 %tobool371.not, label %if.end368.if.end374_crit_edge, label %if.then372

if.end368.if.end374_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end374

if.then372:                                       ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #13
  %quirks373 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 13, ptr noundef %quirks373) #11
  br label %if.end374

if.end374:                                        ; preds = %if.then372, %if.end368.if.end374_crit_edge
  %226 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %driver_info29, align 4
  %and376 = and i32 %227, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %if.end374.if.end380_crit_edge, label %if.then378

if.end374.if.end380_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end380

if.then378:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  %quirks379 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 14, ptr noundef %quirks379) #11
  br label %if.end380

if.end380:                                        ; preds = %if.then378, %if.end374.if.end380_crit_edge
  %228 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %driver_info29, align 4
  %and382 = and i32 %229, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  br i1 %tobool383.not, label %if.end380.if.end387_crit_edge, label %if.then384

if.end380.if.end387_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end387

if.then384:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 64, ptr %58, align 4
  %quirks386 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks386) #11
  br label %if.end387

if.end387:                                        ; preds = %if.then384, %if.end380.if.end387_crit_edge
  %231 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %driver_info29, align 4
  %and389 = and i32 %232, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %if.end387.if.end416_crit_edge, label %if.then391

if.end387.if.end416_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end416

if.then391:                                       ; preds = %if.end387
  %233 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %udev95, align 4
  %bcdDevice396 = getelementptr inbounds %struct.usb_device, ptr %234, i32 0, i32 16, i32 9
  %235 = ptrtoint ptr %bcdDevice396 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %bcdDevice396, align 4
  %237 = tail call i16 @llvm.bswap.i16(i16 %236)
  call void @__sanitizer_cov_trace_const_cmp2(i16 279, i16 %237)
  %cmp398 = icmp ult i16 %237, 279
  br i1 %cmp398, label %if.then400, label %if.then391.if.end402_crit_edge

if.then391.if.end402_crit_edge:                   ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end402

if.then400:                                       ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #13
  %quirks401 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks401) #11
  br label %if.end402

if.end402:                                        ; preds = %if.then400, %if.then391.if.end402_crit_edge
  %quirks403 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 10, ptr noundef %quirks403) #11
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %234, i32 0, i32 16, i32 7
  %238 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4618, i16 %239)
  %cmp406 = icmp eq i16 %239, 4618
  br i1 %cmp406, label %land.lhs.true408, label %if.end402.if.end416_crit_edge

if.end402.if.end416_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end416

land.lhs.true408:                                 ; preds = %if.end402
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %234, i32 0, i32 16, i32 8
  %240 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %241)
  %cmp411 = icmp eq i16 %241, 256
  br i1 %cmp411, label %if.then413, label %land.lhs.true408.if.end416_crit_edge

land.lhs.true408.if.end416_crit_edge:             ; preds = %land.lhs.true408
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end416

if.then413:                                       ; preds = %land.lhs.true408
  call void @__sanitizer_cov_trace_pc() #13
  %setup414 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 235
  %242 = ptrtoint ptr %setup414 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @btusb_setup_csr, ptr %setup414, align 4
  br label %if.end416

if.end416:                                        ; preds = %if.then413, %land.lhs.true408.if.end416_crit_edge, %if.end402.if.end416_crit_edge, %if.end387.if.end416_crit_edge
  %243 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %driver_info29, align 4
  %and418 = and i32 %244, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  br i1 %tobool419.not, label %if.end416.if.end431_crit_edge, label %if.then420

if.end416.if.end431_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end431

if.then420:                                       ; preds = %if.end416
  %245 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %udev95, align 4
  %bcdDevice424 = getelementptr inbounds %struct.usb_device, ptr %246, i32 0, i32 16, i32 9
  %247 = ptrtoint ptr %bcdDevice424 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %bcdDevice424, align 4
  %249 = tail call i16 @llvm.bswap.i16(i16 %248)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2455, i16 %249)
  %cmp426 = icmp ugt i16 %249, 2455
  br i1 %cmp426, label %if.then428, label %if.then420.if.end431_crit_edge

if.then420.if.end431_crit_edge:                   ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end431

if.then428:                                       ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #13
  %quirks429 = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %quirks429) #11
  br label %if.end431

if.end431:                                        ; preds = %if.then428, %if.then420.if.end431_crit_edge, %if.end416.if.end431_crit_edge
  %250 = ptrtoint ptr %driver_info29 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %driver_info29, align 4
  %and433 = and i32 %251, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  br i1 %tobool434.not, label %if.end431.if.end442_crit_edge, label %if.then435

if.end431.if.end442_crit_edge:                    ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end442

if.then435:                                       ; preds = %if.end431
  %252 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %udev95, align 4
  %call437 = tail call i32 @usb_set_interface(ptr noundef %253, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %cmp438 = icmp slt i32 %call437, 0
  br i1 %cmp438, label %if.then440, label %if.then435.if.end442_crit_edge

if.then435.if.end442_crit_edge:                   ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end442

if.then440:                                       ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, i32 noundef %call437) #11
  br label %out_free_dev

if.end442:                                        ; preds = %if.then435.if.end442_crit_edge, %if.end431.if.end442_crit_edge
  %254 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %209, align 4
  %tobool444.not = icmp eq ptr %255, null
  br i1 %tobool444.not, label %if.end442.if.end452_crit_edge, label %if.then445

if.end442.if.end452_crit_edge:                    ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end452

if.then445:                                       ; preds = %if.end442
  %call447 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %255, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %cmp448 = icmp slt i32 %call447, 0
  br i1 %cmp448, label %if.then445.out_free_dev_crit_edge, label %if.then445.if.end452_crit_edge

if.then445.if.end452_crit_edge:                   ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end452

if.then445.out_free_dev_crit_edge:                ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.end452:                                        ; preds = %if.then445.if.end452_crit_edge, %if.end442.if.end452_crit_edge
  %diag453 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 4
  %256 = ptrtoint ptr %diag453 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %diag453, align 4
  %tobool454.not = icmp eq ptr %257, null
  br i1 %tobool454.not, label %if.end452.if.end464_crit_edge, label %if.then455

if.end452.if.end464_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end464

if.then455:                                       ; preds = %if.end452
  %call457 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %257, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457)
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %if.then459, label %if.else461

if.then459:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__set_diag_interface(ptr noundef nonnull %call159)
  br label %if.end464

if.else461:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #13
  %258 = ptrtoint ptr %diag453 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %diag453, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.else461, %if.then459, %if.end452.if.end464_crit_edge
  %259 = load i8, ptr @enable_autosuspend, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool465.not = icmp eq i8 %259, 0
  br i1 %tobool465.not, label %if.end464.if.end468_crit_edge, label %if.then466

if.end464.if.end468_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end468

if.then466:                                       ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %udev95 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %udev95, align 4
  tail call void @usb_enable_autosuspend(ptr noundef %261) #11
  br label %if.end468

if.end468:                                        ; preds = %if.then466, %if.end464.if.end468_crit_edge
  %call469 = tail call i32 @hci_register_dev(ptr noundef nonnull %call159) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %cmp470 = icmp slt i32 %call469, 0
  br i1 %cmp470, label %if.end468.out_free_dev_crit_edge, label %if.end473

if.end468.out_free_dev_crit_edge:                 ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev

if.end473:                                        ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i747 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %262 = ptrtoint ptr %driver_data.i.i747 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call.i, ptr %driver_data.i.i747, align 4
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %call159, i32 0, i32 203
  %263 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %debugfs, align 4
  %call474 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef %264, ptr noundef nonnull %call.i, ptr noundef nonnull @force_poll_sync_fops) #11
  br label %cleanup480

out_free_dev:                                     ; preds = %if.end468.out_free_dev_crit_edge, %if.then445.out_free_dev_crit_edge, %if.then440, %if.then240.out_free_dev_crit_edge, %if.then194.out_free_dev_crit_edge, %if.end184.out_free_dev_crit_edge, %if.then177
  %err.0 = phi i32 [ %128, %if.then177 ], [ %call185, %if.end184.out_free_dev_crit_edge ], [ %call195, %if.then194.out_free_dev_crit_edge ], [ %call241, %if.then240.out_free_dev_crit_edge ], [ %call437, %if.then440 ], [ %call447, %if.then445.out_free_dev_crit_edge ], [ %call469, %if.end468.out_free_dev_crit_edge ]
  %reset_gpio475 = getelementptr inbounds %struct.btusb_data, ptr %call.i, i32 0, i32 33
  %265 = ptrtoint ptr %reset_gpio475 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %reset_gpio475, align 4
  %tobool476.not = icmp eq ptr %266, null
  br i1 %tobool476.not, label %out_free_dev.if.end479_crit_edge, label %if.then477

out_free_dev.if.end479_crit_edge:                 ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end479

if.then477:                                       ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpiod_put(ptr noundef nonnull %266) #11
  br label %if.end479

if.end479:                                        ; preds = %if.then477, %out_free_dev.if.end479_crit_edge
  tail call void @hci_free_dev(ptr noundef nonnull %call159) #11
  br label %cleanup480

cleanup480:                                       ; preds = %if.end479, %if.end473, %if.end158.cleanup480_crit_edge, %lor.lhs.false82.cleanup480_crit_edge, %lor.lhs.false.cleanup480_crit_edge, %for.end.cleanup480_crit_edge, %if.end45.cleanup480_crit_edge, %btusb_qca_need_patch.exit.cleanup480_crit_edge, %btusb_qca_send_vendor_req.exit.thread4.i, %land.lhs.true.cleanup480_crit_edge, %if.end28.cleanup480_crit_edge, %if.then4.cleanup480_crit_edge
  %retval.1 = phi i32 [ %err.0, %if.end479 ], [ 0, %if.end473 ], [ -19, %if.then4.cleanup480_crit_edge ], [ -19, %if.end28.cleanup480_crit_edge ], [ -19, %btusb_qca_need_patch.exit.cleanup480_crit_edge ], [ -12, %if.end45.cleanup480_crit_edge ], [ -19, %lor.lhs.false82.cleanup480_crit_edge ], [ -19, %lor.lhs.false.cleanup480_crit_edge ], [ -19, %for.end.cleanup480_crit_edge ], [ -12, %if.end158.cleanup480_crit_edge ], [ -19, %btusb_qca_send_vendor_req.exit.thread4.i ], [ -19, %land.lhs.true.cleanup480_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_disconnect.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_disconnect, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_disconnect.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.134, ptr noundef %intf) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %intf8 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf8, align 4
  %driver_data.i.i95 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i95 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i95, align 4
  %isoc = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %isoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isoc, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i96 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7, i32 8
  %9 = ptrtoint ptr %driver_data.i.i96 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver_data.i.i96, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %diag = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %diag, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i97 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7, i32 8
  %12 = ptrtoint ptr %driver_data.i.i97 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i97, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  tail call void @hci_unregister_dev(ptr noundef %3) #11
  %13 = ptrtoint ptr %intf8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf8, align 4
  %cmp = icmp eq ptr %14, %intf
  %15 = ptrtoint ptr %isoc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isoc, align 4
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.then18.if.end23_crit_edge, label %if.then21

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %16) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18.if.end23_crit_edge
  %17 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %diag, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end23.if.end50_crit_edge, label %if.then26

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %18) #11
  br label %if.end50

if.else:                                          ; preds = %if.end16
  %cmp30 = icmp eq ptr %16, %intf
  %19 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %diag, align 4
  br i1 %cmp30, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.else
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %if.then31.if.end36_crit_edge, label %if.then34

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %20) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then31.if.end36_crit_edge
  %21 = ptrtoint ptr %intf8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf8, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef %22) #11
  br label %if.end50

if.else38:                                        ; preds = %if.else
  %cmp40 = icmp eq ptr %20, %intf
  br i1 %cmp40, label %if.then41, label %if.else38.if.end50_crit_edge

if.else38.if.end50_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then41:                                        ; preds = %if.else38
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef %14) #11
  %23 = ptrtoint ptr %isoc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isoc, align 4
  %tobool44.not = icmp eq ptr %24, null
  br i1 %tobool44.not, label %if.then41.if.end50_crit_edge, label %if.then45

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_driver_release_interface(ptr noundef nonnull @btusb_driver, ptr noundef nonnull %24) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then41.if.end50_crit_edge, %if.else38.if.end50_crit_edge, %if.end36, %if.then26, %if.end23.if.end50_crit_edge
  %oob_wake_irq = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 45
  %25 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oob_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool51.not = icmp eq i32 %26, 0
  br i1 %tobool51.not, label %if.end50.if.end54_crit_edge, label %if.then52

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  %call53 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  %reset_gpio = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 33
  %29 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset_gpio, align 4
  %tobool55.not = icmp eq ptr %30, null
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpiod_put(ptr noundef nonnull %30) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  tail call void @hci_free_dev(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_suspend.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_suspend, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_suspend.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.134, ptr noundef %intf) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspend_count = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %txlock = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock) #11
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end6.if.then8_crit_edge, label %land.lhs.true

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

land.lhs.true:                                    ; preds = %if.end6
  %tx_in_flight = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %land.lhs.true.if.then8_crit_edge, label %if.else

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock) #11
  %work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 9
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  %intr_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 17
  tail call void @usb_kill_anchored_urbs(ptr noundef %intr_anchor.i) #11
  %bulk_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 18
  tail call void @usb_kill_anchored_urbs(ptr noundef %bulk_anchor.i) #11
  %isoc_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 19
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor.i) #11
  %diag_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 20
  tail call void @usb_kill_anchored_urbs(ptr noundef %diag_anchor.i) #11
  %ctrl_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 21
  tail call void @usb_kill_anchored_urbs(ptr noundef %ctrl_anchor.i) #11
  %tx_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 14
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #11
  %oob_wake_irq = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.then8.if.end22_crit_edge, label %land.lhs.true15

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock) #11
  %8 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %suspend_count, align 4
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.then8
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 12, i32 1
  %12 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true15.if.end22_crit_edge, label %device_may_wakeup.exit

land.lhs.true15.if.end22_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

device_may_wakeup.exit:                           ; preds = %land.lhs.true15
  %wakeup.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 12, i32 6
  %13 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %14, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end22_crit_edge, label %if.then17

device_may_wakeup.exit.if.end22_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then17:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #11
  %15 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oob_wake_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #11
  %17 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oob_wake_irq, align 4
  tail call void @enable_irq(i32 noundef %18) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %device_may_wakeup.exit.if.end22_crit_edge, %land.lhs.true15.if.end22_crit_edge, %if.then8.if.end22_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  %udev41 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev41, align 4
  %can_wakeup.i82 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15, i32 12, i32 1
  %24 = ptrtoint ptr %can_wakeup.i82 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i83 = load i16, ptr %can_wakeup.i82, align 4
  br i1 %cmp.not, label %land.lhs.true40.critedge, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i83)
  %tobool.i = icmp slt i16 %bf.load.i83, 0
  br i1 %tobool.i, label %if.then34, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  %do_remote_wakeup = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 40
  %25 = ptrtoint ptr %do_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %do_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %do_remote_wakeup, align 8
  br label %cleanup

land.lhs.true40.critedge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i83)
  %tobool.not.i84 = icmp sgt i16 %bf.load.i83, -1
  br i1 %tobool.not.i84, label %land.lhs.true40.critedge.if.then44_crit_edge, label %device_may_wakeup.exit88

land.lhs.true40.critedge.if.then44_crit_edge:     ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

device_may_wakeup.exit88:                         ; preds = %land.lhs.true40.critedge
  %wakeup.i85 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15, i32 12, i32 6
  %26 = ptrtoint ptr %wakeup.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wakeup.i85, align 8
  %tobool2.i86.not = icmp eq ptr %27, null
  br i1 %tobool2.i86.not, label %device_may_wakeup.exit88.if.then44_crit_edge, label %device_may_wakeup.exit88.cleanup_crit_edge

device_may_wakeup.exit88.cleanup_crit_edge:       ; preds = %device_may_wakeup.exit88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

device_may_wakeup.exit88.if.then44_crit_edge:     ; preds = %device_may_wakeup.exit88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then44:                                        ; preds = %device_may_wakeup.exit88.if.then44_crit_edge, %land.lhs.true40.critedge.if.then44_crit_edge
  %do_remote_wakeup46 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 40
  %28 = ptrtoint ptr %do_remote_wakeup46 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load47 = load i8, ptr %do_remote_wakeup46, align 8
  %bf.clear48 = and i8 %bf.load47, 127
  store i8 %bf.clear48, ptr %do_remote_wakeup46, align 8
  %29 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev41, align 4
  %reset_resume = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 40
  %31 = ptrtoint ptr %reset_resume to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load51 = load i8, ptr %reset_resume, align 8
  %bf.set53 = or i8 %bf.load51, 64
  store i8 %bf.set53, ptr %reset_resume, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %device_may_wakeup.exit88.cleanup_crit_edge, %if.then34, %land.lhs.true30.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.else, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.else ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %land.lhs.true30.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then44 ], [ 0, %device_may_wakeup.exit88.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_resume.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_resume.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.134, ptr noundef %intf) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspend_count = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %oob_wake_irq = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_wake_irq, align 4
  tail call void @disable_irq(i32 noundef %7) #11
  %8 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oob_wake_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %flags14 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags14, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.end13.done_crit_edge, label %if.end18

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end18:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i85 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i85)
  %tobool21.not = icmp eq i32 %and1.i85, 0
  br i1 %tobool21.not, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %call23 = tail call fastcc i32 @btusb_submit_intr_urb(ptr noundef %3, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then22.failed_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22.failed_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %if.end27.if.end38_crit_edge, label %if.then31

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then31:                                        ; preds = %if.end27
  %call32 = tail call fastcc i32 @btusb_submit_bulk_urb(ptr noundef %3, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then31.failed_crit_edge, label %if.end36

if.then31.failed_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call fastcc i32 @btusb_submit_bulk_urb(ptr noundef %3, i32 noundef 3072)
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end27.if.end38_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool41.not = icmp eq i32 %20, 0
  br i1 %tobool41.not, label %if.end38.if.end49_crit_edge, label %if.then42

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then42:                                        ; preds = %if.end38
  %call43 = tail call fastcc i32 @btusb_submit_isoc_urb(ptr noundef %3, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  br label %if.end49

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call fastcc i32 @btusb_submit_isoc_urb(ptr noundef %3, i32 noundef 3072)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45, %if.end38.if.end49_crit_edge
  %txlock = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock) #11
  %deferred.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 13
  %call32.i = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #11
  %tobool.not33.i = icmp eq ptr %call32.i, null
  br i1 %tobool.not33.i, label %if.end49.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end49.while.end.i_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end49
  %tx_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 14
  %tx_in_flight.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call34.i = phi ptr [ %call32.i, %while.body.lr.ph.i ], [ %call.i90, %if.end5.i.while.body.i_crit_edge ]
  tail call void @usb_anchor_urb(ptr noundef nonnull %call34.i, ptr noundef %tx_anchor.i) #11
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call34.i, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %21 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.then4.i [
    i32 -1, label %if.then.i.if.end.i_crit_edge
    i32 -19, label %if.then.i.if.end.i_crit_edge105
  ]

if.then.i.if.end.i_crit_edge105:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 2
  %sub.i = sub i32 0, %call1.i
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.137, ptr noundef %name.i, ptr noundef nonnull %call34.i, i32 noundef %sub.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge105
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %call34.i, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_packet.i, align 4
  tail call void @kfree(ptr noundef %25) #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call34.i) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call34.i) #11
  br label %while.end.i

if.end5.i:                                        ; preds = %while.body.i
  %26 = ptrtoint ptr %tx_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_in_flight.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %tx_in_flight.i, align 4
  tail call void @usb_free_urb(ptr noundef nonnull %call34.i) #11
  %call.i90 = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #11
  %tobool.not.i = icmp eq ptr %call.i90, null
  br i1 %tobool.not.i, label %if.end5.i.while.end.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end5.i.while.end.i_crit_edge, %if.end.i, %if.end49.while.end.i_crit_edge
  %call835.i = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #11
  %tobool9.not36.i = icmp eq ptr %call835.i, null
  br i1 %tobool9.not36.i, label %while.end.i.play_deferred.exit_crit_edge, label %while.end.i.while.body10.i_crit_edge

while.end.i.while.body10.i_crit_edge:             ; preds = %while.end.i
  br label %while.body10.i

while.end.i.play_deferred.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %play_deferred.exit

while.body10.i:                                   ; preds = %while.body10.i.while.body10.i_crit_edge, %while.end.i.while.body10.i_crit_edge
  %call837.i = phi ptr [ %call8.i, %while.body10.i.while.body10.i_crit_edge ], [ %call835.i, %while.end.i.while.body10.i_crit_edge ]
  %setup_packet11.i = getelementptr inbounds %struct.urb, ptr %call837.i, i32 0, i32 21
  %28 = ptrtoint ptr %setup_packet11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %setup_packet11.i, align 4
  tail call void @kfree(ptr noundef %29) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call837.i) #11
  %call8.i = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #11
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %while.body10.i.play_deferred.exit_crit_edge, label %while.body10.i.while.body10.i_crit_edge

while.body10.i.while.body10.i_crit_edge:          ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body10.i

while.body10.i.play_deferred.exit_crit_edge:      ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %play_deferred.exit

play_deferred.exit:                               ; preds = %while.body10.i.play_deferred.exit_crit_edge, %while.end.i.play_deferred.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock) #11
  %work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work) #11
  br label %cleanup

failed:                                           ; preds = %if.then31.failed_crit_edge, %if.then22.failed_crit_edge
  %.sink = phi i32 [ 0, %if.then22.failed_crit_edge ], [ 1, %if.then31.failed_crit_edge ]
  %err.0 = phi i32 [ %call23, %if.then22.failed_crit_edge ], [ %call32, %if.then31.failed_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink, ptr noundef %flags) #11
  %deferred = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 13
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %deferred) #11
  br label %done

done:                                             ; preds = %failed, %if.end13.done_crit_edge
  %err.1 = phi i32 [ %err.0, %failed ], [ 0, %if.end13.done_crit_edge ]
  %txlock53 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock53) #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock53) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %play_deferred.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ 0, %play_deferred.exit ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %sco_num = getelementptr i8, ptr %work, i32 1168
  %2 = ptrtoint ptr %sco_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sco_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %flags47 = getelementptr i8, ptr %work, i32 -12
  br i1 %cmp.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags47, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.then
  %isoc = getelementptr i8, ptr %work, i32 -24
  %7 = ptrtoint ptr %isoc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isoc, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %cond.false, label %if.then2.cond.end_crit_edge

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr i8, ptr %work, i32 -28
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then2.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.false ], [ %8, %if.then2.cond.end_crit_edge ]
  %call5 = tail call i32 @usb_autopm_get_interface(ptr noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags47) #11
  %isoc_anchor = getelementptr i8, ptr %work, i32 740
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags47) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then.if.end10_crit_edge
  %air_mode = getelementptr i8, ptr %work, i32 1172
  %11 = ptrtoint ptr %air_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %air_mode, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %12, label %if.end10.if.end40_crit_edge [
    i32 4, label %if.then12
    i32 5, label %if.then22
  ]

if.end10.if.end40_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then12:                                        ; preds = %if.end10
  %voice_setting = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %voice_setting to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %voice_setting, align 2
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not = icmp eq i16 %16, 0
  %17 = ptrtoint ptr %sco_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sco_num, align 4
  br i1 %tobool13.not, label %if.then12.if.end40_crit_edge, label %if.then14

if.then12.if.end40_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %18, -1
  %arrayidx = getelementptr [3 x i32], ptr @btusb_work.alts, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  br label %if.end40

if.then22:                                        ; preds = %if.end10
  %isoc.i = getelementptr i8, ptr %work, i32 -24
  %21 = ptrtoint ptr %isoc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isoc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_find_altsetting.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_work, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !358

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_find_altsetting.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.26, i32 noundef 6) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then22
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %do.end.i.if.else26_crit_edge, label %for.cond.preheader.i

do.end.i.if.else26_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

for.cond.preheader.i:                             ; preds = %do.end.i
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp21.not.i = icmp eq i32 %24, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.if.else26_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.else26_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.cond.i.if.else26_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.if.else26_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_interface, ptr %26, i32 %i.022.i
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %27 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bAlternateSetting.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp6.i = icmp eq i8 %28, 6
  br i1 %cmp6.i, label %btusb_find_altsetting.exit, label %for.cond.i

btusb_find_altsetting.exit:                       ; preds = %for.body.i
  %tobool24.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool24.not, label %btusb_find_altsetting.exit.if.else26_crit_edge, label %btusb_find_altsetting.exit.if.end40_crit_edge

btusb_find_altsetting.exit.if.end40_crit_edge:    ; preds = %btusb_find_altsetting.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

btusb_find_altsetting.exit.if.else26_crit_edge:   ; preds = %btusb_find_altsetting.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

if.else26:                                        ; preds = %btusb_find_altsetting.exit.if.else26_crit_edge, %for.cond.i.if.else26_crit_edge, %for.cond.preheader.i.if.else26_crit_edge, %do.end.i.if.else26_crit_edge
  %29 = ptrtoint ptr %isoc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %isoc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_find_altsetting.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_work, %if.then.i98)) #11
          to label %do.end.i100 [label %if.then.i98], !srcloc !358

if.then.i98:                                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_find_altsetting.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.26, i32 noundef 3) #11
  br label %do.end.i100

do.end.i100:                                      ; preds = %if.then.i98, %if.else26
  %tobool3.not.i99 = icmp eq ptr %30, null
  br i1 %tobool3.not.i99, label %do.end.i100.if.else36_crit_edge, label %for.cond.preheader.i103

do.end.i100.if.else36_crit_edge:                  ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

for.cond.preheader.i103:                          ; preds = %do.end.i100
  %num_altsetting.i101 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %num_altsetting.i101 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_altsetting.i101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp21.not.i102 = icmp eq i32 %32, 0
  br i1 %cmp21.not.i102, label %for.cond.preheader.i103.if.else36_crit_edge, label %for.body.lr.ph.i104

for.cond.preheader.i103.if.else36_crit_edge:      ; preds = %for.cond.preheader.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

for.body.lr.ph.i104:                              ; preds = %for.cond.preheader.i103
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 8
  br label %for.body.i113

for.cond.i107:                                    ; preds = %for.body.i113
  %inc.i105 = add nuw i32 %i.022.i108, 1
  %exitcond.not.i106 = icmp eq i32 %inc.i105, %32
  br i1 %exitcond.not.i106, label %for.cond.i107.if.else36_crit_edge, label %for.cond.i107.for.body.i113_crit_edge

for.cond.i107.for.body.i113_crit_edge:            ; preds = %for.cond.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i113

for.cond.i107.if.else36_crit_edge:                ; preds = %for.cond.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

for.body.i113:                                    ; preds = %for.cond.i107.for.body.i113_crit_edge, %for.body.lr.ph.i104
  %i.022.i108 = phi i32 [ 0, %for.body.lr.ph.i104 ], [ %inc.i105, %for.cond.i107.for.body.i113_crit_edge ]
  %arrayidx.i109 = getelementptr %struct.usb_host_interface, ptr %34, i32 %i.022.i108
  %bAlternateSetting.i110 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i109, i32 0, i32 3
  %35 = ptrtoint ptr %bAlternateSetting.i110 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bAlternateSetting.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp6.i112 = icmp eq i8 %36, 3
  br i1 %cmp6.i112, label %btusb_find_altsetting.exit115, label %for.cond.i107

btusb_find_altsetting.exit115:                    ; preds = %for.body.i113
  %tobool28.not = icmp eq ptr %arrayidx.i109, null
  br i1 %tobool28.not, label %btusb_find_altsetting.exit115.if.else36_crit_edge, label %land.lhs.true

btusb_find_altsetting.exit115.if.else36_crit_edge: ; preds = %btusb_find_altsetting.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

land.lhs.true:                                    ; preds = %btusb_find_altsetting.exit115
  %sco_mtu = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 124
  %37 = ptrtoint ptr %sco_mtu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sco_mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %38)
  %cmp29 = icmp ugt i32 %38, 71
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true.if.else36_crit_edge

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

land.lhs.true31:                                  ; preds = %land.lhs.true
  %39 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags47, align 4
  %41 = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool34.not = icmp eq i32 %41, 0
  br i1 %tobool34.not, label %land.lhs.true31.if.else36_crit_edge, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true31.if.else36_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true31.if.else36_crit_edge, %land.lhs.true.if.else36_crit_edge, %btusb_find_altsetting.exit115.if.else36_crit_edge, %for.cond.i107.if.else36_crit_edge, %for.cond.preheader.i103.if.else36_crit_edge, %do.end.i100.if.else36_crit_edge
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %land.lhs.true31.if.end40_crit_edge, %btusb_find_altsetting.exit.if.end40_crit_edge, %if.then14, %if.then12.if.end40_crit_edge, %if.end10.if.end40_crit_edge
  %new_alts.0 = phi i32 [ %20, %if.then14 ], [ 1, %if.else36 ], [ 0, %if.end10.if.end40_crit_edge ], [ 6, %btusb_find_altsetting.exit.if.end40_crit_edge ], [ 3, %land.lhs.true31.if.end40_crit_edge ], [ %18, %if.then12.if.end40_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i, align 4
  %isoc_altsetting.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 39
  %44 = ptrtoint ptr %isoc_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %isoc_altsetting.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %new_alts.0)
  %cmp.not.i = icmp eq i32 %45, %new_alts.0
  br i1 %cmp.not.i, label %if.end40.if.end14.i_crit_edge, label %if.then.i116

if.end40.if.end14.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then.i116:                                     ; preds = %if.end40
  %flags1.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags1.i) #11
  %isoc_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 19
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor.i) #11
  %rxlock.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 22
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock.i) #11
  %sco_skb.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 25
  %46 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sco_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %47, i32 noundef 0) #11
  %48 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %sco_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock.i, i32 noundef %call5.i) #11
  %call10.i = tail call fastcc i32 @__set_isoc_interface(ptr noundef %1, i32 noundef %new_alts.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then44, label %if.then.i116.if.end14.i_crit_edge

if.then.i116.if.end14.i_crit_edge:                ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then.i116.if.end14.i_crit_edge, %if.end40.if.end14.i_crit_edge
  %flags15.i = getelementptr inbounds %struct.btusb_data, ptr %43, i32 0, i32 6
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags15.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17.i:                                      ; preds = %if.end14.i
  %call18.i = tail call fastcc i32 @btusb_submit_isoc_urb(ptr noundef %1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags15.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i = tail call fastcc i32 @btusb_submit_isoc_urb(ptr noundef %1, i32 noundef 3264) #11
  br label %cleanup

if.then44:                                        ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %new_alts.0) #11
  br label %cleanup

if.else46:                                        ; preds = %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags47) #11
  %isoc_anchor48 = getelementptr i8, ptr %work, i32 740
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor48) #11
  %call49 = tail call fastcc i32 @__set_isoc_interface(ptr noundef %1, i32 noundef 0)
  %call51 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else46.cleanup_crit_edge, label %if.then53

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %if.else46
  %isoc54 = getelementptr i8, ptr %work, i32 -24
  %49 = ptrtoint ptr %isoc54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %isoc54, align 4
  %tobool55.not = icmp eq ptr %50, null
  br i1 %tobool55.not, label %cond.false58, label %if.then53.cond.end60_crit_edge

if.then53.cond.end60_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end60

cond.false58:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %intf59 = getelementptr i8, ptr %work, i32 -28
  %51 = ptrtoint ptr %intf59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %intf59, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %if.then53.cond.end60_crit_edge
  %cond61 = phi ptr [ %52, %cond.false58 ], [ %50, %if.then53.cond.end60_crit_edge ]
  tail call void @usb_autopm_put_interface(ptr noundef %cond61) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end60, %if.else46.cleanup_crit_edge, %if.then44, %if.else.i, %if.then21.i, %if.end14.i.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_waker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr i8, ptr %work, i32 -72
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_rx_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %acl_q = getelementptr i8, ptr %work, i32 100
  %call4 = tail call ptr @skb_dequeue(ptr noundef %acl_q) #11
  %tobool.not5 = icmp eq ptr %call4, null
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %recv_acl = getelementptr i8, ptr %work, i32 1104
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call6 = phi ptr [ %call4, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %0 = ptrtoint ptr %recv_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_acl, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call1 = tail call i32 %1(ptr noundef %3, ptr noundef nonnull %call6) #11
  %call = tail call ptr @skb_dequeue(ptr noundef %acl_q) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_recv_bulk(ptr noundef %data, ptr nocapture noundef readonly %buffer, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rxlock = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock) #11
  %acl_skb = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %acl_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_skb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not101 = icmp eq i32 %count, 0
  br i1 %tobool.not101, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %intr_interval.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 8
  %acl_q.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 12
  %rx_work.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 11
  %recv_acl.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 42
  br label %while.body

while.body:                                       ; preds = %cleanup52.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0104 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %cleanup52.while.body_crit_edge ]
  %count.addr.0103 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %cleanup52.while.body_crit_edge ]
  %skb.0102 = phi ptr [ %1, %while.body.lr.ph ], [ %skb.5, %cleanup52.while.body_crit_edge ]
  %tobool5.not = icmp eq ptr %skb.0102, null
  br i1 %tobool5.not, label %if.then, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %while.body
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1036, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.while.end_crit_edge, label %if.end

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %cb, align 8
  %expect = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %expect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %expect, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end, %while.body.if.end11_crit_edge
  %skb.1 = phi ptr [ %skb.0102, %while.body.if.end11_crit_edge ], [ %call.i.i, %if.end ]
  %expect14 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %expect14, align 2
  %conv15 = zext i16 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %count.addr.0103, i32 %conv15)
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %skb.1, i32 noundef %10) #11
  %11 = call ptr @memcpy(ptr %call.i, ptr %buffer.addr.0104, i32 %10)
  %sub = sub i32 %count.addr.0103, %10
  %add.ptr = getelementptr i8, ptr %buffer.addr.0104, i32 %10
  %12 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %expect14, align 2
  %14 = trunc i32 %10 to i16
  %conv25 = sub i16 %13, %14
  store i16 %conv25, ptr %expect14, align 2
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %15 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp27 = icmp eq i32 %16, 4
  br i1 %cmp27, label %if.then29, label %if.end11.if.end44_crit_edge

if.end11.if.end44_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then29:                                        ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %dlen31 = getelementptr inbounds %struct.hci_acl_hdr, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dlen31 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %dlen31, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %expect14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %expect14, align 2
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then29.skb_tailroom.exit_crit_edge

if.then29.skb_tailroom.exit_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then29.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then29.skb_tailroom.exit_crit_edge ]
  %conv39 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv39)
  %cmp40 = icmp slt i32 %cond.i, %conv39
  br i1 %cmp40, label %cleanup.thread, label %if.end44thread-pre-split

cleanup.thread:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.1, i32 noundef 0) #11
  br label %while.end

if.end44thread-pre-split:                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %29)
  %.pr = load i16, ptr %expect14, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.end11.if.end44_crit_edge
  %30 = phi i16 [ %.pr, %if.end44thread-pre-split ], [ %conv25, %if.end11.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool48.not = icmp eq i16 %30, 0
  br i1 %tobool48.not, label %if.then49, label %if.end44.cleanup52_crit_edge

if.end44.cleanup52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.then49:                                        ; preds = %if.end44
  %31 = ptrtoint ptr %intr_interval.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i89 = icmp eq i32 %32, 0
  br i1 %tobool.not.i89, label %if.then.i91, label %if.end.i

if.then.i91:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %recv_acl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recv_acl.i, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call.i90 = tail call i32 %34(ptr noundef %36, ptr noundef nonnull %skb.1) #11
  br label %cleanup52

if.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %acl_q.i, ptr noundef nonnull %skb.1) #11
  %37 = ptrtoint ptr %intr_interval.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %intr_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %rx_work.i, i32 noundef %38) #11
  br label %cleanup52

cleanup52:                                        ; preds = %if.end.i, %if.then.i91, %if.end44.cleanup52_crit_edge
  %skb.5 = phi ptr [ %skb.1, %if.end44.cleanup52_crit_edge ], [ null, %if.then.i91 ], [ null, %if.end.i ]
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup52.while.end_crit_edge, label %cleanup52.while.body_crit_edge

cleanup52.while.body_crit_edge:                   ; preds = %cleanup52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup52.while.end_crit_edge:                    ; preds = %cleanup52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup52.while.end_crit_edge, %cleanup.thread, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %err.4 = phi i32 [ -84, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup52.while.end_crit_edge ], [ -12, %if.then.while.end_crit_edge ]
  %skb.6 = phi ptr [ null, %cleanup.thread ], [ %1, %entry.while.end_crit_edge ], [ %skb.5, %cleanup52.while.end_crit_edge ], [ null, %if.then.while.end_crit_edge ]
  %40 = ptrtoint ptr %acl_skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %skb.6, ptr %acl_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock, i32 noundef %call2) #11
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_recv_event_intel(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hdev, i32 5544
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr.i, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp2 = icmp eq i8 %7, -1
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true4:                                   ; preds = %land.lhs.true
  %plen = getelementptr inbounds %struct.hci_event_hdr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %plen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.not = icmp eq i8 %9, 0
  br i1 %cmp6.not, label %land.lhs.true4.if.end17_crit_edge, label %if.then8

land.lhs.true4.if.end17_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %land.lhs.true4
  %add.ptr = getelementptr i8, ptr %3, i32 2
  %add.ptr10 = getelementptr i8, ptr %3, i32 3
  %sub13 = add i32 %5, -3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %11, label %if.then8.if.end17_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %sw.bb16
  ]

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btintel_bootup(ptr noundef %hdev, ptr noundef %add.ptr10, i32 noundef %sub13) #11
  br label %if.end17

sw.bb16:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btintel_secure_send_result(ptr noundef %hdev, ptr noundef %add.ptr10, i32 noundef %sub13) #11
  br label %if.end17

if.end17:                                         ; preds = %sw.bb16, %sw.bb, %if.then8.if.end17_crit_edge, %land.lhs.true4.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %call18 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #11
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_recv_bulk_intel(ptr noundef %data, ptr nocapture noundef readonly %buffer, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5544
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @btusb_recv_intr(ptr noundef %data, ptr noundef %buffer, i32 noundef %count)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @btusb_recv_bulk(ptr noundef %data, ptr noundef %buffer, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_open(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_open.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_open.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %intf = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call4 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %setup_on_usb = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %setup_on_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_on_usb, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 %5(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then8.cleanup.sink.split_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end14
  %call20 = tail call fastcc i32 @btusb_submit_intr_urb(ptr noundef %hdev, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.failed_crit_edge, label %if.end23

if.end19.failed_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end23:                                         ; preds = %if.end19
  %call24 = tail call fastcc i32 @btusb_submit_bulk_urb(ptr noundef %hdev, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %intr_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 17
  tail call void @usb_kill_anchored_urbs(ptr noundef %intr_anchor) #11
  br label %failed

if.end27:                                         ; preds = %if.end23
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %call29 = tail call fastcc i32 @btusb_submit_bulk_urb(ptr noundef %hdev, i32 noundef 3264)
  %diag = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %diag, align 4
  %tobool30.not = icmp eq ptr %10, null
  br i1 %tobool30.not, label %if.end27.cleanup.sink.split_crit_edge, label %if.then31

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then31:                                        ; preds = %if.end27
  %call32 = tail call fastcc i32 @btusb_submit_diag_urb(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.then31.cleanup.sink.split_crit_edge

if.then31.cleanup.sink.split_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #11
  br label %cleanup.sink.split

failed:                                           ; preds = %if.then26, %if.end19.failed_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.failed_crit_edge ], [ %call24, %if.then26 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %failed, %if.then34, %if.then31.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end27.cleanup.sink.split_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then31.cleanup.sink.split_crit_edge ], [ 0, %if.end14.cleanup.sink.split_crit_edge ], [ %call10, %if.then8.cleanup.sink.split_crit_edge ], [ %err.0, %failed ]
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_close(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_close.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_close, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_close.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 11
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %rx_work) #11
  %work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 9
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  %waker = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 10
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %waker) #11
  %acl_q = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 12
  tail call void @skb_queue_purge(ptr noundef %acl_q) #11
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #11
  %intr_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 17
  tail call void @usb_kill_anchored_urbs(ptr noundef %intr_anchor.i) #11
  %bulk_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 18
  tail call void @usb_kill_anchored_urbs(ptr noundef %bulk_anchor.i) #11
  %isoc_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 19
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor.i) #11
  %diag_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 20
  tail call void @usb_kill_anchored_urbs(ptr noundef %diag_anchor.i) #11
  %ctrl_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 21
  tail call void @usb_kill_anchored_urbs(ptr noundef %ctrl_anchor.i) #11
  %rxlock.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 22
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock.i) #11
  %evt_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %evt_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evt_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #11
  %4 = ptrtoint ptr %evt_skb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %evt_skb.i, align 4
  %acl_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %acl_skb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %acl_skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %acl_skb.i, align 4
  %sco_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sco_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sco_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock.i, i32 noundef %call2.i) #11
  %intf = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %call10 = tail call i32 @usb_autopm_get_interface(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end.failed_crit_edge, label %if.end12

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end12:                                         ; preds = %do.end
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.end12.if.end23_crit_edge, label %if.then17

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup19 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %needs_remote_wakeup19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load20 = load i8, ptr %needs_remote_wakeup19, align 8
  %bf.set22 = or i8 %bf.load20, 16
  store i8 %bf.set22, ptr %needs_remote_wakeup19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end12.if.end23_crit_edge
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %23) #11
  br label %failed

failed:                                           ; preds = %if.end23, %do.end.failed_crit_edge
  %deferred = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 13
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %deferred) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_flush(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_flush.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_flush, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_flush.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 11
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %rx_work) #11
  %acl_q = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 12
  tail call void @skb_queue_purge(ptr noundef %acl_q) #11
  %tx_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 14
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #11
  %rxlock.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 22
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock.i) #11
  %evt_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %evt_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evt_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #11
  %4 = ptrtoint ptr %evt_skb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %evt_skb.i, align 4
  %acl_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %acl_skb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %acl_skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %acl_skb.i, align 4
  %sco_skb.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sco_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sco_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock.i, i32 noundef %call2.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_send_frame(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_send_frame.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_send_frame, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_send_frame.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %1, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb10
    i8 3, label %sw.bb19
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %sw.bb.if.then6_crit_edge, label %if.end.i

sw.bb.if.then6_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 8) #14
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %alloc_ctrl_urb.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #11
  br label %if.then6

alloc_ctrl_urb.exit:                              ; preds = %if.end.i
  %cmdreq_type.i = getelementptr inbounds %struct.btusb_data, ptr %4, i32 0, i32 34
  %6 = ptrtoint ptr %cmdreq_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmdreq_type.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %call7.i.i, align 8
  %cmdreq.i = getelementptr inbounds %struct.btusb_data, ptr %4, i32 0, i32 35
  %9 = ptrtoint ptr %cmdreq.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmdreq.i, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bRequest.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %wIndex.i, align 4
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %wValue.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %wLength.i, align 2
  %udev.i = getelementptr inbounds %struct.btusb_data, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %data10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data10.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %24 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %25 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 21
  %26 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %15, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @btusb_tx_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %30 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %context5.i.i, align 4
  %31 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hdev, ptr %31, align 8
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_ctrl_urb.exit.if.then6_crit_edge, label %if.end8

alloc_ctrl_urb.exit.if.then6_crit_edge:           ; preds = %alloc_ctrl_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %alloc_ctrl_urb.exit.if.then6_crit_edge, %if.then5.i, %sw.bb.if.then6_crit_edge
  %retval.0.i5373 = phi ptr [ %call1.i, %alloc_ctrl_urb.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %sw.bb.if.then6_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i5373 to i32
  br label %cleanup

if.end8:                                          ; preds = %alloc_ctrl_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  %34 = ptrtoint ptr %cmd_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_tx, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %cmd_tx, align 8
  %call9 = tail call fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef nonnull %call1.i)
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  %driver_data.i.i.i54 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i54, align 4
  %bulk_tx_ep.i = getelementptr inbounds %struct.btusb_data, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %bulk_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bulk_tx_ep.i, align 4
  %tobool.not.i55 = icmp eq ptr %39, null
  br i1 %tobool.not.i55, label %sw.bb10.if.then13_crit_edge, label %if.end.i56

sw.bb10.if.then13_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end.i56:                                       ; preds = %sw.bb10
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i56.if.then13_crit_edge, label %alloc_bulk_urb.exit

if.end.i56.if.then13_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

alloc_bulk_urb.exit:                              ; preds = %if.end.i56
  %udev.i57 = getelementptr inbounds %struct.btusb_data, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %udev.i57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev.i57, align 4
  %42 = ptrtoint ptr %bulk_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bulk_tx_ep.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i58 = zext i8 %45 to i32
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %41, align 8
  %shl.i.i59 = shl i32 %47, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i58, 15
  %or.i.i = or i32 %shl.i.i59, %shl1.i.i
  %or.i60 = or i32 %or.i.i, -1073741824
  %data10.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data10.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data10.i61, align 4
  %len.i62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i62, align 4
  %dev1.i.i63 = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i.i63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %41, ptr %dev1.i.i63, align 4
  %pipe2.i.i64 = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i60, ptr %pipe2.i.i64, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i65 = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.i.i65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %transfer_buffer_length.i.i65, align 4
  %complete.i.i66 = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 28
  %56 = ptrtoint ptr %complete.i.i66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @btusb_tx_complete, ptr %complete.i.i66, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 27
  %57 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb, ptr %context4.i.i, align 4
  %58 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %hdev, ptr %58, align 8
  %cmp.i68 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %alloc_bulk_urb.exit.if.then13_crit_edge, label %if.end15

alloc_bulk_urb.exit.if.then13_crit_edge:          ; preds = %alloc_bulk_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %alloc_bulk_urb.exit.if.then13_crit_edge, %if.end.i56.if.then13_crit_edge, %sw.bb10.if.then13_crit_edge
  %retval.0.i6776 = phi ptr [ %call2.i, %alloc_bulk_urb.exit.if.then13_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i56.if.then13_crit_edge ], [ inttoptr (i32 -19 to ptr), %sw.bb10.if.then13_crit_edge ]
  %60 = ptrtoint ptr %retval.0.i6776 to i32
  br label %cleanup

if.end15:                                         ; preds = %alloc_bulk_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  %61 = ptrtoint ptr %acl_tx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %acl_tx, align 8
  %inc17 = add i32 %62, 1
  store i32 %inc17, ptr %acl_tx, align 8
  %call18 = tail call fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef nonnull %call2.i)
  br label %cleanup

sw.bb19:                                          ; preds = %do.end
  %sco_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 3
  %63 = ptrtoint ptr %sco_num.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sco_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp = icmp eq i32 %64, 0
  br i1 %cmp, label %sw.bb19.cleanup_crit_edge, label %if.end23

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  %call24 = tail call fastcc ptr @alloc_isoc_urb(ptr noundef %hdev, ptr noundef %skb)
  %cmp.i69 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  %66 = ptrtoint ptr %sco_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sco_tx, align 8
  %inc30 = add i32 %67, 1
  store i32 %inc30, ptr %sco_tx, align 8
  %call31 = tail call fastcc i32 @submit_tx_urb(ptr noundef %hdev, ptr noundef %call24)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %sw.bb19.cleanup_crit_edge, %if.end15, %if.then13, %if.end8, %if.then6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %65, %if.then26 ], [ %call31, %if.end28 ], [ %60, %if.then13 ], [ %call18, %if.end15 ], [ %33, %if.then6 ], [ %call9, %if.end8 ], [ -19, %sw.bb19.cleanup_crit_edge ], [ -84, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_notify(ptr noundef %hdev, i32 noundef %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_notify.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_notify, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_notify.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.58, ptr noundef %name, i32 noundef %evt) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sco_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 3
  %2 = ptrtoint ptr %sco_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sco_num.i, align 4
  %sco_num = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %sco_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sco_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %do.end.if.end9_crit_edge, label %if.then5

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %sco_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %sco_num, align 4
  %air_mode = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %air_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %evt, ptr %air_mode, align 4
  %work = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @btusb_wakeup(ptr nocapture noundef readonly %hdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wakeup.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_config_oob_wake(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #11
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @btusb_match_table, ptr noundef %dev1) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_irq_get_byname(ptr noundef %5, ptr noundef nonnull @.str.59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_config_oob_wake.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_config_oob_wake, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !358

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_config_oob_wake.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.61, ptr noundef %name, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @irq_modify_status(i32 noundef %call3, i32 noundef 0, i32 noundef 4096) #11
  %dev12 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev12, i32 noundef %call3, ptr noundef nonnull @btusb_oob_wake_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %name16 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.63, ptr noundef %name16, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %name22 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.64, ptr noundef %name22, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %oob_wake_irq = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %oob_wake_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %oob_wake_irq, align 4
  %name25 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.65, ptr noundef %name25, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then15, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ %call19, %if.then21 ], [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_config_oob_wake(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  %pin = alloca i16, align 2
  %gap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pin) #11
  %4 = ptrtoint ptr %pin to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %pin, align 2, !annotation !360
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gap) #11
  %5 = ptrtoint ptr %gap to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %gap, align 2, !annotation !360
  %of_node = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u16_array(ptr noundef %7, ptr noundef nonnull @.str.66, ptr noundef nonnull %pin, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i45 = call i32 @of_property_read_variable_u16_array(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull %gap, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i45)
  %tobool5.not = icmp sgt i32 %call.i.i45, -1
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %pin to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pin, align 2
  %12 = ptrtoint ptr %gap to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gap, align 2
  %call.i.i46 = call ptr @__alloc_skb(i32 noundef 13, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i46, null
  br i1 %tobool.not.i, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @__func__.marvell_config_oob_wake) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %conv13 = trunc i16 %13 to i8
  %conv11 = trunc i16 %11 to i8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i46, i32 noundef 5) #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 89, ptr %call.i, align 1
  %cmd.sroa.5.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 1
  %19 = ptrtoint ptr %cmd.sroa.5.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -4, ptr %cmd.sroa.5.0.call.i.sroa_idx, align 1
  %cmd.sroa.7.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 2
  %20 = ptrtoint ptr %cmd.sroa.7.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %cmd.sroa.7.0.call.i.sroa_idx, align 1
  %cmd.sroa.9.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 3
  %21 = ptrtoint ptr %cmd.sroa.9.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %cmd.sroa.9.0.call.i.sroa_idx, align 1
  %cmd.sroa.11.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 4
  %22 = ptrtoint ptr %cmd.sroa.11.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13, ptr %cmd.sroa.11.0.call.i.sroa_idx, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46, i32 0, i32 3
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cb, align 8
  %call22 = call i32 @btusb_send_frame(ptr noundef %hdev, ptr noundef nonnull %call.i.i46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.then24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %name25 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.69, ptr noundef %name25, ptr noundef nonnull @__func__.marvell_config_oob_wake) #11
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i46, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end18.cleanup_crit_edge, %if.then17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then24 ], [ -12, %if.then17 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gap) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pin) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_setup_bcm92035(ptr noundef %hdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_setup_bcm92035.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_setup_bcm92035, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_setup_bcm92035.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -965, i32 noundef 1, ptr noundef nonnull %val, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %name7 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %1 = ptrtoint ptr %call4 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.71, ptr noundef %name7, i32 noundef %1) #11
  br label %if.end10

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %call4, i32 noundef 0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_setup_patchram(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_bcm_set_diag(ptr noundef %hdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %diag = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %frombool.i = zext i1 %enable to i8
  %diag_tx_ep.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %diag_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %diag_tx_ep.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end4.if.then8_crit_edge, label %if.end.i

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.i:                                         ; preds = %if.end4
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then8_crit_edge, label %if.end6.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 10, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %alloc_diag_urb.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call2.i) #11
  br label %if.then8

alloc_diag_urb.exit:                              ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -16, ptr %call.i.i, align 1
  %call.i34.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %14 = ptrtoint ptr %call.i34.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool.i, ptr %call.i34.i, align 1
  %udev.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i, align 4
  %17 = ptrtoint ptr %diag_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %diag_tx_ep.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 1
  %conv14.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %22, 8
  %shl1.i.i = shl nuw nsw i32 %conv14.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %16, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @btusb_tx_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %context4.i.i, align 4
  %33 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hdev, ptr %33, align 8
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_diag_urb.exit.if.then8_crit_edge, label %if.end10

alloc_diag_urb.exit.if.then8_crit_edge:           ; preds = %alloc_diag_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %alloc_diag_urb.exit.if.then8_crit_edge, %if.then9.i, %if.end.i.if.then8_crit_edge, %if.end4.if.then8_crit_edge
  %retval.0.i20 = phi ptr [ %call2.i, %alloc_diag_urb.exit.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then8_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end4.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then9.i ]
  %35 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end10:                                         ; preds = %alloc_diag_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef nonnull %call2.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then8 ], [ %call11, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_setup_apple(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_configure_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_send_frame_intel(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_send_frame_intel.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_send_frame_intel, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_send_frame_intel.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %1, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb30
    i8 3, label %sw.bb39
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %hdev, i32 5544
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %add.ptr.i, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %if.else22, label %if.then8

if.then8:                                         ; preds = %sw.bb
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2556, i16 %8)
  %cmp = icmp eq i16 %8, 2556
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  %bulk_tx_ep.i = getelementptr inbounds %struct.btusb_data, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %bulk_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bulk_tx_ep.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then12.if.then26_crit_edge, label %if.end.i

if.then12.if.then26_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.i:                                         ; preds = %if.then12
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then26_crit_edge, label %if.end6.i

if.end.i.if.then26_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %udev.i = getelementptr inbounds %struct.btusb_data, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %15 = ptrtoint ptr %bulk_tx_ep.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bulk_tx_ep.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %20, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %14, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @btusb_tx_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %context4.i.i, align 4
  %31 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hdev, ptr %31, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then8
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i85 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i85, label %if.else.if.end15_crit_edge, label %if.end.i86

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i86:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 8) #14
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #11
  br label %if.end15

if.end7.i:                                        ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  %cmdreq_type.i = getelementptr inbounds %struct.btusb_data, ptr %10, i32 0, i32 34
  %34 = ptrtoint ptr %cmdreq_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cmdreq_type.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %call7.i.i, align 8
  %cmdreq.i = getelementptr inbounds %struct.btusb_data, ptr %10, i32 0, i32 35
  %37 = ptrtoint ptr %cmdreq.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cmdreq.i, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %bRequest.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %wIndex.i, align 4
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %wValue.i, align 2
  %len.i87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len.i87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i87, align 4
  %conv.i88 = trunc i32 %43 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv.i88) #11
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %wLength.i, align 2
  %udev.i89 = getelementptr inbounds %struct.btusb_data, ptr %10, i32 0, i32 1
  %46 = ptrtoint ptr %udev.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev.i89, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i90 = shl i32 %49, 8
  %or.i91 = or i32 %shl.i.i90, -2147483648
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %dev1.i.i93 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i.i93 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %47, ptr %dev1.i.i93, align 4
  %pipe2.i.i94 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i.i94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i91, ptr %pipe2.i.i94, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 21
  %54 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %51, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i95 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i.i95 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %43, ptr %transfer_buffer_length.i.i95, align 4
  %complete.i.i96 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i.i96 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @btusb_tx_complete, ptr %complete.i.i96, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %58 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %skb, ptr %context5.i.i, align 4
  %59 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %hdev, ptr %59, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end7.i, %if.then5.i, %if.else.if.end15_crit_edge
  %urb.0 = phi ptr [ %call1.i, %if.end7.i ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %if.else.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 508, i16 %8)
  %cmp17 = icmp eq i16 %8, 508
  br i1 %cmp17, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 14, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then19.if.end24_crit_edge, label %if.end.i99

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i99:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %63 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %64, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i98 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #11
  %65 = ptrtoint ptr %call1.i98 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 14, ptr %call1.i98, align 1
  %plen.i = getelementptr inbounds %struct.hci_event_hdr, ptr %call1.i98, i32 0, i32 1
  %66 = ptrtoint ptr %plen.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %plen.i, align 1
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #11
  %67 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %call3.i, align 1
  %opcode4.i = getelementptr inbounds %struct.hci_ev_cmd_complete, ptr %call3.i, i32 0, i32 1
  %68 = ptrtoint ptr %opcode4.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 508, ptr %opcode4.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %69 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %call.i.i, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %cb.i, align 8
  %call5.i = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef nonnull %call.i.i.i) #11
  br label %if.end24

if.else22:                                        ; preds = %sw.bb
  %driver_data.i.i.i100 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i100, align 4
  %call1.i101 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i102 = icmp eq ptr %call1.i101, null
  br i1 %tobool.not.i102, label %if.else22.if.then26_crit_edge, label %if.end.i105

if.else22.if.then26_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.i105:                                      ; preds = %if.else22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i103 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 8) #14
  %tobool4.not.i104 = icmp eq ptr %call7.i.i103, null
  br i1 %tobool4.not.i104, label %if.then5.i106, label %if.end7.i126

if.then5.i106:                                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i101) #11
  br label %if.then26

if.end7.i126:                                     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  %cmdreq_type.i107 = getelementptr inbounds %struct.btusb_data, ptr %72, i32 0, i32 34
  %74 = ptrtoint ptr %cmdreq_type.i107 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cmdreq_type.i107, align 4
  %76 = ptrtoint ptr %call7.i.i103 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %call7.i.i103, align 8
  %cmdreq.i108 = getelementptr inbounds %struct.btusb_data, ptr %72, i32 0, i32 35
  %77 = ptrtoint ptr %cmdreq.i108 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cmdreq.i108, align 1
  %bRequest.i109 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i103, i32 0, i32 1
  %79 = ptrtoint ptr %bRequest.i109 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %bRequest.i109, align 1
  %wIndex.i110 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i103, i32 0, i32 3
  %80 = ptrtoint ptr %wIndex.i110 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %wIndex.i110, align 4
  %wValue.i111 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i103, i32 0, i32 2
  %81 = ptrtoint ptr %wValue.i111 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %wValue.i111, align 2
  %len.i112 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %82 = ptrtoint ptr %len.i112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i112, align 4
  %conv.i113 = trunc i32 %83 to i16
  %84 = tail call i16 @llvm.bswap.i16(i16 %conv.i113) #11
  %wLength.i114 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i103, i32 0, i32 4
  %85 = ptrtoint ptr %wLength.i114 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %wLength.i114, align 2
  %udev.i115 = getelementptr inbounds %struct.btusb_data, ptr %72, i32 0, i32 1
  %86 = ptrtoint ptr %udev.i115 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %udev.i115, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i.i116 = shl i32 %89, 8
  %or.i117 = or i32 %shl.i.i116, -2147483648
  %data10.i118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %90 = ptrtoint ptr %data10.i118 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data10.i118, align 4
  %dev1.i.i119 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 8
  %92 = ptrtoint ptr %dev1.i.i119 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %87, ptr %dev1.i.i119, align 4
  %pipe2.i.i120 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 10
  %93 = ptrtoint ptr %pipe2.i.i120 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i117, ptr %pipe2.i.i120, align 4
  %setup_packet3.i.i121 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 21
  %94 = ptrtoint ptr %setup_packet3.i.i121 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i103, ptr %setup_packet3.i.i121, align 4
  %transfer_buffer4.i.i122 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 14
  %95 = ptrtoint ptr %transfer_buffer4.i.i122 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %91, ptr %transfer_buffer4.i.i122, align 4
  %transfer_buffer_length.i.i123 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 19
  %96 = ptrtoint ptr %transfer_buffer_length.i.i123 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %83, ptr %transfer_buffer_length.i.i123, align 4
  %complete.i.i124 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 28
  %97 = ptrtoint ptr %complete.i.i124 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @btusb_tx_complete, ptr %complete.i.i124, align 4
  %context5.i.i125 = getelementptr inbounds %struct.urb, ptr %call1.i101, i32 0, i32 27
  %98 = ptrtoint ptr %context5.i.i125 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %skb, ptr %context5.i.i125, align 4
  %99 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %hdev, ptr %99, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end7.i126, %if.end.i99, %if.then19.if.end24_crit_edge, %if.end15.if.end24_crit_edge, %if.end6.i
  %urb.1 = phi ptr [ %urb.0, %if.end15.if.end24_crit_edge ], [ %urb.0, %if.then19.if.end24_crit_edge ], [ %urb.0, %if.end.i99 ], [ %call1.i101, %if.end7.i126 ], [ %call2.i, %if.end6.i ]
  %cmp.i = icmp ugt ptr %urb.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end24.if.then26_crit_edge, label %if.end28

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.then5.i106, %if.else22.if.then26_crit_edge, %if.end.i.if.then26_crit_edge, %if.then12.if.then26_crit_edge
  %urb.1160 = phi ptr [ %urb.1, %if.end24.if.then26_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i106 ], [ inttoptr (i32 -12 to ptr), %if.else22.if.then26_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then12.if.then26_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then26_crit_edge ]
  %101 = ptrtoint ptr %urb.1160 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  %102 = ptrtoint ptr %cmd_tx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cmd_tx, align 8
  %inc = add i32 %103, 1
  store i32 %inc, ptr %cmd_tx, align 8
  %call29 = tail call fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef %urb.1)
  br label %cleanup

sw.bb30:                                          ; preds = %do.end
  %driver_data.i.i.i129 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %104 = ptrtoint ptr %driver_data.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %driver_data.i.i.i129, align 4
  %bulk_tx_ep.i130 = getelementptr inbounds %struct.btusb_data, ptr %105, i32 0, i32 27
  %106 = ptrtoint ptr %bulk_tx_ep.i130 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bulk_tx_ep.i130, align 4
  %tobool.not.i131 = icmp eq ptr %107, null
  br i1 %tobool.not.i131, label %sw.bb30.if.then33_crit_edge, label %if.end.i134

sw.bb30.if.then33_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.end.i134:                                      ; preds = %sw.bb30
  %call2.i132 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool3.not.i133 = icmp eq ptr %call2.i132, null
  br i1 %tobool3.not.i133, label %if.end.i134.if.then33_crit_edge, label %alloc_bulk_urb.exit152

if.end.i134.if.then33_crit_edge:                  ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

alloc_bulk_urb.exit152:                           ; preds = %if.end.i134
  %udev.i135 = getelementptr inbounds %struct.btusb_data, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %udev.i135 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udev.i135, align 4
  %110 = ptrtoint ptr %bulk_tx_ep.i130 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bulk_tx_ep.i130, align 4
  %bEndpointAddress.i136 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %bEndpointAddress.i136 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bEndpointAddress.i136, align 1
  %conv.i137 = zext i8 %113 to i32
  %114 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %109, align 8
  %shl.i.i138 = shl i32 %115, 8
  %shl1.i.i139 = shl nuw nsw i32 %conv.i137, 15
  %or.i.i140 = or i32 %shl.i.i138, %shl1.i.i139
  %or.i141 = or i32 %or.i.i140, -1073741824
  %data10.i142 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %116 = ptrtoint ptr %data10.i142 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data10.i142, align 4
  %len.i143 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %118 = ptrtoint ptr %len.i143 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len.i143, align 4
  %dev1.i.i144 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 8
  %120 = ptrtoint ptr %dev1.i.i144 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %109, ptr %dev1.i.i144, align 4
  %pipe2.i.i145 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 10
  %121 = ptrtoint ptr %pipe2.i.i145 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i141, ptr %pipe2.i.i145, align 4
  %transfer_buffer3.i.i146 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 14
  %122 = ptrtoint ptr %transfer_buffer3.i.i146 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %117, ptr %transfer_buffer3.i.i146, align 4
  %transfer_buffer_length.i.i147 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 19
  %123 = ptrtoint ptr %transfer_buffer_length.i.i147 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %119, ptr %transfer_buffer_length.i.i147, align 4
  %complete.i.i148 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 28
  %124 = ptrtoint ptr %complete.i.i148 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @btusb_tx_complete, ptr %complete.i.i148, align 4
  %context4.i.i149 = getelementptr inbounds %struct.urb, ptr %call2.i132, i32 0, i32 27
  %125 = ptrtoint ptr %context4.i.i149 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %skb, ptr %context4.i.i149, align 4
  %126 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %hdev, ptr %126, align 8
  %cmp.i153 = icmp ugt ptr %call2.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %alloc_bulk_urb.exit152.if.then33_crit_edge, label %if.end35

alloc_bulk_urb.exit152.if.then33_crit_edge:       ; preds = %alloc_bulk_urb.exit152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then33:                                        ; preds = %alloc_bulk_urb.exit152.if.then33_crit_edge, %if.end.i134.if.then33_crit_edge, %sw.bb30.if.then33_crit_edge
  %retval.0.i151163 = phi ptr [ %call2.i132, %alloc_bulk_urb.exit152.if.then33_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i134.if.then33_crit_edge ], [ inttoptr (i32 -19 to ptr), %sw.bb30.if.then33_crit_edge ]
  %128 = ptrtoint ptr %retval.0.i151163 to i32
  br label %cleanup

if.end35:                                         ; preds = %alloc_bulk_urb.exit152
  call void @__sanitizer_cov_trace_pc() #13
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  %129 = ptrtoint ptr %acl_tx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %acl_tx, align 8
  %inc37 = add i32 %130, 1
  store i32 %inc37, ptr %acl_tx, align 8
  %call38 = tail call fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef nonnull %call2.i132)
  br label %cleanup

sw.bb39:                                          ; preds = %do.end
  %sco_num.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183, i32 3
  %131 = ptrtoint ptr %sco_num.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sco_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp41 = icmp eq i32 %132, 0
  br i1 %cmp41, label %sw.bb39.cleanup_crit_edge, label %if.end44

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %sw.bb39
  %call45 = tail call fastcc ptr @alloc_isoc_urb(ptr noundef %hdev, ptr noundef %skb)
  %cmp.i154 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  %134 = ptrtoint ptr %sco_tx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sco_tx, align 8
  %inc51 = add i32 %135, 1
  store i32 %inc51, ptr %sco_tx, align 8
  %call52 = tail call fastcc i32 @submit_tx_urb(ptr noundef %hdev, ptr noundef %call45)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then47, %sw.bb39.cleanup_crit_edge, %if.end35, %if.then33, %if.end28, %if.then26, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %133, %if.then47 ], [ %call52, %if.end49 ], [ %128, %if.then33 ], [ %call38, %if.end35 ], [ %101, %if.then26 ], [ %call29, %if.end28 ], [ -19, %sw.bb39.cleanup_crit_edge ], [ -84, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_intel_cmd_timeout(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio1 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %reset_gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio1, align 4
  %cmd_timeout_cnt = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %cmd_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_timeout_cnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cmd_timeout_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp ult i32 %inc, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.73, ptr noundef %name) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74, ptr noundef %name10) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.75, ptr noundef %name10) #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 100) #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_set_bdaddr_marvell(ptr noundef %hdev, ptr nocapture noundef readonly %bdaddr) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -2, ptr %buf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %0, align 1
  %4 = call ptr @memcpy(ptr %1, ptr %bdaddr, i32 6)
  %call3 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -990, i32 noundef 8, ptr noundef nonnull %buf, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call3 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.76, ptr noundef %name, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %call3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_mtk_setup(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params.i226 = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i227 = alloca i32, align 4
  %param.i228 = alloca i8, align 1
  %wmt_params.i = alloca %struct.btmtk_hci_wmt_params, align 4
  %status.i = alloca i32, align 4
  %param.i = alloca i8, align 1
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %tci_sleep = alloca %struct.btmtk_tci_sleep, align 1
  %status = alloca i32, align 4
  %fw_bin_name = alloca [64 x i8], align 1
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #11
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %5 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %6 = call ptr @memset(ptr %wmt_params, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tci_sleep) #11
  %7 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 2
  %9 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 3
  %10 = getelementptr inbounds %struct.btmtk_tci_sleep, ptr %tci_sleep, i32 0, i32 4
  %11 = call ptr @memset(ptr %tci_sleep, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %status, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_bin_name) #11
  %13 = call ptr @memset(ptr %fw_bin_name, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #11
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %param, align 1, !annotation !360
  %call1 = tail call i64 @ktime_get() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %if.end.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %udev.i.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i.i, i8 noundef zeroext 99, i8 noundef zeroext -64, i16 noundef zeroext -32768, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %btusb_mtk_id_get.exit.thread243, label %if.end

btusb_mtk_id_get.exit.thread243:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %if.then

if.then:                                          ; preds = %btusb_mtk_id_get.exit.thread243, %entry.if.then_crit_edge
  %retval.0.i.i242 = phi i32 [ %call6.i.i, %btusb_mtk_id_get.exit.thread243 ], [ -12, %entry.if.then_crit_edge ]
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %retval.0.i.i242) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i.i.i.i, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i197 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i.i198 = icmp eq ptr %call7.i.i.i.i197, null
  br i1 %tobool.not.i.i198, label %if.then3.if.then6_crit_edge, label %if.end.i.i204

if.then3.if.then6_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i.i204:                                    ; preds = %if.then3
  %24 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i200 = shl i32 %27, 8
  %or2.i.i201 = or i32 %shl.i.i.i200, -2147483520
  %call6.i.i202 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or2.i.i201, i8 noundef zeroext 99, i8 noundef zeroext -64, i16 noundef zeroext 28673, i16 noundef zeroext 512, ptr noundef nonnull %call7.i.i.i.i197, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i202)
  %cmp.i.i203 = icmp slt i32 %call6.i.i202, 0
  br i1 %cmp.i.i203, label %btusb_mtk_id_get.exit208.thread250, label %if.end9

btusb_mtk_id_get.exit208.thread250:               ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i197) #11
  br label %if.then6

if.then6:                                         ; preds = %btusb_mtk_id_get.exit208.thread250, %if.then3.if.then6_crit_edge
  %retval.0.i.i207249 = phi i32 [ %call6.i.i202, %btusb_mtk_id_get.exit208.thread250 ], [ -12, %if.then3.if.then6_crit_edge ]
  %name7 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.77, ptr noundef %name7, i32 noundef %retval.0.i.i207249) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i204
  %28 = ptrtoint ptr %call7.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i.i.i197, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i197) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i209 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i.i210 = icmp eq ptr %call7.i.i.i.i209, null
  br i1 %tobool.not.i.i210, label %if.end9.if.then12_crit_edge, label %if.end.i.i216

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.i.i216:                                    ; preds = %if.end9
  %32 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i.i212 = shl i32 %35, 8
  %or2.i.i213 = or i32 %shl.i.i.i212, -2147483520
  %call6.i.i214 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or2.i.i213, i8 noundef zeroext 99, i8 noundef zeroext -64, i16 noundef zeroext -32766, i16 noundef zeroext 4100, ptr noundef nonnull %call7.i.i.i.i209, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i214)
  %cmp.i.i215 = icmp slt i32 %call6.i.i214, 0
  br i1 %cmp.i.i215, label %btusb_mtk_id_get.exit220.thread257, label %btusb_mtk_id_get.exit220

btusb_mtk_id_get.exit220.thread257:               ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i209) #11
  br label %if.then12

btusb_mtk_id_get.exit220:                         ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %call7.i.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i.i.i209, align 8
  %38 = lshr i32 %37, 24
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i209) #11
  %phi.bo = add nuw nsw i32 %38, 1
  br label %if.end16

if.then12:                                        ; preds = %btusb_mtk_id_get.exit220.thread257, %if.end9.if.then12_crit_edge
  %retval.0.i.i219256 = phi i32 [ %call6.i.i214, %btusb_mtk_id_get.exit220.thread257 ], [ -12, %if.end9.if.then12_crit_edge ]
  %name13 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, ptr noundef %name13, i32 noundef %retval.0.i.i219256) #11
  br label %cleanup

if.end16:                                         ; preds = %btusb_mtk_id_get.exit220, %if.end.if.end16_crit_edge
  %dev_id.4 = phi i32 [ %30, %btusb_mtk_id_get.exit220 ], [ %22, %if.end.if.end16_crit_edge ]
  %fw_version.2 = phi i32 [ %phi.bo, %btusb_mtk_id_get.exit220 ], [ 1, %if.end.if.end16_crit_edge ]
  %39 = zext i32 %dev_id.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %dev_id.4, label %sw.default [
    i32 30307, label %if.end16.sw.epilog_crit_edge
    i32 30312, label %sw.bb17
    i32 31010, label %if.end16.sw.bb18_crit_edge
    i32 31073, label %if.end16.sw.bb18_crit_edge288
  ]

if.end16.sw.bb18_crit_edge288:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end16.sw.bb18_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16.sw.bb18_crit_edge, %if.end16.sw.bb18_crit_edge288
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_bin_name, i32 noundef 64, ptr noundef nonnull @.str.81, i32 noundef %dev_id.4, i32 noundef %fw_version.2)
  %call23 = call i32 @btmtk_setup_firmware_79xx(ptr noundef %hdev, ptr noundef nonnull %fw_bin_name, ptr noundef nonnull @btusb_mtk_hci_wmt_sync) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %name26 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.82, ptr noundef %name26, i32 noundef %call23) #11
  br label %cleanup

if.end28:                                         ; preds = %sw.bb18
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end28.btusb_mtk_uhw_reg_write.exit_crit_edge, label %if.end.i

if.end28.btusb_mtk_uhw_reg_write.exit_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit

if.end.i:                                         ; preds = %if.end28
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777472, ptr %call7.i.i.i, align 8
  %44 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i = shl i32 %47, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 29697, i16 noundef zeroext 6288, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.err_free_buf.i_crit_edge

if.end.i.err_free_buf.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i, i32 noundef %call5.i) #11
  br label %err_free_buf.i

err_free_buf.i:                                   ; preds = %if.then7.i, %if.end.i.err_free_buf.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %btusb_mtk_uhw_reg_write.exit

btusb_mtk_uhw_reg_write.exit:                     ; preds = %err_free_buf.i, %if.end28.btusb_mtk_uhw_reg_write.exit_crit_edge
  %48 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %param, align 1
  %49 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 6, ptr %wmt_params, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %2, align 1
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %3, align 2
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %param, ptr %4, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %5, align 4
  %call32 = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %btusb_mtk_uhw_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name35 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.83, ptr noundef %name35, i32 noundef %call32) #11
  br label %cleanup

if.end37:                                         ; preds = %btusb_mtk_uhw_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %54 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -720, ptr %msft_opcode.i, align 4
  %aosp_capable.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 230
  %55 = ptrtoint ptr %aosp_capable.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %aosp_capable.i, align 1
  br label %done

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %name38 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.84, ptr noundef %name38, i32 noundef %dev_id.4) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17, %if.end16.sw.epilog_crit_edge
  %fwname.0 = phi ptr [ @.str.80, %sw.bb17 ], [ @.str.79, %if.end16.sw.epilog_crit_edge ]
  %56 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 23, ptr %wmt_params, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %2, align 1
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %3, align 2
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %4, align 4
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %status, ptr %5, align 4
  %call45 = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name48 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.85, ptr noundef %name48, i32 noundef %call45) #11
  br label %cleanup

if.end50:                                         ; preds = %sw.epilog
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp51 = icmp eq i32 %62, 3
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %name53 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.86, ptr noundef %name53) #11
  br label %ignore_setup_fw

if.end55:                                         ; preds = %if.end50
  %call56 = call i32 @btmtk_setup_firmware(ptr noundef %hdev, ptr noundef nonnull %fwname.0, ptr noundef nonnull @btusb_mtk_hci_wmt_sync) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end55.ignore_setup_fw_crit_edge

if.end55.ignore_setup_fw_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore_setup_fw

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ignore_setup_fw:                                  ; preds = %if.end55.ignore_setup_fw_crit_edge, %if.then52
  %call60 = call i64 @ktime_get() #11
  %add.i = add i64 %call60, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 2715) #11
  %63 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 1
  %64 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 2
  %65 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 3
  %66 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #11
  %67 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %status.i, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #11
  %68 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %param.i, align 1
  %69 = ptrtoint ptr %wmt_params.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 6, ptr %wmt_params.i, align 4
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %63, align 1
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %64, align 2
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %param.i, ptr %65, align 4
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %status.i, ptr %66, align 4
  %call.i271 = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp.i221272 = icmp slt i32 %call.i271, 0
  br i1 %cmp.i221272, label %ignore_setup_fw.for.end.thread_crit_edge, label %ignore_setup_fw.btusb_mtk_func_query.exit_crit_edge

ignore_setup_fw.btusb_mtk_func_query.exit_crit_edge: ; preds = %ignore_setup_fw
  br label %btusb_mtk_func_query.exit

ignore_setup_fw.for.end.thread_crit_edge:         ; preds = %ignore_setup_fw
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then84.for.end.thread_crit_edge, %ignore_setup_fw.for.end.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i271, %ignore_setup_fw.for.end.thread_crit_edge ], [ %call.i, %if.then84.for.end.thread_crit_edge ]
  %name.i222 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.95, ptr noundef %name.i222, i32 noundef %call.i.lcssa) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i) #11
  br label %cleanup

btusb_mtk_func_query.exit:                        ; preds = %if.then84.btusb_mtk_func_query.exit_crit_edge, %ignore_setup_fw.btusb_mtk_func_query.exit_crit_edge
  %74 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i) #11
  %76 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp73.not = icmp eq i32 %75, 6
  br i1 %cmp73.not, label %land.lhs.true, label %btusb_mtk_func_query.exit.for.end_crit_edge

btusb_mtk_func_query.exit.for.end_crit_edge:      ; preds = %btusb_mtk_func_query.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %btusb_mtk_func_query.exit
  %call77 = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call77, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call77, %add.i
  br i1 %cmp3.i, label %if.then80, label %if.then84

if.then80:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i226) #11
  %77 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i226, i32 0, i32 1
  %78 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i226, i32 0, i32 2
  %79 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i226, i32 0, i32 3
  %80 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params.i226, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i227) #11
  %81 = ptrtoint ptr %status.i227 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %status.i227, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i228) #11
  %82 = ptrtoint ptr %param.i228 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %param.i228, align 1
  %83 = ptrtoint ptr %wmt_params.i226 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 6, ptr %wmt_params.i226, align 4
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 4, ptr %77, align 1
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %78, align 2
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %param.i228, ptr %79, align 4
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %status.i227, ptr %80, align 4
  %call.i229 = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %cmp.i230 = icmp slt i32 %call.i229, 0
  br i1 %cmp.i230, label %if.then.i232, label %if.end.i233

if.then.i232:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %name.i231 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.95, ptr noundef %name.i231, i32 noundef %call.i229) #11
  br label %btusb_mtk_func_query.exit235

if.end.i233:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %status.i227 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status.i227, align 4
  br label %btusb_mtk_func_query.exit235

btusb_mtk_func_query.exit235:                     ; preds = %if.end.i233, %if.then.i232
  %retval.0.i234 = phi i32 [ %call.i229, %if.then.i232 ], [ %89, %if.end.i233 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i228) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i227) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params.i226) #11
  %90 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i234, ptr %status, align 4
  br label %for.end

if.then84:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #11
  %91 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %status.i, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #11
  %92 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %param.i, align 1
  %93 = ptrtoint ptr %wmt_params.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 6, ptr %wmt_params.i, align 4
  %94 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %63, align 1
  %95 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %64, align 2
  %96 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %param.i, ptr %65, align 4
  %97 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %status.i, ptr %66, align 4
  %call.i = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params.i) #11
  %cmp.i221 = icmp slt i32 %call.i, 0
  br i1 %cmp.i221, label %if.then84.for.end.thread_crit_edge, label %if.then84.btusb_mtk_func_query.exit_crit_edge

if.then84.btusb_mtk_func_query.exit_crit_edge:    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_func_query.exit

if.then84.for.end.thread_crit_edge:               ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end:                                          ; preds = %btusb_mtk_func_query.exit235, %btusb_mtk_func_query.exit.for.end_crit_edge
  %98 = phi i32 [ %retval.0.i234, %btusb_mtk_func_query.exit235 ], [ %75, %btusb_mtk_func_query.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp87 = icmp slt i32 %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %98)
  %cmp88.not = icmp eq i32 %98, 6
  %brmerge = or i1 %cmp88.not, %cmp87
  %phi.sel.mux = select i1 %cmp88.not, i32 -110, i32 %98
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %if.end94

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end94:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %98)
  %cmp95 = icmp eq i32 %98, 5
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %name97 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.87, ptr noundef %name97) #11
  br label %ignore_func_on

if.end99:                                         ; preds = %if.end94
  %99 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %param, align 1
  %100 = ptrtoint ptr %wmt_params to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 6, ptr %wmt_params, align 4
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %2, align 1
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %3, align 2
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %param, ptr %4, align 4
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %5, align 4
  %call105 = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then107, label %if.end99.ignore_func_on_crit_edge

if.end99.ignore_func_on_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore_func_on

if.then107:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %name108 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.83, ptr noundef %name108, i32 noundef %call105) #11
  br label %cleanup

ignore_func_on:                                   ; preds = %if.end99.ignore_func_on_crit_edge, %if.then96
  %105 = ptrtoint ptr %tci_sleep to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 5, ptr %tci_sleep, align 1
  %106 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 16390, ptr %7, align 1
  %107 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 16390, ptr %8, align 1
  %108 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %9, align 1
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %10, align 1
  %call113 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -902, i32 noundef 7, ptr noundef nonnull %tci_sleep, i32 noundef 1000) #11
  %cmp.i236 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then115, label %if.end119

if.then115:                                       ; preds = %ignore_func_on
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %call113 to i32
  %name117 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.88, ptr noundef %name117, i32 noundef %110) #11
  br label %cleanup

if.end119:                                        ; preds = %ignore_func_on
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %call113, i32 noundef 0) #11
  br label %done

done:                                             ; preds = %if.end119, %if.end37
  %call120 = call i64 @ktime_get() #11
  %sub = sub i64 %call120, %call1
  %shr122 = lshr i64 %sub, 10
  %name123 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.89, ptr noundef %name123, i64 noundef %shr122) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then115, %if.then107, %for.end.cleanup_crit_edge, %for.end.thread, %if.end55.cleanup_crit_edge, %if.then47, %sw.default, %if.then34, %if.then25, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ %retval.0.i.i242, %if.then ], [ -19, %sw.default ], [ %call23, %if.then25 ], [ %call32, %if.then34 ], [ 0, %done ], [ %call45, %if.then47 ], [ %110, %if.then115 ], [ %call105, %if.then107 ], [ %retval.0.i.i207249, %if.then6 ], [ %retval.0.i.i219256, %if.then12 ], [ %call56, %if.end55.cleanup_crit_edge ], [ %phi.sel.mux, %for.end.cleanup_crit_edge ], [ %call.i.lcssa, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_bin_name) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tci_sleep) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_mtk_shutdown(ptr noundef %hdev) #2 align 64 {
entry:
  %wmt_params = alloca %struct.btmtk_hci_wmt_params, align 4
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wmt_params) #11
  %0 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #11
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
  %call = call i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr noundef nonnull %wmt_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wmt_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_mtk_cmd_timeout(ptr noundef %hdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !360
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %intr_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 17
  tail call void @usb_kill_anchored_urbs(ptr noundef %intr_anchor.i) #11
  %bulk_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 18
  tail call void @usb_kill_anchored_urbs(ptr noundef %bulk_anchor.i) #11
  %isoc_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 19
  tail call void @usb_kill_anchored_urbs(ptr noundef %isoc_anchor.i) #11
  %diag_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 20
  tail call void @usb_kill_anchored_urbs(ptr noundef %diag_anchor.i) #11
  %ctrl_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 21
  tail call void @usb_kill_anchored_urbs(ptr noundef %ctrl_anchor.i) #11
  %tx_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 14
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_mtk_cmd_timeout, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !358

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.97, ptr noundef %name10) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.btusb_mtk_uhw_reg_write.exit_crit_edge, label %if.end.i

do.end.btusb_mtk_uhw_reg_write.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit

if.end.i:                                         ; preds = %do.end
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777472, ptr %call7.i.i.i, align 8
  %udev.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 29697, i16 noundef zeroext 6288, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.err_free_buf.i_crit_edge

if.end.i.err_free_buf.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i, i32 noundef %call5.i) #11
  br label %err_free_buf.i

err_free_buf.i:                                   ; preds = %if.then7.i, %if.end.i.err_free_buf.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %btusb_mtk_uhw_reg_write.exit

btusb_mtk_uhw_reg_write.exit:                     ; preds = %err_free_buf.i, %do.end.btusb_mtk_uhw_reg_write.exit_crit_edge
  call fastcc void @btusb_mtk_uhw_reg_read(ptr noundef %1, i32 noundef 1946157984, ptr noundef nonnull %val)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i106 = icmp eq ptr %call7.i.i.i105, null
  br i1 %tobool.not.i106, label %btusb_mtk_uhw_reg_write.exit.btusb_mtk_uhw_reg_write.exit116_crit_edge, label %if.end.i112

btusb_mtk_uhw_reg_write.exit.btusb_mtk_uhw_reg_write.exit116_crit_edge: ; preds = %btusb_mtk_uhw_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit116

if.end.i112:                                      ; preds = %btusb_mtk_uhw_reg_write.exit
  %16 = ptrtoint ptr %call7.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16777216, ptr %call7.i.i.i105, align 8
  %udev.i107 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %udev.i107 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i107, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i108 = shl i32 %20, 8
  %or.i109 = or i32 %shl.i.i108, -2147483648
  %call5.i110 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i109, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 28672, i16 noundef zeroext 9744, ptr noundef nonnull %call7.i.i.i105, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i110)
  %cmp.i111 = icmp slt i32 %call5.i110, 0
  br i1 %cmp.i111, label %if.then7.i114, label %if.end.i112.err_free_buf.i115_crit_edge

if.end.i112.err_free_buf.i115_crit_edge:          ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i115

if.then7.i114:                                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  %name.i113 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i113, i32 noundef %call5.i110) #11
  br label %err_free_buf.i115

err_free_buf.i115:                                ; preds = %if.then7.i114, %if.end.i112.err_free_buf.i115_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i105) #11
  br label %btusb_mtk_uhw_reg_write.exit116

btusb_mtk_uhw_reg_write.exit116:                  ; preds = %err_free_buf.i115, %btusb_mtk_uhw_reg_write.exit.btusb_mtk_uhw_reg_write.exit116_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i118 = icmp eq ptr %call7.i.i.i117, null
  br i1 %tobool.not.i118, label %btusb_mtk_uhw_reg_write.exit116.btusb_mtk_uhw_reg_write.exit128_crit_edge, label %if.end.i124

btusb_mtk_uhw_reg_write.exit116.btusb_mtk_uhw_reg_write.exit128_crit_edge: ; preds = %btusb_mtk_uhw_reg_write.exit116
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit128

if.end.i124:                                      ; preds = %btusb_mtk_uhw_reg_write.exit116
  %24 = ptrtoint ptr %call7.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -16777216, ptr %call7.i.i.i117, align 8
  %udev.i119 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %udev.i119 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev.i119, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i120 = shl i32 %28, 8
  %or.i121 = or i32 %shl.i.i120, -2147483648
  %call5.i122 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i121, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 29696, i16 noundef zeroext 36, ptr noundef nonnull %call7.i.i.i117, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i122)
  %cmp.i123 = icmp slt i32 %call5.i122, 0
  br i1 %cmp.i123, label %if.then7.i126, label %if.end.i124.err_free_buf.i127_crit_edge

if.end.i124.err_free_buf.i127_crit_edge:          ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i127

if.then7.i126:                                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  %name.i125 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i125, i32 noundef %call5.i122) #11
  br label %err_free_buf.i127

err_free_buf.i127:                                ; preds = %if.then7.i126, %if.end.i124.err_free_buf.i127_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i117) #11
  br label %btusb_mtk_uhw_reg_write.exit128

btusb_mtk_uhw_reg_write.exit128:                  ; preds = %err_free_buf.i127, %btusb_mtk_uhw_reg_write.exit116.btusb_mtk_uhw_reg_write.exit128_crit_edge
  call fastcc void @btusb_mtk_uhw_reg_read(ptr noundef %1, i32 noundef 1946157092, ptr noundef nonnull %val)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i130 = icmp eq ptr %call7.i.i.i129, null
  br i1 %tobool.not.i130, label %btusb_mtk_uhw_reg_write.exit128.btusb_mtk_uhw_reg_write.exit140_crit_edge, label %if.end.i136

btusb_mtk_uhw_reg_write.exit128.btusb_mtk_uhw_reg_write.exit140_crit_edge: ; preds = %btusb_mtk_uhw_reg_write.exit128
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit140

if.end.i136:                                      ; preds = %btusb_mtk_uhw_reg_write.exit128
  %32 = ptrtoint ptr %call7.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -16777216, ptr %call7.i.i.i129, align 8
  %udev.i131 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %udev.i131 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev.i131, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i132 = shl i32 %36, 8
  %or.i133 = or i32 %shl.i.i132, -2147483648
  %call5.i134 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i133, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 29696, i16 noundef zeroext 776, ptr noundef nonnull %call7.i.i.i129, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i134)
  %cmp.i135 = icmp slt i32 %call5.i134, 0
  br i1 %cmp.i135, label %if.then7.i138, label %if.end.i136.err_free_buf.i139_crit_edge

if.end.i136.err_free_buf.i139_crit_edge:          ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i139

if.then7.i138:                                    ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #13
  %name.i137 = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i137, i32 noundef %call5.i134) #11
  br label %err_free_buf.i139

err_free_buf.i139:                                ; preds = %if.then7.i138, %if.end.i136.err_free_buf.i139_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i129) #11
  br label %btusb_mtk_uhw_reg_write.exit140

btusb_mtk_uhw_reg_write.exit140:                  ; preds = %err_free_buf.i139, %btusb_mtk_uhw_reg_write.exit128.btusb_mtk_uhw_reg_write.exit140_crit_edge
  call fastcc void @btusb_mtk_uhw_reg_read(ptr noundef %1, i32 noundef 1946157832, ptr noundef nonnull %val)
  tail call void @msleep(i32 noundef 20) #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i142 = icmp eq ptr %call7.i.i.i141, null
  br i1 %tobool.not.i142, label %btusb_mtk_uhw_reg_write.exit140.btusb_mtk_uhw_reg_write.exit152_crit_edge, label %if.end.i148

btusb_mtk_uhw_reg_write.exit140.btusb_mtk_uhw_reg_write.exit152_crit_edge: ; preds = %btusb_mtk_uhw_reg_write.exit140
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_uhw_reg_write.exit152

if.end.i148:                                      ; preds = %btusb_mtk_uhw_reg_write.exit140
  %40 = ptrtoint ptr %call7.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %call7.i.i.i141, align 8
  %udev.i143 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %udev.i143 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev.i143, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i144 = shl i32 %44, 8
  %or.i145 = or i32 %shl.i.i144, -2147483648
  %call5.i146 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i145, i8 noundef zeroext 2, i8 noundef zeroext 94, i16 noundef zeroext 28672, i16 noundef zeroext 9744, ptr noundef nonnull %call7.i.i.i141, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i146)
  %cmp.i147 = icmp slt i32 %call5.i146, 0
  br i1 %cmp.i147, label %if.then7.i150, label %if.end.i148.err_free_buf.i151_crit_edge

if.end.i148.err_free_buf.i151_crit_edge:          ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i151

if.then7.i150:                                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  %name.i149 = getelementptr inbounds %struct.hci_dev, ptr %38, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.94, ptr noundef %name.i149, i32 noundef %call5.i146) #11
  br label %err_free_buf.i151

err_free_buf.i151:                                ; preds = %if.then7.i150, %if.end.i148.err_free_buf.i151_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i141) #11
  br label %btusb_mtk_uhw_reg_write.exit152

btusb_mtk_uhw_reg_write.exit152:                  ; preds = %err_free_buf.i151, %btusb_mtk_uhw_reg_write.exit140.btusb_mtk_uhw_reg_write.exit152_crit_edge
  call fastcc void @btusb_mtk_uhw_reg_read(ptr noundef %1, i32 noundef 1879057936, ptr noundef nonnull %val)
  %name58 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br label %do.body22

do.body22:                                        ; preds = %do.end62.do.body22_crit_edge, %btusb_mtk_uhw_reg_write.exit152
  %retry.0 = phi i32 [ 0, %btusb_mtk_uhw_reg_write.exit152 ], [ %inc, %do.end62.do.body22_crit_edge ]
  call fastcc void @btusb_mtk_uhw_reg_read(ptr noundef %1, i32 noundef 1879057680, ptr noundef nonnull %val)
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %and = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body45, label %do.body26

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_mtk_cmd_timeout, %if.then38)) #11
          to label %do.end65 [label %if.then38], !srcloc !358

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.98, ptr noundef %name58) #11
  br label %do.end65

do.body45:                                        ; preds = %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_mtk_cmd_timeout, %if.then57)) #11
          to label %do.end62 [label %if.then57], !srcloc !358

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.99, ptr noundef %name58) #11
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %do.body45
  %inc = add nuw nsw i32 %retry.0, 1
  tail call void @msleep(i32 noundef 100) #11
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end62.do.end65_crit_edge, label %do.end62.do.body22_crit_edge

do.end62.do.body22_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22

do.end62.do.end65_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end65:                                         ; preds = %do.end62.do.end65_crit_edge, %if.then38, %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end65.btusb_mtk_id_get.exit_crit_edge, label %if.end.i.i

do.end65.btusb_mtk_id_get.exit_crit_edge:         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_id_get.exit

if.end.i.i:                                       ; preds = %do.end65
  %udev.i.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i.i = shl i32 %51, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or2.i.i, i8 noundef zeroext 99, i8 noundef zeroext -64, i16 noundef zeroext 28673, i16 noundef zeroext 512, ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.err_free_buf.i.i_crit_edge, label %if.end9.i.i

if.end.i.i.err_free_buf.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_buf.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call7.i.i.i.i, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  br label %err_free_buf.i.i

err_free_buf.i.i:                                 ; preds = %if.end9.i.i, %if.end.i.i.err_free_buf.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %btusb_mtk_id_get.exit

btusb_mtk_id_get.exit:                            ; preds = %err_free_buf.i.i, %do.end65.btusb_mtk_id_get.exit_crit_edge
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool67.not = icmp eq i32 %57, 0
  br i1 %tobool67.not, label %if.then68, label %btusb_mtk_id_get.exit.if.end71_crit_edge

btusb_mtk_id_get.exit.if.end71_crit_edge:         ; preds = %btusb_mtk_id_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then68:                                        ; preds = %btusb_mtk_id_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.100, ptr noundef %name58) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %btusb_mtk_id_get.exit.if.end71_crit_edge
  %58 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intf, align 4
  tail call void @usb_queue_reset_device(ptr noundef %59) #11
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_recv_acl_mtk(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %4, label %sw.epilog [
    i16 -913, label %sw.bb
    i16 1535, label %entry.sw.bb3_crit_edge
    i16 1534, label %entry.sw.bb3_crit_edge11
  ]

entry.sw.bb3_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.btusb_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  tail call void @usb_disable_autosuspend(ptr noundef %9) #11
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge11
  %call4 = tail call i32 @hci_recv_diag(ptr noundef %hdev, ptr noundef %skb) #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @hci_recv_frame(ptr noundef %hdev, ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ %call4, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_setup_qca(ptr noundef %hdev) #2 align 64 {
entry:
  %fw.i101 = alloca ptr, align 4
  %fwname.i102 = alloca [64 x i8], align 1
  %fw.i = alloca ptr, align 4
  %fwname.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev1 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 20, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %btusb_qca_send_vendor_req.exit.thread133, label %if.end

btusb_qca_send_vendor_req.exit.thread133:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %call3.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ver.sroa.0.0.copyload = load i32, ptr %call7.i.i, align 8
  %ver.sroa.8.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %8 = ptrtoint ptr %ver.sroa.8.0.call7.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %ver.sroa.8.0.copyload = load i32, ptr %ver.sroa.8.0.call7.i.i.sroa_idx, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %ver.sroa.0.0.copyload)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %ver.sroa.0.0.copyload)
  %cmp5 = icmp eq i32 %ver.sroa.0.0.copyload, 65536
  %spec.select = select i1 %cmp5, ptr @qca_devices_table, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842752, i32 %ver.sroa.0.0.copyload)
  %cmp5.1 = icmp eq i32 %ver.sroa.0.0.copyload, 16842752
  %spec.select.1 = select i1 %cmp5.1, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 1), ptr %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %ver.sroa.0.0.copyload)
  %cmp5.2 = icmp eq i32 %ver.sroa.0.0.copyload, 131072
  %spec.select.2 = select i1 %cmp5.2, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 2), ptr %spec.select.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16908288, i32 %ver.sroa.0.0.copyload)
  %cmp5.3 = icmp eq i32 %ver.sroa.0.0.copyload, 16908288
  %spec.select.3 = select i1 %cmp5.3, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 3), ptr %spec.select.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %ver.sroa.0.0.copyload)
  %cmp5.4 = icmp eq i32 %ver.sroa.0.0.copyload, 196608
  %spec.select.4 = select i1 %cmp5.4, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 4), ptr %spec.select.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 33751040, i32 %ver.sroa.0.0.copyload)
  %cmp5.5 = icmp eq i32 %ver.sroa.0.0.copyload, 33751040
  %spec.select.5 = select i1 %cmp5.5, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 5), ptr %spec.select.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70400, i32 %ver.sroa.0.0.copyload)
  %cmp5.6 = icmp eq i32 %ver.sroa.0.0.copyload, 70400
  %spec.select.6 = select i1 %cmp5.6, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 6), ptr %spec.select.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 135936, i32 %ver.sroa.0.0.copyload)
  %cmp5.7 = icmp eq i32 %ver.sroa.0.0.copyload, 135936
  %spec.select.7 = select i1 %cmp5.7, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 7), ptr %spec.select.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16913152, i32 %ver.sroa.0.0.copyload)
  %cmp5.8 = icmp eq i32 %ver.sroa.0.0.copyload, 16913152
  %spec.select.8 = select i1 %cmp5.8, ptr getelementptr inbounds ([9 x %struct.qca_device_info], ptr @qca_devices_table, i32 0, i32 8), ptr %spec.select.7
  %tobool.not = icmp eq ptr %spec.select.8, null
  br i1 %tobool.not, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool10.not = icmp ult i32 %9, 65536
  br i1 %tobool10.not, label %if.end12, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.104, ptr noundef %name, i32 noundef %9) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i71 = icmp eq ptr %call7.i.i70, null
  br i1 %tobool.not.i71, label %if.end13.cleanup_crit_edge, label %if.end.i76

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i76:                                       ; preds = %if.end13
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %shl.i.i72 = shl i32 %12, 8
  %or2.i73 = or i32 %shl.i.i72, -2147483520
  %call3.i74 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i73, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i70, i16 noundef zeroext 1, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i74)
  %cmp.i75 = icmp slt i32 %call3.i74, 0
  br i1 %cmp.i75, label %btusb_qca_send_vendor_req.exit82.thread144, label %if.end17

btusb_qca_send_vendor_req.exit82.thread144:       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i77 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i77, ptr noundef nonnull @.str.20, i32 noundef %call3.i74) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i70) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end.i76
  %13 = ptrtoint ptr %call7.i.i70 to i32
  call void @__asan_load1_noabort(i32 %13)
  %status.0.copyload = load i8, ptr %call7.i.i70, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i70) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %status.0.copyload)
  %tobool19.not = icmp sgt i8 %status.0.copyload, -1
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #11
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fwname.i) #11
  %15 = call ptr @memset(ptr %fwname.i, i32 255, i32 64)
  %16 = tail call i32 @llvm.bswap.i32(i32 %ver.sroa.8.0.copyload) #11
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname.i, i32 noundef 64, ptr noundef nonnull @.str.105, i32 noundef %9) #11
  %dev.i83 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %fwname.i, ptr noundef %dev.i83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i84 = icmp eq i32 %call2.i, 0
  %name5.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br i1 %tobool.not.i84, label %if.end.i85, label %if.then.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.106, ptr noundef %name5.i, ptr noundef nonnull %fwname.i, i32 noundef %call2.i) #11
  br label %btusb_setup_qca_load_rampatch.exit

if.end.i85:                                       ; preds = %if.then20
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.107, ptr noundef %name5.i, ptr noundef nonnull %fwname.i) #11
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %ver_offset.i = getelementptr inbounds %struct.qca_device_info, ptr %spec.select.8, i32 0, i32 3
  %21 = ptrtoint ptr %ver_offset.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ver_offset.i, align 2
  %conv.i = zext i8 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i
  %rom_version_low.i = getelementptr inbounds %struct.qca_rampatch_version, ptr %add.ptr.i, i32 0, i32 1
  %23 = ptrtoint ptr %rom_version_low.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %rom_version_low.i, align 1
  %patch_version8.i = getelementptr inbounds %struct.qca_rampatch_version, ptr %add.ptr.i, i32 0, i32 2
  %25 = ptrtoint ptr %patch_version8.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %patch_version8.i, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool9.not.i = icmp ult i32 %9, 65536
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr.i, align 1
  %30 = zext i16 %29 to i32
  %31 = zext i16 %24 to i32
  %32 = shl nuw i32 %31, 16
  %33 = or i32 %32, %30
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  %34 = call i16 @llvm.bswap.i16(i16 %24) #11
  %conv13.i = zext i16 %34 to i32
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then10.i
  %rver_rom.0.i = phi i32 [ %33, %if.then10.i ], [ %conv13.i, %if.else.i ]
  %conv17.i = zext i16 %27 to i32
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.108, ptr noundef %name5.i, i32 noundef %rver_rom.0.i, i32 noundef %conv17.i, i32 noundef %9, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %rver_rom.0.i, i32 %9)
  %cmp.not.i = icmp eq i32 %rver_rom.0.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv17.i)
  %cmp20.not.i = icmp ult i32 %16, %conv17.i
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %if.end25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.109, ptr noundef %name5.i) #11
  br label %done.i86

if.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw.i, align 4
  %rampatch_hdr.i = getelementptr inbounds %struct.qca_device_info, ptr %spec.select.8, i32 0, i32 1
  %37 = ptrtoint ptr %rampatch_hdr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rampatch_hdr.i, align 4
  %conv26.i = zext i8 %38 to i32
  %call27.i = call fastcc i32 @btusb_setup_qca_download_fw(ptr noundef %hdev, ptr noundef %36, i32 noundef %conv26.i) #11
  br label %done.i86

done.i86:                                         ; preds = %if.end25.i, %if.then22.i
  %err.0.i = phi i32 [ -22, %if.then22.i ], [ %call27.i, %if.end25.i ]
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %40) #11
  br label %btusb_setup_qca_load_rampatch.exit

btusb_setup_qca_load_rampatch.exit:               ; preds = %done.i86, %if.then.i
  %retval.0.i87 = phi i32 [ %call2.i, %if.then.i ], [ %err.0.i, %done.i86 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fwname.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i87)
  %cmp22 = icmp slt i32 %retval.0.i87, 0
  br i1 %cmp22, label %btusb_setup_qca_load_rampatch.exit.cleanup_crit_edge, label %btusb_setup_qca_load_rampatch.exit.if.end26_crit_edge

btusb_setup_qca_load_rampatch.exit.if.end26_crit_edge: ; preds = %btusb_setup_qca_load_rampatch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

btusb_setup_qca_load_rampatch.exit.cleanup_crit_edge: ; preds = %btusb_setup_qca_load_rampatch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %btusb_setup_qca_load_rampatch.exit.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i88 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 20) #14
  %tobool.not.i89 = icmp eq ptr %call7.i.i88, null
  br i1 %tobool.not.i89, label %if.end26.cleanup_crit_edge, label %if.end.i94

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i94:                                       ; preds = %if.end26
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %3, align 8
  %shl.i.i90 = shl i32 %43, 8
  %or2.i91 = or i32 %shl.i.i90, -2147483520
  %call3.i92 = call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i91, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i88, i16 noundef zeroext 20, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i92)
  %cmp.i93 = icmp slt i32 %call3.i92, 0
  br i1 %cmp.i93, label %btusb_qca_send_vendor_req.exit100.thread154, label %if.end31

btusb_qca_send_vendor_req.exit100.thread154:      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i95 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i95, ptr noundef nonnull @.str.20, i32 noundef %call3.i92) #15
  call void @kfree(ptr noundef nonnull %call7.i.i88) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end.i94
  %44 = ptrtoint ptr %call7.i.i88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %ver.sroa.0.0.copyload114 = load i32, ptr %call7.i.i88, align 8
  %ver.sroa.10.0.call7.i.i88.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i88, i32 8
  %45 = ptrtoint ptr %ver.sroa.10.0.call7.i.i88.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %ver.sroa.10.0.copyload116 = load i32, ptr %ver.sroa.10.0.call7.i.i88.sroa_idx, align 8
  %ver.sroa.12.0.call7.i.i88.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i88, i32 12
  %46 = ptrtoint ptr %ver.sroa.12.0.call7.i.i88.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %ver.sroa.12.0.copyload117 = load i8, ptr %ver.sroa.12.0.call7.i.i88.sroa_idx, align 4
  %ver.sroa.14.0.call7.i.i88.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i88, i32 13
  %47 = ptrtoint ptr %ver.sroa.14.0.call7.i.i88.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %ver.sroa.14.0.copyload118 = load i8, ptr %ver.sroa.14.0.call7.i.i88.sroa_idx, align 1
  %ver.sroa.16.0.call7.i.i88.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i88, i32 14
  %48 = ptrtoint ptr %ver.sroa.16.0.call7.i.i88.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %48)
  %ver.sroa.16.0.copyload119 = load i16, ptr %ver.sroa.16.0.call7.i.i88.sroa_idx, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i88) #11
  %49 = and i8 %status.0.copyload, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool34.not = icmp eq i8 %49, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then35:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i101) #11
  %50 = ptrtoint ptr %fw.i101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i101, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fwname.i102) #11
  %51 = call ptr @memset(ptr %fwname.i102, i32 255, i32 64)
  %52 = call i32 @llvm.bswap.i32(i32 %ver.sroa.0.0.copyload114) #11
  %53 = and i16 %ver.sroa.16.0.copyload119, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %53)
  %cmp.i.i = icmp eq i16 %53, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else13.i.i

if.then.i.i:                                      ; preds = %if.then35
  %conv4.i.i = zext i8 %ver.sroa.12.0.copyload117 to i32
  %shl.i.i103 = shl nuw nsw i32 %conv4.i.i, 8
  %conv5.i.i = zext i8 %ver.sroa.14.0.copyload118 to i32
  %add.i.i = or i32 %shl.i.i103, %conv5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1182784, i32 %ver.sroa.10.0.copyload116)
  %switch.selectcmp.case1.i.i = icmp eq i32 %ver.sroa.10.0.copyload116, 1182784
  call void @__sanitizer_cov_trace_const_cmp4(i32 286395456, i32 %ver.sroa.10.0.copyload116)
  %switch.selectcmp.case2.i.i = icmp eq i32 %ver.sroa.10.0.copyload116, 286395456
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %54 = select i1 %switch.selectcmp.i.i, ptr @.str.115, ptr @.str.116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp8.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname.i102, i32 noundef 64, ptr noundef nonnull @.str.117, i32 noundef %52, ptr noundef nonnull %54) #11
  br label %btusb_generate_qca_nvm_name.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname.i102, i32 noundef 64, ptr noundef nonnull @.str.118, i32 noundef %52, ptr noundef nonnull %54, i32 noundef %add.i.i) #11
  br label %btusb_generate_qca_nvm_name.exit.i

if.else13.i.i:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname.i102, i32 noundef 64, ptr noundef nonnull @.str.119, i32 noundef %52) #11
  br label %btusb_generate_qca_nvm_name.exit.i

btusb_generate_qca_nvm_name.exit.i:               ; preds = %if.else13.i.i, %if.else.i.i, %if.then10.i.i
  %dev.i104 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call.i105 = call i32 @request_firmware(ptr noundef nonnull %fw.i101, ptr noundef nonnull %fwname.i102, ptr noundef %dev.i104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br i1 %tobool.not.i106, label %if.end.i109, label %if.then.i107

if.then.i107:                                     ; preds = %btusb_generate_qca_nvm_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.113, ptr noundef %name4.i, ptr noundef nonnull %fwname.i102, i32 noundef %call.i105) #11
  br label %btusb_setup_qca_load_nvm.exit

if.end.i109:                                      ; preds = %btusb_generate_qca_nvm_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.114, ptr noundef %name4.i, ptr noundef nonnull %fwname.i102) #11
  %55 = ptrtoint ptr %fw.i101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw.i101, align 4
  %nvm_hdr.i = getelementptr inbounds %struct.qca_device_info, ptr %spec.select.8, i32 0, i32 2
  %57 = ptrtoint ptr %nvm_hdr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nvm_hdr.i, align 1
  %conv.i108 = zext i8 %58 to i32
  %call7.i = call fastcc i32 @btusb_setup_qca_download_fw(ptr noundef %hdev, ptr noundef %56, i32 noundef %conv.i108) #11
  %59 = ptrtoint ptr %fw.i101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i101, align 4
  call void @release_firmware(ptr noundef %60) #11
  br label %btusb_setup_qca_load_nvm.exit

btusb_setup_qca_load_nvm.exit:                    ; preds = %if.end.i109, %if.then.i107
  %retval.0.i110 = phi i32 [ %call.i105, %if.then.i107 ], [ %call7.i, %if.end.i109 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fwname.i102) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i110)
  %cmp37 = icmp slt i32 %retval.0.i110, 0
  br i1 %cmp37, label %btusb_setup_qca_load_nvm.exit.cleanup_crit_edge, label %btusb_setup_qca_load_nvm.exit.if.end41_crit_edge

btusb_setup_qca_load_nvm.exit.if.end41_crit_edge: ; preds = %btusb_setup_qca_load_nvm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

btusb_setup_qca_load_nvm.exit.cleanup_crit_edge:  ; preds = %btusb_setup_qca_load_nvm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %btusb_setup_qca_load_nvm.exit.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %btusb_setup_qca_load_nvm.exit.cleanup_crit_edge, %btusb_qca_send_vendor_req.exit100.thread154, %if.end26.cleanup_crit_edge, %btusb_setup_qca_load_rampatch.exit.cleanup_crit_edge, %btusb_qca_send_vendor_req.exit82.thread144, %if.end13.cleanup_crit_edge, %if.end12, %if.then9.cleanup_crit_edge, %btusb_qca_send_vendor_req.exit.thread133, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -19, %if.end12 ], [ 0, %if.then9.cleanup_crit_edge ], [ %retval.0.i87, %btusb_setup_qca_load_rampatch.exit.cleanup_crit_edge ], [ %retval.0.i110, %btusb_setup_qca_load_nvm.exit.cleanup_crit_edge ], [ %call3.i, %btusb_qca_send_vendor_req.exit.thread133 ], [ %call3.i74, %btusb_qca_send_vendor_req.exit82.thread144 ], [ %call3.i92, %btusb_qca_send_vendor_req.exit100.thread154 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_set_bdaddr_ath3012(ptr noundef %hdev, ptr nocapture noundef readonly %bdaddr) #2 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #11
  %0 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %buf, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %2, align 1
  %8 = call ptr @memcpy(ptr %3, ptr %bdaddr, i32 6)
  %call5 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1013, i32 noundef 10, ptr noundef nonnull %buf, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call5 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.120, ptr noundef %name, i32 noundef %9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %call5, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_qca_cmd_timeout(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio1 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %reset_gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio1, align 4
  %cmd_timeout_cnt = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %cmd_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_timeout_cnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cmd_timeout_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp ult i32 %inc, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br i1 %tobool.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.121, ptr noundef %name10) #11
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74, ptr noundef %name10) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #11
  tail call void @msleep(i32 noundef 200) #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.122, ptr noundef %name10) #11
  %intf = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %call12 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  tail call void @usb_queue_reset_device(ptr noundef %9) #11
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.123, ptr noundef %name10, i32 noundef %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.end8, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_shutdown_qca(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.124, ptr noundef %name) #11
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_set_bdaddr_wcn6855(ptr noundef %hdev, ptr nocapture noundef readonly %bdaddr) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #11
  %0 = call ptr @memcpy(ptr %buf, ptr %bdaddr, i32 6)
  %call2 = call ptr @__hci_cmd_sync_ev(ptr noundef %hdev, i16 noundef zeroext -1004, i32 noundef 6, ptr noundef nonnull %buf, i8 noundef zeroext 14, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call2 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.120, ptr noundef %name, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %call2, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrtl_setup_realtek(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrtl_shutdown_realtek(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_rtl_cmd_timeout(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio1 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %reset_gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio1, align 4
  %cmd_timeout_cnt = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %cmd_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_timeout_cnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cmd_timeout_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp ult i32 %inc, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.125, ptr noundef %name) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.74, ptr noundef %name10) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.126, ptr noundef %name10) #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 200) #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_setup_csr(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_setup_csr.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_setup_csr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_setup_csr.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call6 to i32
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.128, ptr noundef %name10, i32 noundef %2) #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.not = icmp eq i32 %4, 9
  br i1 %cmp.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.129, ptr noundef %name14) #11
  tail call void @kfree_skb_reason(ptr noundef %call6, i32 noundef 0) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %data17 = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 19
  %5 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data17, align 4
  %manufacturer = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %manufacturer to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %manufacturer, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %8)
  %cmp18.not = icmp eq i16 %8, 2560
  br i1 %cmp18.not, label %lor.lhs.false, label %if.end16.if.then106_crit_edge

if.end16.if.then106_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

lor.lhs.false:                                    ; preds = %if.end16
  %hci_rev = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %hci_rev to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %hci_rev, align 1
  %lmp_subver = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %lmp_subver to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %lmp_subver, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp22.not = icmp eq i16 %10, %12
  br i1 %cmp22.not, label %if.else, label %lor.lhs.false.if.then106_crit_edge

lor.lhs.false.if.then106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

if.else:                                          ; preds = %lor.lhs.false
  %13 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 847, i16 %13)
  %cmp27 = icmp ult i16 %13, 847
  br i1 %cmp27, label %land.lhs.true, label %if.else34

land.lhs.true:                                    ; preds = %if.else
  %hci_ver = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %hci_ver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hci_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp31.not = icmp eq i8 %15, 0
  br i1 %cmp31.not, label %land.lhs.true.land.lhs.true39_crit_edge, label %land.lhs.true.if.then106_crit_edge

land.lhs.true.if.then106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

land.lhs.true.land.lhs.true39_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true39

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1322, i16 %13)
  %cmp37 = icmp ult i16 %13, 1322
  br i1 %cmp37, label %if.else34.land.lhs.true39_crit_edge, label %if.else46

if.else34.land.lhs.true39_crit_edge:              ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.else34.land.lhs.true39_crit_edge, %land.lhs.true.land.lhs.true39_crit_edge
  %hci_ver40 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %hci_ver40 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hci_ver40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp43.not = icmp eq i8 %17, 0
  br i1 %cmp43.not, label %land.lhs.true39.land.lhs.true51_crit_edge, label %land.lhs.true39.if.then106_crit_edge

land.lhs.true39.if.then106_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

land.lhs.true39.land.lhs.true51_crit_edge:        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true51

if.else46:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp2(i16 3165, i16 %13)
  %cmp49 = icmp ult i16 %13, 3165
  br i1 %cmp49, label %if.else46.land.lhs.true51_crit_edge, label %if.else58

if.else46.land.lhs.true51_crit_edge:              ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.else46.land.lhs.true51_crit_edge, %land.lhs.true39.land.lhs.true51_crit_edge
  %hci_ver52 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %hci_ver52 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hci_ver52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp55.not = icmp eq i8 %19, 0
  br i1 %cmp55.not, label %land.lhs.true51.land.lhs.true63_crit_edge, label %land.lhs.true51.if.then106_crit_edge

land.lhs.true51.if.then106_crit_edge:             ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

land.lhs.true51.land.lhs.true63_crit_edge:        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true63

if.else58:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp2(i16 6298, i16 %13)
  %cmp61 = icmp ult i16 %13, 6298
  br i1 %cmp61, label %if.else58.land.lhs.true63_crit_edge, label %if.else70

if.else58.land.lhs.true63_crit_edge:              ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.else58.land.lhs.true63_crit_edge, %land.lhs.true51.land.lhs.true63_crit_edge
  %hci_ver64 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %hci_ver64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hci_ver64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp67.not = icmp eq i8 %21, 0
  br i1 %cmp67.not, label %land.lhs.true63.land.lhs.true75_crit_edge, label %land.lhs.true63.if.then106_crit_edge

land.lhs.true63.if.then106_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

land.lhs.true63.land.lhs.true75_crit_edge:        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true75

if.else70:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_const_cmp2(i16 8892, i16 %13)
  %cmp73 = icmp ult i16 %13, 8892
  br i1 %cmp73, label %if.else70.land.lhs.true75_crit_edge, label %if.else70.if.end131_crit_edge

if.else70.if.end131_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.else70.land.lhs.true75_crit_edge:              ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.else70.land.lhs.true75_crit_edge, %land.lhs.true63.land.lhs.true75_crit_edge
  %hci_ver76 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %hci_ver76 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hci_ver76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp79.not = icmp eq i8 %23, 0
  br i1 %cmp79.not, label %land.lhs.true75.if.end131_crit_edge, label %land.lhs.true75.if.then106_crit_edge

land.lhs.true75.if.then106_crit_edge:             ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

land.lhs.true75.if.end131_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then106:                                       ; preds = %land.lhs.true75.if.then106_crit_edge, %land.lhs.true63.if.then106_crit_edge, %land.lhs.true51.if.then106_crit_edge, %land.lhs.true39.if.then106_crit_edge, %land.lhs.true.if.then106_crit_edge, %lor.lhs.false.if.then106_crit_edge, %if.end16.if.then106_crit_edge
  %name107 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.130, ptr noundef %name107) #11
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 5, ptr noundef %quirks) #11
  tail call void @_set_bit(i32 noundef 15, ptr noundef %quirks) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %quirks) #11
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %quirks) #11
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void @pm_runtime_allow(ptr noundef %dev) #11
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %dev114 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev114, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp116 = icmp sgt i32 %call.i, -1
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 200) #11
  br label %if.end122

if.else119:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.131, ptr noundef %name107) #11
  br label %if.end122

if.end122:                                        ; preds = %if.else119, %if.then118
  %28 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev, align 4
  %dev124 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void @pm_runtime_forbid(ptr noundef %dev124) #11
  %30 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev, align 4
  %dev126 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void @device_set_wakeup_capable(ptr noundef %dev126, i1 noundef zeroext false) #11
  %32 = load i8, ptr @enable_autosuspend, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool127.not = icmp eq i8 %32, 0
  br i1 %tobool127.not, label %if.end122.if.end131_crit_edge, label %if.then128

if.end122.if.end131_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then128:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev, align 4
  tail call void @usb_enable_autosuspend(ptr noundef %34) #11
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end122.if.end131_crit_edge, %land.lhs.true75.if.end131_crit_edge, %if.else70.if.end131_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call6, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.then13, %if.then8
  %retval.0 = phi i32 [ %2, %if.then8 ], [ -5, %if.then13 ], [ 0, %if.end131 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_diag_interface(ptr noundef %hdev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %diag = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %diag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup26

if.end:                                           ; preds = %entry
  %diag_tx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %diag_tx_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %diag_tx_ep, align 4
  %diag_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %diag_rx_ep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %diag_rx_ep, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints7 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bNumEndpoints7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9.not = icmp eq i8 %9, 0
  br i1 %cmp9.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %10 = phi ptr [ %29, %cleanup.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %i.010 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %12, i32 %i.010
  %13 = ptrtoint ptr %diag_tx_ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %diag_tx_ep, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %land.lhs.true, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bmAttributes.i.i, align 1
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i.not.i = icmp eq i8 %17, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp slt i8 %19, 0
  br i1 %tobool8.not, label %usb_endpoint_is_bulk_out.exit.if.end11_crit_edge, label %usb_endpoint_is_bulk_out.exit.cleanup.sink.split_crit_edge

usb_endpoint_is_bulk_out.exit.cleanup.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

usb_endpoint_is_bulk_out.exit.if.end11_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %usb_endpoint_is_bulk_out.exit.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %20 = ptrtoint ptr %diag_rx_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %diag_rx_ep, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true14:                                  ; preds = %if.end11
  %bmAttributes.i.i1 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes.i.i1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes.i.i1, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i.not.i2 = icmp eq i8 %24, 2
  br i1 %cmp.i.not.i2, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true14
  %bEndpointAddress.i.i3 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress.i.i3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress.i.i3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool16.not = icmp sgt i8 %26, -1
  br i1 %tobool16.not, label %usb_endpoint_is_bulk_in.exit.cleanup_crit_edge, label %usb_endpoint_is_bulk_in.exit.cleanup.sink.split_crit_edge

usb_endpoint_is_bulk_in.exit.cleanup.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

usb_endpoint_is_bulk_in.exit.cleanup_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %usb_endpoint_is_bulk_in.exit.cleanup.sink.split_crit_edge, %usb_endpoint_is_bulk_out.exit.cleanup.sink.split_crit_edge
  %diag_rx_ep.sink = phi ptr [ %diag_tx_ep, %usb_endpoint_is_bulk_out.exit.cleanup.sink.split_crit_edge ], [ %diag_rx_ep, %usb_endpoint_is_bulk_in.exit.cleanup.sink.split_crit_edge ]
  %27 = ptrtoint ptr %diag_rx_ep.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %diag_rx_ep.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %usb_endpoint_is_bulk_in.exit.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %28 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %31 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %32 = ptrtoint ptr %diag_tx_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %diag_tx_ep, align 4
  %tobool21.not = icmp eq ptr %33, null
  br i1 %tobool21.not, label %for.end.if.then24_crit_edge, label %lor.lhs.false

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false:                                    ; preds = %for.end
  %34 = ptrtoint ptr %diag_rx_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %diag_rx_ep, align 4
  %tobool23.not = icmp eq ptr %35, null
  br i1 %tobool23.not, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.cleanup26_crit_edge

lor.lhs.false.cleanup26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup26

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %for.end.if.then24_crit_edge
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.132, ptr noundef %name) #11
  br label %cleanup26

cleanup26:                                        ; preds = %if.then24, %lor.lhs.false.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_isoc_interface(ptr noundef %hdev, i32 noundef %altsetting) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %isoc = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %isoc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isoc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %isoc_ifnum = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %isoc_ifnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isoc_ifnum, align 4
  %call2 = tail call i32 @usb_set_interface(ptr noundef %5, i32 noundef %7, i32 noundef %altsetting) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %sub) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %isoc_altsetting = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %isoc_altsetting to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %altsetting, ptr %isoc_altsetting, align 4
  %isoc_tx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %isoc_tx_ep, align 4
  %isoc_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %isoc_rx_ep, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints65 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %bNumEndpoints65 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bNumEndpoints65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp567.not = icmp eq i8 %14, 0
  br i1 %cmp567.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %15 = phi ptr [ %34, %for.inc.for.body_crit_edge ], [ %12, %if.end4.for.body_crit_edge ]
  %i.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %17, i32 %i.068
  %18 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %isoc_tx_ep, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %land.lhs.true, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i.not.i = icmp eq i8 %22, 1
  br i1 %cmp.i.not.i, label %usb_endpoint_is_isoc_out.exit, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

usb_endpoint_is_isoc_out.exit:                    ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool12.not = icmp slt i8 %24, 0
  br i1 %tobool12.not, label %usb_endpoint_is_isoc_out.exit.if.end15_crit_edge, label %usb_endpoint_is_isoc_out.exit.for.inc.sink.split_crit_edge

usb_endpoint_is_isoc_out.exit.for.inc.sink.split_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

usb_endpoint_is_isoc_out.exit.if.end15_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %usb_endpoint_is_isoc_out.exit.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %25 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isoc_rx_ep, align 4
  %tobool17.not = icmp eq ptr %26, null
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end15
  %bmAttributes.i.i59 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes.i.i59 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes.i.i59, align 1
  %29 = and i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i.not.i60 = icmp eq i8 %29, 1
  br i1 %cmp.i.not.i60, label %usb_endpoint_is_isoc_in.exit, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

usb_endpoint_is_isoc_in.exit:                     ; preds = %land.lhs.true18
  %bEndpointAddress.i.i61 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i61 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool20.not = icmp sgt i8 %31, -1
  br i1 %tobool20.not, label %usb_endpoint_is_isoc_in.exit.for.inc_crit_edge, label %usb_endpoint_is_isoc_in.exit.for.inc.sink.split_crit_edge

usb_endpoint_is_isoc_in.exit.for.inc.sink.split_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

usb_endpoint_is_isoc_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc.sink.split:                               ; preds = %usb_endpoint_is_isoc_in.exit.for.inc.sink.split_crit_edge, %usb_endpoint_is_isoc_out.exit.for.inc.sink.split_crit_edge
  %isoc_rx_ep.sink = phi ptr [ %isoc_tx_ep, %usb_endpoint_is_isoc_out.exit.for.inc.sink.split_crit_edge ], [ %isoc_rx_ep, %usb_endpoint_is_isoc_in.exit.for.inc.sink.split_crit_edge ]
  %32 = ptrtoint ptr %isoc_rx_ep.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %isoc_rx_ep.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %usb_endpoint_is_isoc_in.exit.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.068, 1
  %33 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %36 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %37 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %isoc_tx_ep, align 4
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %for.end.if.then28_crit_edge, label %lor.lhs.false

for.end.if.then28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false:                                    ; preds = %for.end
  %39 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isoc_rx_ep, align 4
  %tobool27.not = icmp eq ptr %40, null
  br i1 %tobool27.not, label %lor.lhs.false.if.then28_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %for.end.if.then28_crit_edge
  %name29 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.37, ptr noundef %name29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %lor.lhs.false.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then3 ], [ -19, %if.then28 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_submit_isoc_urb(ptr noundef %hdev, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_submit_isoc_urb.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_submit_isoc_urb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_submit_isoc_urb.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %isoc_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isoc_rx_ep, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 10, i32 noundef %mem_flags) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isoc_rx_ep, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wMaxPacketSize, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %mem_flags) #16
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end15

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %11 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isoc_rx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress, align 1
  %conv17 = zext i8 %14 to i32
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv17, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or19 = or i32 %or.i, 128
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterval, align 1
  %conv22 = zext i8 %18 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @btusb_isoc_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %24 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hdev, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 4
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i71 = icmp eq i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp6.i = icmp ugt i32 %26, 4
  %or.cond.i = or i1 %cmp.i71, %cmp6.i
  br i1 %or.cond.i, label %if.then.i73, label %if.end15.usb_fill_int_urb.exit_crit_edge

if.end15.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i73:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.smax.i32(i32 %conv22, i32 1) #11
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 16) #11
  %sub.i = add nsw i32 %28, -1
  %shl.i72 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i73, %if.end15.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i72, %if.then.i73 ], [ %conv22, %if.end15.usb_fill_int_urb.exit_crit_edge ]
  %29 = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 25
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %interval.sink.i, ptr %29, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 23
  %31 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %start_frame.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %32 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 258, ptr %transfer_flags, align 4
  %33 = ptrtoint ptr %isoc_rx_ep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %isoc_rx_ep, align 4
  %wMaxPacketSize24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %wMaxPacketSize24 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %wMaxPacketSize24, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv25 = zext i16 %37 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fill_isoc_descriptor.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_submit_isoc_urb, %if.then.i75)) #11
          to label %do.end.i [label %if.then.i75], !srcloc !358

if.then.i75:                                      ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fill_isoc_descriptor.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.35, i32 noundef %mul, i32 noundef %conv25) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i75, %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv25)
  %cmp3.not42.i = icmp ult i32 %mul, %conv25
  br i1 %cmp3.not42.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %len.addr.045.i = phi i32 [ %sub.i76, %for.body.i.for.body.i_crit_edge ], [ %mul, %do.end.i.for.body.i_crit_edge ]
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %offset.043.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.urb, ptr %call7, i32 0, i32 29, i32 %i.044.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %offset.043.i, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call7, i32 0, i32 29, i32 %i.044.i, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv25, ptr %length.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %add.i = add nuw nsw i32 %offset.043.i, %conv25
  %sub.i76 = sub i32 %len.addr.045.i, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.044.i)
  %cmp.i77 = icmp ugt i32 %i.044.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i76, i32 %conv25)
  %cmp3.not.i = icmp slt i32 %sub.i76, %conv25
  %or.cond.i78 = select i1 %cmp.i77, i1 true, i1 %cmp3.not.i
  br i1 %or.cond.i78, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %len.addr.0.lcssa.i = phi i32 [ %mul, %do.end.i.for.end.i_crit_edge ], [ %sub.i76, %for.body.i.for.end.i_crit_edge ]
  %cmp.lcssa.i = phi i1 [ false, %do.end.i.for.end.i_crit_edge ], [ %cmp.i77, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool7.not.i = icmp eq i32 %len.addr.0.lcssa.i, 0
  %brmerge.i = select i1 %tobool7.not.i, i1 true, i1 %cmp.lcssa.i
  br i1 %brmerge.i, label %for.end.i.__fill_isoc_descriptor.exit_crit_edge, label %if.then9.i

for.end.i.__fill_isoc_descriptor.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fill_isoc_descriptor.exit

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11.i = getelementptr %struct.urb, ptr %call7, i32 0, i32 29, i32 %i.0.lcssa.i
  %40 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %offset.0.lcssa.i, ptr %arrayidx11.i, align 4
  %length15.i = getelementptr %struct.urb, ptr %call7, i32 0, i32 29, i32 %i.0.lcssa.i, i32 1
  %41 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %len.addr.0.lcssa.i, ptr %length15.i, align 4
  %inc16.i = add nuw nsw i32 %i.0.lcssa.i, 1
  br label %__fill_isoc_descriptor.exit

__fill_isoc_descriptor.exit:                      ; preds = %if.then9.i, %for.end.i.__fill_isoc_descriptor.exit_crit_edge
  %i.1.i = phi i32 [ %inc16.i, %if.then9.i ], [ %i.0.lcssa.i, %for.end.i.__fill_isoc_descriptor.exit_crit_edge ]
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 24
  %42 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.1.i, ptr %number_of_packets.i, align 4
  %isoc_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 19
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %isoc_anchor) #11
  %call26 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef %mem_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.then28, label %__fill_isoc_descriptor.exit.cleanup.sink.split_crit_edge

__fill_isoc_descriptor.exit.cleanup.sink.split_crit_edge: ; preds = %__fill_isoc_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then28:                                        ; preds = %__fill_isoc_descriptor.exit
  %43 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call26, label %if.then33 [
    i32 -1, label %if.then28.if.end36_crit_edge
    i32 -19, label %if.then28.if.end36_crit_edge83
  ]

if.then28.if.end36_crit_edge83:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %name34 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call26
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name34, ptr noundef nonnull %call7, i32 noundef %sub) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then28.if.end36_crit_edge, %if.then28.if.end36_crit_edge83
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end36, %__fill_isoc_descriptor.exit.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end10.cleanup.sink.split_crit_edge ], [ %call26, %if.end36 ], [ %call26, %__fill_isoc_descriptor.exit.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_isoc_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_isoc_complete.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_isoc_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_isoc_complete.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.end.cleanup50_crit_edge, label %if.end7

do.end.cleanup50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end7:                                          ; preds = %do.end
  %status8 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status8, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %12, label %if.end7.if.end34_crit_edge [
    i32 0, label %for.cond.preheader
    i32 -2, label %if.end7.cleanup50_crit_edge
  ]

if.end7.cleanup50_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end7.if.end34_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

for.cond.preheader:                               ; preds = %if.end7
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %14 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1093 = icmp sgt i32 %15, 0
  br i1 %cmp1093, label %for.body.lr.ph, label %for.cond.preheader.if.end34_crit_edge

for.cond.preheader.if.end34_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %rxlock.i = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 22
  %sco_skb.i = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 25
  %stat = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199
  %name24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %cleanup.for.body_crit_edge ]
  %status17 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.094, i32 3
  %16 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end20, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.094
  %actual_length14 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.094, i32 2
  %18 = ptrtoint ptr %actual_length14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length14, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %byte_rx, align 8
  %add = add i32 %23, %19
  store i32 %add, ptr %byte_rx, align 8
  %24 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock.i) #11
  %26 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sco_skb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not90.i = icmp eq i32 %19, 0
  br i1 %tobool.not90.i, label %if.end20.btusb_recv_isoc.exit_crit_edge, label %while.body.i.preheader

if.end20.btusb_recv_isoc.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_recv_isoc.exit

while.body.i.preheader:                           ; preds = %if.end20
  %add.ptr = getelementptr i8, ptr %25, i32 %21
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.i.preheader
  %buffer.addr.093.i = phi ptr [ %add.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.i.preheader ]
  %count.addr.092.i = phi i32 [ %sub.i, %cleanup.i.while.body.i_crit_edge ], [ %19, %while.body.i.preheader ]
  %skb.091.i = phi ptr [ %skb.3.i, %cleanup.i.while.body.i_crit_edge ], [ %27, %while.body.i.preheader ]
  %tobool5.not.i = icmp eq ptr %skb.091.i, null
  br i1 %tobool5.not.i, label %if.then.i, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then.i:                                        ; preds = %while.body.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 263, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.if.then23_crit_edge, label %if.end.i

if.then.i.if.then23_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %31, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %cb.i, align 8
  %expect.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %expect.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3, ptr %expect.i, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %while.body.i.if.end11.i_crit_edge
  %skb.1.i = phi ptr [ %skb.091.i, %while.body.i.if.end11.i_crit_edge ], [ %call.i.i.i, %if.end.i ]
  %expect14.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %expect14.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %expect14.i, align 2
  %conv15.i = zext i16 %35 to i32
  %36 = tail call i32 @llvm.umin.i32(i32 %count.addr.092.i, i32 %conv15.i) #11
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %skb.1.i, i32 noundef %36) #11
  %37 = call ptr @memcpy(ptr %call.i.i, ptr %buffer.addr.093.i, i32 %36)
  %sub.i = sub i32 %count.addr.092.i, %36
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.093.i, i32 %36
  %38 = ptrtoint ptr %expect14.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %expect14.i, align 2
  %40 = trunc i32 %36 to i16
  %conv25.i = sub i16 %39, %40
  store i16 %conv25.i, ptr %expect14.i, align 2
  %len26.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 6
  %41 = ptrtoint ptr %len26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp27.i = icmp eq i32 %42, 3
  br i1 %cmp27.i, label %if.then29.i, label %if.end11.i.if.end44.i_crit_edge

if.end11.i.if.end44.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then29.i:                                      ; preds = %if.end11.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %dlen.i = getelementptr inbounds %struct.hci_sco_hdr, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dlen.i, align 1
  %conv31.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %expect14.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv31.i, ptr %expect14.i, align 2
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 7
  %48 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.then29.i.skb_tailroom.exit.i_crit_edge

if.then29.i.skb_tailroom.exit.i_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 17
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.then29.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.then29.i.skb_tailroom.exit.i_crit_edge ]
  %conv39.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv39.i)
  %cmp40.i = icmp slt i32 %cond.i.i, %conv39.i
  br i1 %cmp40.i, label %if.then42.i, label %skb_tailroom.exit.i.if.end44.i_crit_edge

skb_tailroom.exit.i.if.end44.i_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then42.i:                                      ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.1.i, i32 noundef 0) #11
  br label %if.then23

if.end44.i:                                       ; preds = %skb_tailroom.exit.i.if.end44.i_crit_edge, %if.end11.i.if.end44.i_crit_edge
  %54 = phi i16 [ %conv25.i, %if.end11.i.if.end44.i_crit_edge ], [ %conv31.i, %skb_tailroom.exit.i.if.end44.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool48.not.i = icmp eq i16 %54, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end44.i.cleanup.i_crit_edge

if.end44.i.cleanup.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %call50.i = tail call i32 @hci_recv_frame(ptr noundef %56, ptr noundef nonnull %skb.1.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then49.i, %if.end44.i.cleanup.i_crit_edge
  %skb.3.i = phi ptr [ %skb.1.i, %if.end44.i.cleanup.i_crit_edge ], [ null, %if.then49.i ]
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %cleanup.i.btusb_recv_isoc.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.btusb_recv_isoc.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_recv_isoc.exit

btusb_recv_isoc.exit:                             ; preds = %cleanup.i.btusb_recv_isoc.exit_crit_edge, %if.end20.btusb_recv_isoc.exit_crit_edge
  %skb.4.i = phi ptr [ %27, %if.end20.btusb_recv_isoc.exit_crit_edge ], [ %skb.3.i, %cleanup.i.btusb_recv_isoc.exit_crit_edge ]
  %57 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb.4.i, ptr %sco_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock.i, i32 noundef %call2.i) #11
  br label %cleanup

if.then23:                                        ; preds = %if.then42.i, %if.then.i.if.then23_crit_edge
  %58 = ptrtoint ptr %sco_skb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %sco_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock.i, i32 noundef %call2.i) #11
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name24) #11
  %59 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stat, align 8
  %inc = add i32 %60, 1
  store i32 %inc, ptr %stat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %btusb_recv_isoc.exit, %for.body.cleanup_crit_edge
  %inc29 = add nuw nsw i32 %i.094, 1
  %61 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number_of_packets, align 4
  %cmp10 = icmp slt i32 %inc29, %62
  br i1 %cmp10, label %cleanup.for.body_crit_edge, label %cleanup.if.end34_crit_edge

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %for.cond.preheader.if.end34_crit_edge, %if.end7.if.end34_crit_edge
  %flags35 = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 6
  %63 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags35, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool37.not = icmp eq i32 %65, 0
  br i1 %tobool37.not, label %if.end34.cleanup50_crit_edge, label %if.end39

if.end34.cleanup50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.end39:                                         ; preds = %if.end34
  %isoc_anchor = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 19
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %isoc_anchor) #11
  %call40 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end39.cleanup50_crit_edge

if.end39.cleanup50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup50

if.then42:                                        ; preds = %if.end39
  %66 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call40, label %if.then45 [
    i32 -1, label %if.then42.if.end48_crit_edge
    i32 -19, label %if.then42.if.end48_crit_edge101
  ]

if.then42.if.end48_crit_edge101:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %name46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call40
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name46, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then42.if.end48_crit_edge, %if.then42.if.end48_crit_edge101
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %cleanup50

cleanup50:                                        ; preds = %if.end48, %if.end39.cleanup50_crit_edge, %if.end34.cleanup50_crit_edge, %if.end7.cleanup50_crit_edge, %do.end.cleanup50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btintel_bootup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btintel_secure_send_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_recv_intr(ptr noundef %data, ptr nocapture noundef readonly %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rxlock = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxlock) #11
  %evt_skb = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evt_skb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not92 = icmp eq i32 %count, 0
  br i1 %tobool.not92, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %intr_interval.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 8
  %rx_work.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 11
  %recv_event.i = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 41
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.095 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %count.addr.094 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %skb.093 = phi ptr [ %1, %while.body.lr.ph ], [ %skb.3, %cleanup.while.body_crit_edge ]
  %tobool5.not = icmp eq ptr %skb.093, null
  br i1 %tobool5.not, label %if.then, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %while.body
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 268, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.while.end_crit_edge, label %if.end

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %cb, align 8
  %expect = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %expect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %expect, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end, %while.body.if.end11_crit_edge
  %skb.1 = phi ptr [ %skb.093, %while.body.if.end11_crit_edge ], [ %call.i.i, %if.end ]
  %expect14 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %expect14, align 2
  %conv15 = zext i16 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %count.addr.094, i32 %conv15)
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %skb.1, i32 noundef %10) #11
  %11 = call ptr @memcpy(ptr %call.i, ptr %buffer.addr.095, i32 %10)
  %sub = sub i32 %count.addr.094, %10
  %add.ptr = getelementptr i8, ptr %buffer.addr.095, i32 %10
  %12 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %expect14, align 2
  %14 = trunc i32 %10 to i16
  %conv25 = sub i16 %13, %14
  store i16 %conv25, ptr %expect14, align 2
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %15 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp27 = icmp eq i32 %16, 2
  br i1 %cmp27, label %if.then29, label %if.end11.if.end44_crit_edge

if.end11.if.end44_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then29:                                        ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %plen = getelementptr inbounds %struct.hci_event_hdr, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %plen, align 1
  %conv31 = zext i8 %20 to i16
  %21 = ptrtoint ptr %expect14 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv31, ptr %expect14, align 2
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then29.skb_tailroom.exit_crit_edge

if.then29.skb_tailroom.exit_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then29.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then29.skb_tailroom.exit_crit_edge ]
  %conv39 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv39)
  %cmp40 = icmp slt i32 %cond.i, %conv39
  br i1 %cmp40, label %if.then42, label %if.end44thread-pre-split

if.then42:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.1, i32 noundef 0) #11
  br label %while.end

if.end44thread-pre-split:                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %expect14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %.pr = load i16, ptr %expect14, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.end11.if.end44_crit_edge
  %29 = phi i16 [ %.pr, %if.end44thread-pre-split ], [ %conv25, %if.end11.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool48.not = icmp eq i16 %29, 0
  br i1 %tobool48.not, label %if.then49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end44
  %30 = ptrtoint ptr %intr_interval.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %intr_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i84 = icmp eq i32 %31, 0
  br i1 %tobool.not.i84, label %if.then49.btusb_recv_event.exit_crit_edge, label %if.then.i85

if.then49.btusb_recv_event.exit_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_recv_event.exit

if.then.i85:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %rx_work.i, i32 noundef 0) #11
  br label %btusb_recv_event.exit

btusb_recv_event.exit:                            ; preds = %if.then.i85, %if.then49.btusb_recv_event.exit_crit_edge
  %33 = ptrtoint ptr %recv_event.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recv_event.i, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call1.i = tail call i32 %34(ptr noundef %36, ptr noundef nonnull %skb.1) #11
  br label %cleanup

cleanup:                                          ; preds = %btusb_recv_event.exit, %if.end44.cleanup_crit_edge
  %skb.3 = phi ptr [ %skb.1, %if.end44.cleanup_crit_edge ], [ null, %btusb_recv_event.exit ]
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then42, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %skb.4 = phi ptr [ null, %if.then42 ], [ %1, %entry.while.end_crit_edge ], [ %skb.3, %cleanup.while.end_crit_edge ], [ null, %if.then.while.end_crit_edge ]
  %err.2 = phi i32 [ -84, %if.then42 ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ], [ -12, %if.then.while.end_crit_edge ]
  %37 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %skb.4, ptr %evt_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxlock, i32 noundef %call2) #11
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_submit_intr_urb(ptr noundef %hdev, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_submit_intr_urb.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_submit_intr_urb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_submit_intr_urb.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %intr_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %intr_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_ep, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %mem_flags) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %intr_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_ep, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wMaxPacketSize, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef %mem_flags) #16
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end15

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %11 = ptrtoint ptr %intr_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intr_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress, align 1
  %conv17 = zext i8 %14 to i32
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv17, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or19 = or i32 %or.i, 1073741952
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterval, align 1
  %conv22 = zext i8 %18 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @btusb_intr_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %24 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hdev, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 4
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i98 = icmp eq i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp6.i = icmp ugt i32 %26, 4
  %or.cond.i = or i1 %cmp.i98, %cmp6.i
  br i1 %or.cond.i, label %if.then.i100, label %if.end15.usb_fill_int_urb.exit_crit_edge

if.end15.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i100:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.smax.i32(i32 %conv22, i32 1) #11
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 16) #11
  %sub.i = add nsw i32 %28, -1
  %shl.i99 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i100, %if.end15.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i99, %if.then.i100 ], [ %conv22, %if.end15.usb_fill_int_urb.exit_crit_edge ]
  %29 = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 25
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %interval.sink.i, ptr %29, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 23
  %31 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %start_frame.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %32 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_flags, align 4
  %or23 = or i32 %33, 256
  store i32 %or23, ptr %transfer_flags, align 4
  %intr_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 17
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %intr_anchor) #11
  %call24 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef %mem_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then26, label %usb_fill_int_urb.exit.if.end40_crit_edge

usb_fill_int_urb.exit.if.end40_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then26:                                        ; preds = %usb_fill_int_urb.exit
  %34 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call24, label %if.then31 [
    i32 -1, label %if.then26.if.end39_crit_edge
    i32 -19, label %if.then26.if.then37_crit_edge
  ]

if.then26.if.then37_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then26.if.end39_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %name32 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call24
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name32, ptr noundef nonnull %call7, i32 noundef %sub) #11
  br label %if.then37

if.then37:                                        ; preds = %if.then31, %if.then26.if.then37_crit_edge
  %sub38.pre-phi = phi i32 [ %sub, %if.then31 ], [ 19, %if.then26.if.then37_crit_edge ]
  tail call void @hci_cmd_sync_cancel(ptr noundef %hdev, i32 noundef %sub38.pre-phi) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then26.if.end39_crit_edge
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #11
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %usb_fill_int_urb.exit.if.end40_crit_edge
  %poll_sync = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %poll_sync to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %poll_sync, align 4, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not = icmp eq i8 %36, 0
  br i1 %tobool41.not, label %if.end40.cleanup.sink.split_crit_edge, label %if.end43

if.end40.cleanup.sink.split_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.end40
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed, align 4
  %.off = add i32 %40, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %29, align 4
  br i1 %switch, label %if.else.i, label %if.else.i96

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %42, 125
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #11
  br label %done.sink.split

if.else.i96:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %42) #11
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else.i96, %if.else.i
  %retval.0.i90.sink = phi i32 [ %call3.i, %if.else.i ], [ %call2.i, %if.else.i96 ]
  %intr_interval = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %intr_interval to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i90.sink, ptr %intr_interval, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %done.sink.split, %if.end40.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end10.cleanup.sink.split_crit_edge ], [ %call24, %done.sink.split ], [ %call24, %if.end40.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_submit_bulk_urb(ptr noundef %hdev, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_submit_bulk_urb.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_submit_bulk_urb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_submit_bulk_urb.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bulk_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_rx_ep, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %mem_flags) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %if.end10.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !361

if.end10.kmalloc.exit_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %if.end10
  %and2.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %if.end10.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %if.end10.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 11
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %mem_flags, i32 noundef 1028) #14
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %kmalloc.exit.cleanup.sink.split_crit_edge, label %if.end14

kmalloc.exit.cleanup.sink.split_crit_edge:        ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end14:                                         ; preds = %kmalloc.exit
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulk_rx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or17 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or17, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1028, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @btusb_bulk_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hdev, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %20 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_flags, align 4
  %or19 = or i32 %21, 256
  store i32 %or19, ptr %transfer_flags, align 4
  %22 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %bulk_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 18
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %bulk_anchor) #11
  %call21 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef %mem_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then23:                                        ; preds = %if.end14
  %24 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call21, label %if.then28 [
    i32 -1, label %if.then23.if.end31_crit_edge
    i32 -19, label %if.then23.if.end31_crit_edge63
  ]

if.then23.if.end31_crit_edge63:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %name29 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call21
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name29, ptr noundef nonnull %call7, i32 noundef %sub) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then23.if.end31_crit_edge, %if.then23.if.end31_crit_edge63
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %if.end14.cleanup.sink.split_crit_edge, %kmalloc.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %kmalloc.exit.cleanup.sink.split_crit_edge ], [ %call21, %if.end31 ], [ %call21, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_submit_diag_urb(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_submit_diag_urb.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_submit_diag_urb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_submit_diag_urb.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %diag_rx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %diag_rx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_rx_ep, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1028) #14
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end14

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end10
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %diag_rx_ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %diag_rx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or17 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %14 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or17, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1028, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @btusb_diag_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hdev, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %19 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_flags, align 4
  %or19 = or i32 %20, 256
  store i32 %or19, ptr %transfer_flags, align 4
  %21 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %diag_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 20
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %diag_anchor) #11
  %call21 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then23:                                        ; preds = %if.end14
  %23 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call21, label %if.then28 [
    i32 -1, label %if.then23.if.end31_crit_edge
    i32 -19, label %if.then23.if.end31_crit_edge2
  ]

if.then23.if.end31_crit_edge2:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %name29 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call21
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name29, ptr noundef nonnull %call7, i32 noundef %sub) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then23.if.end31_crit_edge, %if.then23.if.end31_crit_edge2
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %if.end14.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end10.cleanup.sink.split_crit_edge ], [ %call21, %if.end31 ], [ %call21, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_intr_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_intr_complete.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_intr_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_intr_complete.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %status8 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status8, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %12, label %if.end7.if.end23_crit_edge [
    i32 0, label %if.then9
    i32 -2, label %if.end7.cleanup_crit_edge
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then9:                                         ; preds = %if.end7
  %actual_length10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %14 = ptrtoint ptr %actual_length10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length10, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %16 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_rx, align 8
  %add = add i32 %17, %15
  store i32 %add, ptr %byte_rx, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %20 = load i32, ptr %actual_length10, align 4
  %call12 = tail call fastcc i32 @btusb_recv_intr(ptr noundef %3, ptr noundef %19, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.then9.if.end23_crit_edge

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %stat = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199
  %name15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.45, ptr noundef %name15) #11
  %21 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stat, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %stat, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.then9.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %flags24 = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags24, align 4
  %and1.i72 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i72)
  %tobool26.not = icmp eq i32 %and1.i72, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %udev = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %intr_anchor = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 17
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %intr_anchor) #11
  %call29 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %28 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call29, label %if.then34 [
    i32 -1, label %if.then31.if.end41_crit_edge
    i32 -19, label %if.then31.if.then39_crit_edge
  ]

if.then31.if.then39_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %name35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call29
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name35, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.then39

if.then39:                                        ; preds = %if.then34, %if.then31.if.then39_crit_edge
  %sub40.pre-phi = phi i32 [ %sub, %if.then34 ], [ 19, %if.then31.if.then39_crit_edge ]
  tail call void @hci_cmd_sync_cancel(ptr noundef %1, i32 noundef %sub40.pre-phi) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then31.if.end41_crit_edge
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_cmd_sync_cancel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_bulk_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_bulk_complete.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_bulk_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_bulk_complete.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %status8 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status8, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %12, label %if.end7.if.end23_crit_edge [
    i32 0, label %if.then9
    i32 -2, label %if.end7.cleanup_crit_edge
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then9:                                         ; preds = %if.end7
  %actual_length10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %14 = ptrtoint ptr %actual_length10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length10, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %16 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_rx, align 8
  %add = add i32 %17, %15
  store i32 %add, ptr %byte_rx, align 8
  %recv_bulk = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 43
  %18 = ptrtoint ptr %recv_bulk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv_bulk, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = load i32, ptr %actual_length10, align 4
  %call12 = tail call i32 %19(ptr noundef %3, ptr noundef %21, i32 noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.then9.if.end23_crit_edge

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %stat = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199
  %name15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.48, ptr noundef %name15) #11
  %23 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %stat, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.then9.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %flags24 = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags24, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %bulk_anchor = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 18
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %bulk_anchor) #11
  %udev = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call29 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %31 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call29, label %if.then34 [
    i32 -1, label %if.then31.if.end37_crit_edge
    i32 -19, label %if.then31.if.end37_crit_edge69
  ]

if.then31.if.end37_crit_edge69:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %name35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call29
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name35, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then31.if.end37_crit_edge, %if.then31.if.end37_crit_edge69
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_diag_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_diag_complete.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_diag_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_diag_complete.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status4, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %9, label %do.end.if.end18_crit_edge [
    i32 0, label %if.then5
    i32 -2, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then5:                                         ; preds = %do.end
  %actual_length6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length6, align 4
  %add.i = add i32 %12, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5.if.end18_crit_edge, label %if.then9

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %19 = ptrtoint ptr %actual_length6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length6, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %20) #11
  %21 = call ptr @memcpy(ptr %call.i, ptr %18, i32 %20)
  %call12 = tail call i32 @hci_recv_diag(ptr noundef %1, ptr noundef nonnull %call.i.i) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.then5.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %flags = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not = icmp eq i32 %24, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %diag_anchor = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 20
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %diag_anchor) #11
  %udev = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 4
  %call.i.i57 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i.i57, ptr %last_busy.i.i, align 8
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  %28 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call23, label %if.then28 [
    i32 -1, label %if.then25.if.end31_crit_edge
    i32 -19, label %if.then25.if.end31_crit_edge59
  ]

if.then25.if.end31_crit_edge59:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %name29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call23
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name29, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25.if.end31_crit_edge, %if.then25.if.end31_crit_edge59
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_or_queue_tx_urb(ptr noundef %hdev, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %txlock = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txlock) #11
  %flags6 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags6, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end13.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_in_flight = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_in_flight, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %tx_in_flight, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock, i32 noundef %call3) #11
  %call12 = tail call fastcc i32 @submit_tx_urb(ptr noundef %hdev, ptr noundef %urb)
  br label %cleanup

if.end13.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock, i32 noundef %call3) #11
  %deferred = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 13
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %deferred) #11
  %waker = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %waker) #11
  tail call void @usb_free_urb(ptr noundef %urb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13.critedge, %if.then
  %retval.0 = phi i32 [ 0, %if.end13.critedge ], [ %call12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_isoc_urb(ptr noundef %hdev, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %isoc_tx_ep = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isoc_tx_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 10, i32 noundef 3264) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isoc_tx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i = shl i32 %11, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl.i, %shl1.i
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data10, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterval, align 1
  %conv12 = zext i8 %17 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %19 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %13, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @btusb_isoc_tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i = icmp eq i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp6.i = icmp ugt i32 %25, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end6.usb_fill_int_urb.exit_crit_edge

if.end6.usb_fill_int_urb.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.smax.i32(i32 %conv12, i32 1) #11
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 16) #11
  %sub.i = add nsw i32 %27, -1
  %shl.i44 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end6.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i44, %if.then.i ], [ %conv12, %if.end6.usb_fill_int_urb.exit_crit_edge ]
  %28 = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 25
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %interval.sink.i, ptr %28, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 23
  %30 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %start_frame.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %transfer_flags, align 4
  %isoc_altsetting = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 39
  %32 = ptrtoint ptr %isoc_altsetting to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %isoc_altsetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp = icmp eq i32 %33, 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %isoc_tx_ep to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %isoc_tx_ep, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wMaxPacketSize, align 1
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %usb_fill_int_urb.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fill_isoc_descriptor_msbc.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_isoc_urb, %if.then.i45)) #11
          to label %do.end.i [label %if.then.i45], !srcloc !358

if.then.i45:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv17 = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fill_isoc_descriptor_msbc.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.35, i32 noundef %35, i32 noundef %conv17) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i45, %if.then14
  %usb_alt6_packet_flow.i = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 38
  %41 = ptrtoint ptr %usb_alt6_packet_flow.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %usb_alt6_packet_flow.i, align 4, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool3.not.i = icmp eq i8 %42, 0
  %43 = xor i8 %42, 1
  %.40.i = select i1 %tobool3.not.i, i32 6, i32 7
  %44 = ptrtoint ptr %usb_alt6_packet_flow.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %usb_alt6_packet_flow.i, align 4
  %arrayidx.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 0
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 0, i32 1
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %length.i, align 4
  %arrayidx.i.1 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 1
  %47 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx.i.1, align 4
  %length.i.1 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 1, i32 1
  %48 = ptrtoint ptr %length.i.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %length.i.1, align 4
  %arrayidx.i.2 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 2
  %49 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx.i.2, align 4
  %length.i.2 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 2, i32 1
  %50 = ptrtoint ptr %length.i.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %length.i.2, align 4
  %arrayidx.i.3 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 3
  %51 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx.i.3, align 4
  %length.i.3 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 3, i32 1
  %52 = ptrtoint ptr %length.i.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %length.i.3, align 4
  %arrayidx.i.4 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 4
  %53 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx.i.4, align 4
  %length.i.4 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 4, i32 1
  %54 = ptrtoint ptr %length.i.4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %length.i.4, align 4
  %arrayidx.i.5 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 5
  %55 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx.i.5, align 4
  %length.i.5 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 5, i32 1
  %56 = ptrtoint ptr %length.i.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %length.i.5, align 4
  br i1 %tobool3.not.i, label %do.end.i.for.end.i_crit_edge, label %for.body.i.6

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.6:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.6 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 6
  %57 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx.i.6, align 4
  %length.i.6 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 6, i32 1
  %58 = ptrtoint ptr %length.i.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %length.i.6, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.6, %do.end.i.for.end.i_crit_edge
  %i.042.i.lcssa = phi i32 [ 7, %do.end.i.for.end.i_crit_edge ], [ 8, %for.body.i.6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.not.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.not.i, label %for.end.i.if.end22_crit_edge, label %if.then13.i

for.end.i.if.end22_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %.40.i
  %59 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx15.i, align 4
  %length19.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %.40.i, i32 1
  %60 = ptrtoint ptr %length19.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %35, ptr %length19.i, align 4
  br label %if.end22

if.else:                                          ; preds = %usb_fill_int_urb.exit
  %61 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv21 = zext i16 %61 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fill_isoc_descriptor.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_isoc_urb, %if.then.i46)) #11
          to label %do.end.i47 [label %if.then.i46], !srcloc !358

if.then.i46:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fill_isoc_descriptor.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.35, i32 noundef %35, i32 noundef %conv21) #11
  br label %do.end.i47

do.end.i47:                                       ; preds = %if.then.i46, %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv21)
  %cmp3.not42.i = icmp slt i32 %35, %conv21
  br i1 %cmp3.not42.i, label %do.end.i47.for.end.i55_crit_edge, label %do.end.i47.for.body.i54_crit_edge

do.end.i47.for.body.i54_crit_edge:                ; preds = %do.end.i47
  br label %for.body.i54

do.end.i47.for.end.i55_crit_edge:                 ; preds = %do.end.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i55

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %do.end.i47.for.body.i54_crit_edge
  %len.addr.045.i = phi i32 [ %sub.i51, %for.body.i54.for.body.i54_crit_edge ], [ %35, %do.end.i47.for.body.i54_crit_edge ]
  %i.044.i = phi i32 [ %inc.i50, %for.body.i54.for.body.i54_crit_edge ], [ 0, %do.end.i47.for.body.i54_crit_edge ]
  %offset.043.i = phi i32 [ %add.i, %for.body.i54.for.body.i54_crit_edge ], [ 0, %do.end.i47.for.body.i54_crit_edge ]
  %arrayidx.i48 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %i.044.i
  %62 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %offset.043.i, ptr %arrayidx.i48, align 4
  %length.i49 = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %i.044.i, i32 1
  %63 = ptrtoint ptr %length.i49 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv21, ptr %length.i49, align 4
  %inc.i50 = add nuw nsw i32 %i.044.i, 1
  %add.i = add nuw nsw i32 %offset.043.i, %conv21
  %sub.i51 = sub i32 %len.addr.045.i, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.044.i)
  %cmp.i52 = icmp ugt i32 %i.044.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i51, i32 %conv21)
  %cmp3.not.i = icmp slt i32 %sub.i51, %conv21
  %or.cond.i53 = select i1 %cmp.i52, i1 true, i1 %cmp3.not.i
  br i1 %or.cond.i53, label %for.body.i54.for.end.i55_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i54

for.body.i54.for.end.i55_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i55

for.end.i55:                                      ; preds = %for.body.i54.for.end.i55_crit_edge, %do.end.i47.for.end.i55_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %do.end.i47.for.end.i55_crit_edge ], [ %add.i, %for.body.i54.for.end.i55_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %do.end.i47.for.end.i55_crit_edge ], [ %inc.i50, %for.body.i54.for.end.i55_crit_edge ]
  %len.addr.0.lcssa.i = phi i32 [ %35, %do.end.i47.for.end.i55_crit_edge ], [ %sub.i51, %for.body.i54.for.end.i55_crit_edge ]
  %cmp.lcssa.i = phi i1 [ false, %do.end.i47.for.end.i55_crit_edge ], [ %cmp.i52, %for.body.i54.for.end.i55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool7.not.i = icmp eq i32 %len.addr.0.lcssa.i, 0
  %brmerge.i = select i1 %tobool7.not.i, i1 true, i1 %cmp.lcssa.i
  br i1 %brmerge.i, label %for.end.i55.if.end22_crit_edge, label %if.then9.i

for.end.i55.if.end22_crit_edge:                   ; preds = %for.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then9.i:                                       ; preds = %for.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %i.0.lcssa.i
  %64 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %offset.0.lcssa.i, ptr %arrayidx11.i, align 4
  %length15.i = getelementptr %struct.urb, ptr %call2, i32 0, i32 29, i32 %i.0.lcssa.i, i32 1
  %65 = ptrtoint ptr %length15.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %len.addr.0.lcssa.i, ptr %length15.i, align 4
  %inc16.i = add nuw nsw i32 %i.0.lcssa.i, 1
  br label %if.end22

if.end22:                                         ; preds = %if.then9.i, %for.end.i55.if.end22_crit_edge, %if.then13.i, %for.end.i.if.end22_crit_edge
  %i.1.i56.sink = phi i32 [ %i.042.i.lcssa, %if.then13.i ], [ %.40.i, %for.end.i.if.end22_crit_edge ], [ %inc16.i, %if.then9.i ], [ %i.0.lcssa.i, %for.end.i55.if.end22_crit_edge ]
  %number_of_packets.i57 = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 24
  %66 = ptrtoint ptr %number_of_packets.i57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %i.1.i56.sink, ptr %number_of_packets.i57, align 4
  %67 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %hdev, ptr %67, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end22 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_tx_urb(ptr noundef %hdev, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_anchor = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 14
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %tx_anchor) #11
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call1, label %if.then4 [
    i32 -1, label %if.then.if.end_crit_edge
    i32 -19, label %if.then.if.end_crit_edge17
  ]

if.then.if.end_crit_edge17:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge17
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %3 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %4) #11
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %udev = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  tail call void @usb_free_urb(ptr noundef %urb) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_tx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_tx_complete.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_tx_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_tx_complete.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %8, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags4 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags4, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %do.end.do.body20_crit_edge, label %if.end8

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

if.end8:                                          ; preds = %do.end
  %status9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %14 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_buffer_length, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 9
  br label %do.body20.sink.split

if.else:                                          ; preds = %if.end8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp = icmp eq i8 %19, 1
  br i1 %cmp, label %if.then14, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 0, %15
  tail call void @hci_cmd_sync_cancel(ptr noundef %4, i32 noundef %sub) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.else.if.end16_crit_edge
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 1
  br label %do.body20.sink.split

do.body20.sink.split:                             ; preds = %if.end16, %if.then11
  %byte_tx.sink49 = phi ptr [ %byte_tx, %if.then11 ], [ %err_tx, %if.end16 ]
  %.sink48 = phi i32 [ %17, %if.then11 ], [ 1, %if.end16 ]
  %20 = ptrtoint ptr %byte_tx.sink49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %byte_tx.sink49, align 4
  %add = add i32 %21, %.sink48
  store i32 %add, ptr %byte_tx.sink49, align 4
  br label %do.body20

do.body20:                                        ; preds = %do.body20.sink.split, %do.end.do.body20_crit_edge
  %txlock = getelementptr inbounds %struct.btusb_data, ptr %6, i32 0, i32 16
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txlock) #11
  %tx_in_flight = getelementptr inbounds %struct.btusb_data, ptr %6, i32 0, i32 15
  %22 = ptrtoint ptr %tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_in_flight, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %tx_in_flight, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock, i32 noundef %call25) #11
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %25) #11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_isoc_tx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_isoc_tx_complete.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_isoc_tx_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_isoc_tx_complete.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef %urb, i32 noundef %6, i32 noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %do.end.done_crit_edge, label %if.end6

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end6:                                          ; preds = %do.end
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_buffer_length, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 9
  br label %done.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 1
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else, %if.then9
  %byte_tx.sink24 = phi ptr [ %byte_tx, %if.then9 ], [ %err_tx, %if.else ]
  %.sink23 = phi i32 [ %15, %if.then9 ], [ 1, %if.else ]
  %16 = ptrtoint ptr %byte_tx.sink24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_tx.sink24, align 4
  %add = add i32 %17, %.sink23
  store i32 %add, ptr %byte_tx.sink24, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %do.end.done_crit_edge
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %18 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %19) #11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_oob_wake_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.btusb_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #11
  tail call void @pm_system_wakeup() #11
  %flags = getelementptr inbounds %struct.btusb_data, ptr %priv, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_setup_firmware_79xx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btusb_mtk_hci_wmt_sync(ptr noundef %hdev, ptr nocapture noundef readonly %wmt_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end4

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %data13 = getelementptr inbounds %struct.btmtk_hci_wmt_cmd, ptr %call9.i.i, i32 0, i32 1
  %data14 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 3
  %15 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data14, align 4
  %conv16 = zext i16 %9 to i32
  %17 = call ptr @memcpy(ptr %data13, ptr %16, i32 %conv16)
  %flags = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #11
  %call17 = tail call i32 @__hci_cmd_send(ptr noundef %hdev, i16 noundef zeroext -913, i32 noundef %add, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #11
  br label %err_free_wc

if.end22:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end22.err_free_wc_crit_edge, label %if.end.i

if.end22.err_free_wc_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_wc

if.end.i:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i162 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 8) #14
  %tobool3.not.i = icmp eq ptr %call7.i.i162, null
  br i1 %tobool3.not.i, label %if.end.i.btusb_mtk_submit_wmt_recv_urb.exit.thread168_crit_edge, label %if.end5.i

if.end.i.btusb_mtk_submit_wmt_recv_urb.exit.thread168_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %btusb_mtk_submit_wmt_recv_urb.exit.thread168

if.end5.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %call7.i.i162 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -64, ptr %call7.i.i162, align 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i162, i32 0, i32 1
  %22 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bRequest.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i162, i32 0, i32 3
  %23 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %wIndex.i, align 4
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i162, i32 0, i32 2
  %24 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12288, ptr %wValue.i, align 2
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i162, i32 0, i32 4
  %25 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 16384, ptr %wLength.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i57.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 64) #14
  %tobool7.not.i = icmp eq ptr %call7.i57.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i162) #11
  br label %btusb_mtk_submit_wmt_recv_urb.exit.thread168

if.end9.i:                                        ; preds = %if.end5.i
  %udev.i = getelementptr inbounds %struct.btusb_data, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i = shl i32 %30, 8
  %or11.i = or i32 %shl.i.i, -2147483520
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or11.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 21
  %33 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i162, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i57.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @btusb_mtk_wmt_recv, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %37 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hdev, ptr %context5.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 13
  %38 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_flags.i, align 4
  %or13.i = or i32 %39, 256
  store i32 %or13.i, ptr %transfer_flags.i, align 4
  %ctrl_anchor.i = getelementptr inbounds %struct.btusb_data, ptr %19, i32 0, i32 21
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1.i, ptr noundef %ctrl_anchor.i) #11
  %call14.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i = icmp slt i32 %call14.i, 0
  br i1 %cmp.i, label %if.then16.i, label %if.end27

if.then16.i:                                      ; preds = %if.end9.i
  %40 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call14.i, label %if.then21.i [
    i32 -1, label %if.then16.i.if.end22.i_crit_edge
    i32 -19, label %if.then16.i.if.end22.i_crit_edge172
  ]

if.then16.i.if.end22.i_crit_edge172:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub.i = sub i32 0, %call14.i
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %name.i, ptr noundef nonnull %call1.i, i32 noundef %sub.i) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.then16.i.if.end22.i_crit_edge, %if.then16.i.if.end22.i_crit_edge172
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call1.i) #11
  br label %btusb_mtk_submit_wmt_recv_urb.exit.thread168

btusb_mtk_submit_wmt_recv_urb.exit.thread168:     ; preds = %if.end22.i, %if.then8.i, %if.end.i.btusb_mtk_submit_wmt_recv_urb.exit.thread168_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %call14.i, %if.end22.i ], [ -12, %if.end.i.btusb_mtk_submit_wmt_recv_urb.exit.thread168_crit_edge ], [ -12, %if.then8.i ]
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #11
  br label %err_free_wc

if.end27:                                         ; preds = %if.end9.i
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 125) #11
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i163 = icmp eq i32 %43, 0
  br i1 %tobool.not.i163, label %if.end27.if.end42_crit_edge, label %wait_on_bit_timeout.exit

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

wait_on_bit_timeout.exit:                         ; preds = %if.end27
  %call3.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags, i32 noundef 13, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 1000) #11
  %44 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call3.i, label %if.then38 [
    i32 -4, label %if.then33
    i32 0, label %wait_on_bit_timeout.exit.if.end42_crit_edge
  ]

wait_on_bit_timeout.exit.if.end42_crit_edge:      ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then33:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.90, ptr noundef %name) #11
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #11
  br label %err_free_wc

if.then38:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name39 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.91, ptr noundef %name39) #11
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #11
  br label %err_free_wc

if.end42:                                         ; preds = %wait_on_bit_timeout.exit.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %evt_skb = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %evt_skb, align 4
  %data43 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data43, align 4
  %op44 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %48, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %op44 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %op44, align 1
  %51 = ptrtoint ptr %op6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %op6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp48.not = icmp eq i8 %50, %52
  br i1 %cmp48.not, label %if.end58, label %if.then50

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %conv45 = zext i8 %50 to i32
  %conv47 = zext i8 %52 to i32
  %name51 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.92, ptr noundef %name51, i32 noundef %conv45, i32 noundef %conv47) #11
  br label %err_free_skb

if.end58:                                         ; preds = %if.end42
  %53 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %50, label %if.end58.sw.epilog_crit_edge [
    i8 23, label %sw.bb
    i8 6, label %sw.bb69
    i8 1, label %sw.bb84
  ]

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %flag63 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %48, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %flag63 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flag63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp65 = icmp eq i8 %55, 2
  %. = select i1 %cmp65, i32 1, i32 3
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %status70 = getelementptr inbounds %struct.btmtk_hci_wmt_evt_funcc, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %status70 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %status70, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1056, i16 %57)
  %switch.selectcmp = icmp eq i16 %57, 1056
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %57)
  %switch.selectcmp156 = icmp eq i16 %57, 1028
  %switch.select157 = select i1 %switch.selectcmp156, i32 5, i32 %switch.select
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %flag86 = getelementptr inbounds %struct.btmtk_hci_wmt_evt, ptr %48, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %flag86 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flag86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %switch.selectcmp158 = icmp eq i8 %59, 1
  %switch.select159 = select i1 %switch.selectcmp158, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %switch.selectcmp160 = icmp eq i8 %59, 2
  %switch.select161 = select i1 %switch.selectcmp160, i32 3, i32 %switch.select159
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb84, %sw.bb69, %sw.bb, %if.end58.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %if.end58.sw.epilog_crit_edge ], [ %., %sw.bb ], [ %switch.select157, %sw.bb69 ], [ %switch.select161, %sw.bb84 ]
  %status101 = getelementptr inbounds %struct.btmtk_hci_wmt_params, ptr %wmt_params, i32 0, i32 4
  %60 = ptrtoint ptr %status101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %status101, align 4
  %tobool102.not = icmp eq ptr %61, null
  br i1 %tobool102.not, label %sw.epilog.err_free_skb_crit_edge, label %if.then103

sw.epilog.err_free_skb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_skb

if.then103:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %status.0, ptr %61, align 4
  br label %err_free_skb

err_free_skb:                                     ; preds = %if.then103, %sw.epilog.err_free_skb_crit_edge, %if.then50
  %err.0 = phi i32 [ -5, %if.then50 ], [ 0, %if.then103 ], [ 0, %sw.epilog.err_free_skb_crit_edge ]
  %63 = ptrtoint ptr %evt_skb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %evt_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %64, i32 noundef 0) #11
  %65 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %evt_skb, align 4
  br label %err_free_wc

err_free_wc:                                      ; preds = %err_free_skb, %if.then38, %if.then33, %btusb_mtk_submit_wmt_recv_urb.exit.thread168, %if.end22.err_free_wc_crit_edge, %if.then20
  %err.1 = phi i32 [ %call17, %if.then20 ], [ -4, %if.then33 ], [ -110, %if.then38 ], [ %err.0, %err_free_skb ], [ %retval.0.ph.i.ph, %btusb_mtk_submit_wmt_recv_urb.exit.thread168 ], [ -12, %if.end22.err_free_wc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_wc, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_free_wc ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btmtk_setup_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hci_cmd_send(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btusb_mtk_wmt_recv(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %5, label %entry.if.end40_crit_edge [
    i32 0, label %land.lhs.true
    i32 -2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not = icmp eq i32 %8, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end40_crit_edge, label %if.then

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then:                                          ; preds = %land.lhs.true
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199, i32 8
  %9 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_rx, align 8
  %add = add i32 %10, %8
  store i32 %add, ptr %byte_rx, align 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 72, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %stat = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %stat, align 8
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %13 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %14) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %cb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %23) #11
  %24 = call ptr @memcpy(ptr %call.i, ptr %21, i32 %23)
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 1
  %flags = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %if.end.if.end18_crit_edge, label %if.then11

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then11:                                        ; preds = %if.end
  %call12 = tail call ptr @skb_clone(ptr noundef nonnull %call.i.i, i32 noundef 2592) #11
  %evt_skb = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 23
  %31 = ptrtoint ptr %evt_skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call12, ptr %evt_skb, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  %setup_packet16 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %32 = ptrtoint ptr %setup_packet16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %setup_packet16, align 4
  tail call void @kfree(ptr noundef %33) #11
  br label %cleanup

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call i32 @hci_recv_frame(ptr noundef %1, ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %evt_skb22 = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 23
  %34 = ptrtoint ptr %evt_skb22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %evt_skb22, align 4
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #11
  %36 = ptrtoint ptr %evt_skb22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %evt_skb22, align 4
  %setup_packet24 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %37 = ptrtoint ptr %setup_packet24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %setup_packet24, align 4
  tail call void @kfree(ptr noundef %38) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %do.end

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 13) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end25.if.end34_crit_edge
  %setup_packet35 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %39 = ptrtoint ptr %setup_packet35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setup_packet35, align 4
  tail call void @kfree(ptr noundef %40) #11
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %entry.if.end40_crit_edge
  %udev = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev, align 4
  %call.i.i93 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15, i32 12, i32 22
  %43 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store volatile i64 %call.i.i93, ptr %last_busy.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 107374000) #11
  %ctrl_anchor = getelementptr inbounds %struct.btusb_data, ptr %3, i32 0, i32 21
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %ctrl_anchor) #11
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  %setup_packet44 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %45 = ptrtoint ptr %setup_packet44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %setup_packet44, align 4
  tail call void @kfree(ptr noundef %46) #11
  %47 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call41, label %if.then48 [
    i32 -1, label %if.then43.if.end50_crit_edge
    i32 -19, label %if.then43.if.end50_crit_edge95
  ]

if.then43.if.end50_crit_edge95:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call41
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef %urb, i32 noundef %sub) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then43.if.end50_crit_edge, %if.then43.if.end50_crit_edge95
  tail call void @usb_unanchor_urb(ptr noundef %urb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end40.cleanup_crit_edge, %if.end34, %if.then21, %if.then15, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btusb_mtk_uhw_reg_read(ptr nocapture noundef readonly %data, i32 noundef %reg, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.btusb_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or3 = or i32 %shl.i, -2147483520
  %shr = lshr i32 %reg, 16
  %conv = trunc i32 %shr to i16
  %conv5 = trunc i32 %reg to i16
  %call6 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or3, i8 noundef zeroext 1, i8 noundef zeroext -34, i16 noundef zeroext %conv, i16 noundef zeroext %conv5, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.101, ptr noundef %name, i32 noundef %call6) #11
  br label %err_free_buf

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btusb_mtk_uhw_reg_read.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btusb_mtk_uhw_reg_read, %if.then15)) #11
          to label %err_free_buf [label %if.then15], !srcloc !358

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %name16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btusb_mtk_uhw_reg_read.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.103, ptr noundef %name16, i32 noundef %reg, i32 noundef %12) #11
  br label %err_free_buf

err_free_buf:                                     ; preds = %if.then15, %if.end9, %if.then8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_buf, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btusb_setup_qca_download_fw(ptr noundef %hdev, ptr nocapture noundef readonly %firmware, i32 noundef %hdr_size) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev1 = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !360
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %firmware, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %hdr_size)
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = call ptr @memcpy(ptr %call7.i, ptr %10, i32 %8)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %8 to i16
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.110, ptr noundef %name, i32 noundef %call5) #11
  br label %done

if.end9:                                          ; preds = %if.end
  %sub = sub i32 %7, %8
  tail call void @msleep(i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not89 = icmp eq i32 %sub, 0
  br i1 %tobool10.not89, label %if.end9.done_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.done_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %if.end9.while.body_crit_edge
  %sent.091 = phi i32 [ %add35, %if.end34.while.body_crit_edge ], [ %8, %if.end9.while.body_crit_edge ]
  %count.090 = phi i32 [ %sub36, %if.end34.while.body_crit_edge ], [ %sub, %if.end9.while.body_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %count.090, i32 4096)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %sent.091
  %17 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr, i32 %14)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 8
  %shl.i83 = shl i32 %19, 8
  %or20 = or i32 %shl.i83, -1073676288
  %call21 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or20, ptr noundef nonnull %call7.i, i32 noundef %14, ptr noundef nonnull %len, i32 noundef 3000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %name25 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %20 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %firmware, align 4
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.111, ptr noundef %name25, i32 noundef %sent.091, i32 noundef %21, i32 noundef %call21) #11
  br label %done

if.end28:                                         ; preds = %while.body
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %23)
  %cmp29.not = icmp eq i32 %14, %23
  br i1 %cmp29.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %name32 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.112, ptr noundef %name32) #11
  br label %done

if.end34:                                         ; preds = %if.end28
  %add35 = add i32 %sent.091, %14
  %sub36 = sub i32 %count.090, %14
  %tobool10.not = icmp eq i32 %sub36, 0
  br i1 %tobool10.not, label %if.end34.done_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end34.done_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

done:                                             ; preds = %if.end34.done_crit_edge, %if.then31, %if.then24, %if.end9.done_crit_edge, %if.then8
  %err.1 = phi i32 [ %call5, %if.then8 ], [ %call21, %if.then24 ], [ -84, %if.then31 ], [ %call5, %if.end9.done_crit_edge ], [ %call21, %if.end34.done_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync_ev(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_poll_sync_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %poll_sync = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %poll_sync to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %poll_sync, align 4, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_poll_sync_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #11
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !360
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %poll_sync = getelementptr inbounds %struct.btusb_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %poll_sync to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %poll_sync, align 4, !range !359
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable, align 1, !range !359
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp = icmp eq i8 %8, %10
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %poll_sync to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %poll_sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -114, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !81, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !101, !103, !104, !105, !107, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !131, !132, !134, !135, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !190, !192, !193, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !248, !250, !251, !253, !254, !256, !258, !260, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !333, !334, !336, !337, !339, !341, !342, !343, !344, !346, !347}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__initcall__kmod_btusb__522_4111_btusb_driver_init6, !1, !"__initcall__kmod_btusb__522_4111_btusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btusb.c", i32 4111, i32 1}
!2 = !{ptr @__exitcall_btusb_driver_exit, !1, !"__exitcall_btusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_disable_scofix, !4, !"__param_disable_scofix", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/btusb.c", i32 4113, i32 1}
!5 = !{ptr @__UNIQUE_ID_disable_scofixtype523, !4, !"__UNIQUE_ID_disable_scofixtype523", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_disable_scofix524, !7, !"__UNIQUE_ID_disable_scofix524", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/btusb.c", i32 4114, i32 1}
!8 = !{ptr @__param_force_scofix, !9, !"__param_force_scofix", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/btusb.c", i32 4116, i32 1}
!10 = !{ptr @__UNIQUE_ID_force_scofixtype525, !9, !"__UNIQUE_ID_force_scofixtype525", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_force_scofix526, !12, !"__UNIQUE_ID_force_scofix526", i1 false, i1 false}
!12 = !{!"../drivers/bluetooth/btusb.c", i32 4117, i32 1}
!13 = !{ptr @__param_enable_autosuspend, !14, !"__param_enable_autosuspend", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/btusb.c", i32 4119, i32 1}
!15 = !{ptr @__UNIQUE_ID_enable_autosuspendtype527, !14, !"__UNIQUE_ID_enable_autosuspendtype527", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_enable_autosuspend528, !17, !"__UNIQUE_ID_enable_autosuspend528", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btusb.c", i32 4120, i32 1}
!18 = !{ptr @__param_reset, !19, !"__param_reset", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btusb.c", i32 4122, i32 1}
!20 = !{ptr @__UNIQUE_ID_resettype529, !19, !"__UNIQUE_ID_resettype529", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_reset530, !22, !"__UNIQUE_ID_reset530", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/btusb.c", i32 4123, i32 1}
!23 = !{ptr @__UNIQUE_ID_author531, !24, !"__UNIQUE_ID_author531", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/btusb.c", i32 4125, i32 1}
!25 = !{ptr @__UNIQUE_ID_description532, !26, !"__UNIQUE_ID_description532", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/btusb.c", i32 4126, i32 1}
!27 = !{ptr @__UNIQUE_ID_version533, !28, !"__UNIQUE_ID_version533", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/btusb.c", i32 4127, i32 1}
!29 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__modver_attr, !28, !"__modver_attr", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_file534, !34, !"__UNIQUE_ID_file534", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/btusb.c", i32 4128, i32 1}
!35 = !{ptr @__UNIQUE_ID_license535, !34, !"__UNIQUE_ID_license535", i1 false, i1 false}
!36 = !{ptr @disable_scofix, !37, !"disable_scofix", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/btusb.c", i32 32, i32 13}
!38 = !{ptr @force_scofix, !39, !"force_scofix", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/btusb.c", i32 33, i32 13}
!40 = !{ptr @btusb_driver, !41, !"btusb_driver", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/btusb.c", i32 4098, i32 26}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/btusb.c", i32 3552, i32 2}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @btusb_probe.__UNIQUE_ID_ddebug518, !43, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!47 = !{ptr @btusb_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/btusb.c", i32 3623, i32 2}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @btusb_probe.__key.7, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/btusb.c", i32 3624, i32 2}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @btusb_probe.__key.9, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/bluetooth/btusb.c", i32 3625, i32 2}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @btusb_probe.__key.11, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @btusb_probe.__key.13, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/btusb.c", i32 3631, i32 2}
!60 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @btusb_probe.__key.15, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/btusb.c", i32 3638, i32 2}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/btusb.c", i32 3672, i32 52}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/btusb.c", i32 3868, i32 4}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bluetooth/btusb.c", i32 3897, i32 22}
!70 = !{ptr @blacklist_table, !71, !"blacklist_table", i1 false, i1 false}
!71 = !{!"../drivers/bluetooth/btusb.c", i32 175, i32 35}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/btusb.c", i32 3047, i32 3}
!74 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @btusb_qca_send_vendor_req._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @btusb_qca_send_vendor_req._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @btusb_work.alts, !80, !"alts", i1 false, i1 false}
!80 = !{!"../drivers/bluetooth/btusb.c", i32 1877, i32 22}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/btusb.c", i32 1904, i32 4}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/btusb.c", i32 1843, i32 2}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @btusb_find_altsetting.__UNIQUE_ID_ddebug505, !84, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/bluetooth/btusb.c", i32 1270, i32 2}
!89 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @btusb_submit_isoc_urb.__UNIQUE_ID_ddebug495, !88, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bluetooth/btusb.c", i32 1303, i32 4}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/btusb.c", i32 1161, i32 2}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @btusb_isoc_complete.__UNIQUE_ID_ddebug492, !94, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/btusb.c", i32 1179, i32 5}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bluetooth/btusb.c", i32 1199, i32 4}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bluetooth/btusb.c", i32 1245, i32 2}
!103 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__fill_isoc_descriptor.__UNIQUE_ID_ddebug494, !102, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/btusb.c", i32 1766, i32 3}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bluetooth/btusb.c", i32 1790, i32 3}
!109 = !{ptr @skb_queue_head_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @init_usb_anchor.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @init_usb_anchor.__key.40, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!117 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bluetooth/btusb.c", i32 1458, i32 2}
!120 = !{ptr @btusb_open.__UNIQUE_ID_ddebug500, !119, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/btusb.c", i32 1003, i32 2}
!123 = !{ptr @btusb_submit_intr_urb.__UNIQUE_ID_ddebug489, !122, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bluetooth/btusb.c", i32 956, i32 2}
!126 = !{ptr @btusb_intr_complete.__UNIQUE_ID_ddebug488, !125, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/bluetooth/btusb.c", i32 967, i32 4}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bluetooth/btusb.c", i32 1117, i32 2}
!131 = !{ptr @btusb_submit_bulk_urb.__UNIQUE_ID_ddebug491, !130, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bluetooth/btusb.c", i32 1072, i32 2}
!134 = !{ptr @btusb_bulk_complete.__UNIQUE_ID_ddebug490, !133, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bluetooth/btusb.c", i32 1083, i32 4}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/bluetooth/btusb.c", i32 1362, i32 2}
!139 = !{ptr @btusb_submit_diag_urb.__UNIQUE_ID_ddebug497, !138, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bluetooth/btusb.c", i32 1319, i32 2}
!142 = !{ptr @btusb_diag_complete.__UNIQUE_ID_ddebug496, !141, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/bluetooth/btusb.c", i32 1521, i32 2}
!145 = !{ptr @btusb_close.__UNIQUE_ID_ddebug501, !144, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/bluetooth/btusb.c", i32 1558, i32 2}
!148 = !{ptr @btusb_flush.__UNIQUE_ID_ddebug502, !147, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/bluetooth/btusb.c", i32 1707, i32 2}
!151 = !{ptr @btusb_send_frame.__UNIQUE_ID_ddebug503, !150, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/bluetooth/btusb.c", i32 1407, i32 2}
!154 = !{ptr @btusb_tx_complete.__UNIQUE_ID_ddebug498, !153, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/bluetooth/btusb.c", i32 1436, i32 2}
!157 = !{ptr @btusb_isoc_tx_complete.__UNIQUE_ID_ddebug499, !156, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bluetooth/btusb.c", i32 1211, i32 2}
!160 = !{ptr @__fill_isoc_descriptor_msbc.__UNIQUE_ID_ddebug493, !159, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/bluetooth/btusb.c", i32 1745, i32 2}
!163 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @btusb_notify.__UNIQUE_ID_ddebug504, !162, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/bluetooth/btusb.c", i32 3446, i32 40}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/bluetooth/btusb.c", i32 3448, i32 3}
!169 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @btusb_config_oob_wake.__UNIQUE_ID_ddebug517, !168, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/bluetooth/btusb.c", i32 3454, i32 14}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/bluetooth/btusb.c", i32 3456, i32 3}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/bluetooth/btusb.c", i32 3462, i32 3}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/bluetooth/btusb.c", i32 3467, i32 2}
!179 = !{ptr @btusb_match_table, !180, !"btusb_match_table", i1 false, i1 false}
!180 = !{!"../drivers/bluetooth/btusb.c", i32 3425, i32 34}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/bluetooth/btusb.c", i32 2881, i32 41}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/bluetooth/btusb.c", i32 2882, i32 41}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/bluetooth/btusb.c", i32 2895, i32 3}
!187 = !{ptr @__func__.marvell_config_oob_wake, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/bluetooth/btusb.c", i32 2904, i32 3}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/bluetooth/btusb.c", i32 1943, i32 2}
!192 = !{ptr @btusb_setup_bcm92035.__UNIQUE_ID_ddebug506, !191, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/bluetooth/btusb.c", i32 1947, i32 3}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/bluetooth/btusb.c", i32 2176, i32 2}
!197 = !{ptr @btusb_send_frame_intel.__UNIQUE_ID_ddebug508, !196, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/bluetooth/btusb.c", i32 647, i32 3}
!200 = !{ptr @.str.74, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/bluetooth/btusb.c", i32 659, i32 3}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/bluetooth/btusb.c", i32 663, i32 2}
!204 = !{ptr @.str.76, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/bluetooth/btusb.c", i32 2927, i32 3}
!206 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/bluetooth/btusb.c", i32 2626, i32 3}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/bluetooth/btusb.c", i32 2638, i32 4}
!210 = !{ptr @.str.79, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/bluetooth/btusb.c", i32 2645, i32 12}
!212 = !{ptr @.str.80, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/bluetooth/btusb.c", i32 2648, i32 12}
!214 = !{ptr @.str.81, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/bluetooth/btusb.c", i32 2653, i32 4}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/bluetooth/btusb.c", i32 2658, i32 4}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/bluetooth/btusb.c", i32 2675, i32 4}
!220 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/bluetooth/btusb.c", i32 2683, i32 3}
!222 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/bluetooth/btusb.c", i32 2697, i32 3}
!224 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/bluetooth/btusb.c", i32 2702, i32 3}
!226 = !{ptr @.str.87, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/bluetooth/btusb.c", i32 2725, i32 3}
!228 = !{ptr @.str.88, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/bluetooth/btusb.c", i32 2755, i32 3}
!230 = !{ptr @.str.89, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/bluetooth/btusb.c", i32 2765, i32 2}
!232 = !{ptr @.str.90, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/bluetooth/btusb.c", i32 2440, i32 3}
!234 = !{ptr @.str.91, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/bluetooth/btusb.c", i32 2446, i32 3}
!236 = !{ptr @.str.92, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/bluetooth/btusb.c", i32 2455, i32 3}
!238 = !{ptr @.str.93, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/bluetooth/btusb.c", i32 2538, i32 3}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/bluetooth/btusb.c", i32 2513, i32 3}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/bluetooth/btusb.c", i32 2812, i32 2}
!246 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug510, !245, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/bluetooth/btusb.c", i32 2831, i32 4}
!250 = !{ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug511, !249, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!251 = !{ptr @.str.99, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/bluetooth/btusb.c", i32 2835, i32 3}
!253 = !{ptr @btusb_mtk_cmd_timeout.__UNIQUE_ID_ddebug512, !252, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!254 = !{ptr @.str.100, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/bluetooth/btusb.c", i32 2842, i32 3}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/bluetooth/btusb.c", i32 2564, i32 3}
!258 = !{ptr @.str.102, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/bluetooth/btusb.c", i32 2569, i32 2}
!260 = !{ptr @.str.103, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @btusb_mtk_uhw_reg_read.__UNIQUE_ID_ddebug509, !259, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!262 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/bluetooth/btusb.c", i32 3293, i32 3}
!264 = !{ptr @qca_devices_table, !265, !"qca_devices_table", i1 false, i1 false}
!265 = !{!"../drivers/bluetooth/btusb.c", i32 3018, i32 37}
!266 = !{ptr @.str.105, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/bluetooth/btusb.c", i32 3142, i32 35}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/bluetooth/btusb.c", i32 3146, i32 3}
!270 = !{ptr @.str.107, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/bluetooth/btusb.c", i32 3151, i32 2}
!272 = !{ptr @.str.108, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/bluetooth/btusb.c", i32 3164, i32 2}
!274 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/bluetooth/btusb.c", i32 3169, i32 3}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/bluetooth/btusb.c", i32 3087, i32 3}
!278 = !{ptr @.str.111, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/bluetooth/btusb.c", i32 3108, i32 4}
!280 = !{ptr @.str.112, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/bluetooth/btusb.c", i32 3114, i32 4}
!282 = !{ptr @.str.113, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/bluetooth/btusb.c", i32 3238, i32 3}
!284 = !{ptr @.str.114, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/bluetooth/btusb.c", i32 3243, i32 2}
!286 = !{ptr @.str.115, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/bluetooth/btusb.c", i32 3205, i32 14}
!288 = !{ptr @.str.116, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/bluetooth/btusb.c", i32 3208, i32 14}
!290 = !{ptr @.str.117, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/bluetooth/btusb.c", i32 3213, i32 31}
!292 = !{ptr @.str.118, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/bluetooth/btusb.c", i32 3216, i32 31}
!294 = !{ptr @.str.119, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/bluetooth/btusb.c", i32 3220, i32 30}
!296 = !{ptr @.str.120, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/bluetooth/btusb.c", i32 2952, i32 3}
!298 = !{ptr @.str.121, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/bluetooth/btusb.c", i32 709, i32 3}
!300 = !{ptr @.str.122, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/bluetooth/btusb.c", i32 729, i32 2}
!302 = !{ptr @.str.123, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/bluetooth/btusb.c", i32 735, i32 3}
!304 = distinct !{null, !305, !"btusb_needs_reset_resume_table", i1 false, i1 false}
!305 = !{!"../drivers/bluetooth/btusb.c", i32 531, i32 35}
!306 = !{ptr @.str.124, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/bluetooth/btusb.c", i32 3491, i32 3}
!308 = !{ptr @.str.125, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/bluetooth/btusb.c", i32 678, i32 3}
!310 = !{ptr @.str.126, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/bluetooth/btusb.c", i32 693, i32 2}
!312 = !{ptr @.str.127, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/bluetooth/btusb.c", i32 1963, i32 2}
!314 = !{ptr @btusb_setup_csr.__UNIQUE_ID_ddebug507, !313, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!315 = !{ptr @.str.128, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/bluetooth/btusb.c", i32 1969, i32 3}
!317 = !{ptr @.str.129, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/bluetooth/btusb.c", i32 1974, i32 3}
!319 = !{ptr @.str.130, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/bluetooth/btusb.c", i32 2035, i32 3}
!321 = !{ptr @.str.131, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/bluetooth/btusb.c", i32 2083, i32 4}
!323 = !{ptr @.str.132, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/bluetooth/btusb.c", i32 3351, i32 3}
!325 = !{ptr @force_poll_sync_fops, !326, !"force_poll_sync_fops", i1 false, i1 false}
!326 = !{!"../drivers/bluetooth/btusb.c", i32 3535, i32 37}
!327 = !{ptr @.str.133, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/bluetooth/btusb.c", i32 3914, i32 2}
!329 = !{ptr @.str.134, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @btusb_disconnect.__UNIQUE_ID_ddebug519, !328, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!331 = !{ptr @.str.135, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/bluetooth/btusb.c", i32 3959, i32 2}
!333 = !{ptr @btusb_suspend.__UNIQUE_ID_ddebug520, !332, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!334 = !{ptr @.str.136, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/bluetooth/btusb.c", i32 4040, i32 2}
!336 = !{ptr @btusb_resume.__UNIQUE_ID_ddebug521, !335, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!337 = !{ptr @.str.137, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/bluetooth/btusb.c", i32 4015, i32 5}
!339 = !{ptr @btusb_table, !340, !"btusb_table", i1 false, i1 false}
!340 = !{!"../drivers/bluetooth/btusb.c", i32 66, i32 35}
!341 = !{ptr @__param_str_disable_scofix, !4, !"__param_str_disable_scofix", i1 false, i1 false}
!342 = !{ptr @__param_str_force_scofix, !9, !"__param_str_force_scofix", i1 false, i1 false}
!343 = !{ptr @__param_str_enable_autosuspend, !14, !"__param_str_enable_autosuspend", i1 false, i1 false}
!344 = !{ptr @enable_autosuspend, !345, !"enable_autosuspend", i1 false, i1 false}
!345 = !{!"../drivers/bluetooth/btusb.c", i32 34, i32 13}
!346 = !{ptr @__param_str_reset, !19, !"__param_str_reset", i1 false, i1 false}
!347 = !{ptr @reset, !348, !"reset", i1 false, i1 false}
!348 = !{!"../drivers/bluetooth/btusb.c", i32 35, i32 13}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{i64 2148438397, i64 2148438402, i64 2148438415, i64 2148438459, i64 2148438493, i64 2148438514}
!359 = !{i8 0, i8 2}
!360 = !{!"auto-init"}
!361 = !{!"branch_weights", i32 2000, i32 1}
!362 = !{i64 2158057822}
