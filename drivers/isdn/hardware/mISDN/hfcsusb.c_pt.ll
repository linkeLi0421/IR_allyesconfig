; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/hfcsusb.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/hfcsusb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hfcusb_symbolic_list = type { i32, ptr }
%struct.hfcsusb_vdata = type { i8, [8 x i16], ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.hfcsusb = type { %struct.list_head, %struct.dchannel, [2 x %struct.bchannel], %struct.dchannel, ptr, ptr, i32, i32, i32, i32, i32, i32, [8 x %struct.usb_fifo], [64 x %struct.ctrl_buf], i32, i32, i32, ptr, %struct.usb_ctrlrequest, %struct.usb_ctrlrequest, i32, i32, i32, %struct.spinlock, %struct.spinlock, i8, i8, i8, i32, i32, i8, i8, [20 x i8] }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.usb_fifo = type { i32, i32, ptr, i32, i8, i32, i8, ptr, [128 x i8], i32, i8, [2 x %struct.iso_urb], ptr, ptr, ptr, i32, i8 }
%struct.iso_urb = type { ptr, [128 x i8], ptr, i8 }
%struct.ctrl_buf = type { i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.ph_info_ch = type { i32, i64 }
%struct.ph_info_dch = type { %struct.ph_info_ch, i16, i16 }
%struct.ph_info = type { %struct.ph_info_dch, [0 x %struct.ph_info_ch] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author462 = internal constant [29 x i8] c"hfcsusb.author=Martin Bachem\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [49 x i8] c"hfcsusb.file=drivers/isdn/hardware/mISDN/hfcsusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [20 x i8] c"hfcsusb.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"hfcsusb.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype465 = internal constant [28 x i8] c"hfcsusb.parmtype=debug:uint\00", section ".modinfo", align 1
@__param_str_poll = internal constant [13 x i8] c"hfcsusb.poll\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@poll = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_poll = internal constant %struct.kernel_param { ptr @__param_str_poll, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @poll } }, section "__param", align 4
@__UNIQUE_ID_polltype466 = internal constant [26 x i8] c"hfcsusb.parmtype=poll:int\00", section ".modinfo", align 1
@__initcall__kmod_hfcsusb__467_2144_hfcsusb_drv_init6 = internal global ptr @hfcsusb_drv_init, section ".initcall6.init", align 4
@hfcsusb_drv = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @hfcsusb_probe, ptr @hfcsusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfcsusb_idtab, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_hfcsusb_drv_exit = internal global ptr @hfcsusb_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hfcsusb\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HFC-S_USB\00", [22 x i8] zeroinitializer }, align 32
@hfcsusb_idtab = internal constant { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2393, i16 11216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1653, i16 5768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.usb_device_id { i16 3, i16 1968, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.usb_device_id { i16 3, i16 1858, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.usb_device_id { i16 3, i16 1858, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.usb_device_id { i16 3, i16 1858, i16 8202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.usb_device_id { i16 3, i16 2275, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.usb_device_id { i16 3, i16 2042, i16 2118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.usb_device_id { i16 3, i16 2042, i16 2119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.usb_device_id { i16 3, i16 1968, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.usb_device_id { i16 3, i16 1821, i16 4101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.usb_device_id { i16 3, i16 1414, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.usb_device_id { i16 3, i16 6887, i16 1317, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: interface(%d) actalt(%d) minor(%d) vend_idx(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hfcsusb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/isdn/hardware/mISDN/hfcsusb.c\00", [58 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry_ptr = internal global ptr @hfcsusb_probe._entry, section ".printk_index", align 4
@hfcsusb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: no valid vendor found in USB descriptor\0A\00", [49 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry_ptr.7 = internal global ptr @hfcsusb_probe._entry.5, section ".printk_index", align 4
@validconf = internal constant { [5 x [19 x i32]], [68 x i8] } { [5 x [19 x i32]] [[19 x i32] [i32 1, i32 5, i32 1, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 1, i32 3, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1], [19 x i32] [i32 1, i32 5, i32 1, i32 5, i32 1, i32 5, i32 1, i32 1, i32 3, i32 1, i32 3, i32 1, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 0], [19 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 3, i32 3, i32 2, i32 1], [19 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 1, i32 1, i32 4, i32 2, i32 0], [19 x i32] zeroinitializer], [68 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 2098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: No memory for control urb\0A\00", [63 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry_ptr.11 = internal global ptr @hfcsusb_probe._entry.9, section ".printk_index", align 4
@hfcsusb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: %s: detected \22%s\22 (%s, if=%d alt=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@hfcsusb_probe._entry_ptr.14 = internal global ptr @hfcsusb_probe._entry.12, section ".printk_index", align 4
@conf_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"4 Interrupt IN + 3 Isochron OUT\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"3 Interrupt IN + 3 Isochron OUT\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"4 Isochron IN + 3 Isochron OUT\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"3 Isochron IN + 3 Isochron OUT\00", [33 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->ctrl_lock\00", [17 x i8] zeroinitializer }, align 32
@setup_instance.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@hfcsusb_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.4, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: registered as '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr.27 = internal global ptr @setup_instance._entry.25, section ".printk_index", align 4
@HFClock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.253, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@HFClist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @HFClist, ptr @HFClist }, [24 x i8] zeroinitializer }, align 32
@ph_state_nt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ph_state_nt\00", [20 x i8] zeroinitializer }, align 32
@ph_state_nt._entry_ptr = internal global ptr @ph_state_nt._entry, section ".printk_index", align 4
@HFC_NT_LAYER1_STATES = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [44 x i8] zeroinitializer }, align 32
@ph_state_nt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016HFC-S_USB%s: %s: NT G%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ph_state_nt._entry_ptr.32 = internal global ptr @ph_state_nt._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NT G0 - Reset\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NT G1 - Deactive\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NT G2 - Pending activation\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NT G3 - Active\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NT G4 - Pending deactivation\00", [35 x i8] zeroinitializer }, align 32
@handle_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s reg(0x%02x) val(x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_led\00", [21 x i8] zeroinitializer }, align 32
@handle_led._entry_ptr = internal global ptr @handle_led._entry, section ".printk_index", align 4
@hfcsusb_ph_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfcsusb_ph_command\00", [45 x i8] zeroinitializer }, align 32
@hfcsusb_ph_command._entry_ptr = internal global ptr @hfcsusb_ph_command._entry, section ".printk_index", align 4
@write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s reg(0x%02x) val(0x%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@write_reg._entry_ptr = internal global ptr @write_reg._entry, section ".printk_index", align 4
@ctrl_start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.44, ptr @.str.4, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_start_transfer\00", [44 x i8] zeroinitializer }, align 32
@ctrl_start_transfer._entry_ptr = internal global ptr @ctrl_start_transfer._entry, section ".printk_index", align 4
@ph_state_te._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.45, ptr @.str.4, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ph_state_te\00", [20 x i8] zeroinitializer }, align 32
@ph_state_te._entry_ptr = internal global ptr @ph_state_te._entry, section ".printk_index", align 4
@HFC_TE_LAYER1_STATES = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [60 x i8] zeroinitializer }, align 32
@ph_state_te._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: TE F%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ph_state_te._entry_ptr.48 = internal global ptr @ph_state_te._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TE F0 - Reset\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TE F1 - Reset\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TE F2 - Sensing\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TE F3 - Deactivated\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TE F4 - Awaiting signal\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TE F5 - Identifying input\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TE F6 - Synchronized\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TE F7 - Activated\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TE F8 - Lost framing\00", [43 x i8] zeroinitializer }, align 32
@hfcusb_l2l1D._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: PH_DATA_REQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hfcusb_l2l1D\00", [19 x i8] zeroinitializer }, align 32
@hfcusb_l2l1D._entry_ptr = internal global ptr @hfcusb_l2l1D._entry, section ".printk_index", align 4
@hfcusb_l2l1D._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: PH_ACTIVATE_REQ %s\0A\00", [34 x i8] zeroinitializer }, align 32
@hfcusb_l2l1D._entry_ptr.62 = internal global ptr @hfcusb_l2l1D._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NT\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TE\00", [29 x i8] zeroinitializer }, align 32
@hfcusb_l2l1D._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.4, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: PH_DEACTIVATE_REQ\0A\00", [35 x i8] zeroinitializer }, align 32
@hfcusb_l2l1D._entry_ptr.67 = internal global ptr @hfcusb_l2l1D._entry.65, section ".printk_index", align 4
@hfc_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: cmd:%x %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfc_dctrl\00", [22 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr = internal global ptr @hfc_dctrl._entry, section ".printk_index", align 4
@hfc_dctrl._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s: dev(%d) close from %p (open %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr.72 = internal global ptr @hfc_dctrl._entry.70, section ".printk_index", align 4
@hfc_dctrl._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.4, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: unknown command %x\0A\00", [34 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr.75 = internal global ptr @hfc_dctrl._entry.73, section ".printk_index", align 4
@open_dchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: dev(%d) open addr(%i) from %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_dchannel\00", [18 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr = internal global ptr @open_dchannel._entry, section ".printk_index", align 4
@open_dchannel._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.4, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: %s: cannot get module\0A\00", [35 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr.80 = internal global ptr @open_dchannel._entry.78, section ".printk_index", align 4
@start_int_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: INT IN fifo:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_int_fifo\00", [17 x i8] zeroinitializer }, align 32
@start_int_fifo._entry_ptr = internal global ptr @start_int_fifo._entry, section ".printk_index", align 4
@start_int_fifo._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.4, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: submit URB: status:%i\0A\00", [63 x i8] zeroinitializer }, align 32
@start_int_fifo._entry_ptr.85 = internal global ptr @start_int_fifo._entry.83, section ".printk_index", align 4
@rx_int_complete.eof = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@rx_int_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: RX-Fifo %i is going down (%i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_int_complete\00", [16 x i8] zeroinitializer }, align 32
@rx_int_complete._entry_ptr = internal global ptr @rx_int_complete._entry, section ".printk_index", align 4
@rx_int_complete._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.4, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s: D RX INT len(%d) \00", [36 x i8] zeroinitializer }, align 32
@rx_int_complete._entry_ptr.90 = internal global ptr @rx_int_complete._entry.88, section ".printk_index", align 4
@rx_int_complete._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.4, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@rx_int_complete._entry_ptr.93 = internal global ptr @rx_int_complete._entry.91, section ".printk_index", align 4
@rx_int_complete._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.4, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rx_int_complete._entry_ptr.96 = internal global ptr @rx_int_complete._entry.94, section ".printk_index", align 4
@rx_int_complete._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.4, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: error resubmitting USB\0A\00", [62 x i8] zeroinitializer }, align 32
@rx_int_complete._entry_ptr.99 = internal global ptr @rx_int_complete._entry.97, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hfcsusb_rx_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %s: fifo(%i) len(%i) dch(%p) bch(%p) ech(%p)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hfcsusb_rx_frame\00", [47 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr = internal global ptr @hfcsusb_rx_frame._entry, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: undefined channel\0A\00", [35 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.104 = internal global ptr @hfcsusb_rx_frame._entry.102, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.4, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s.B%d: No bufferspace for %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.107 = internal global ptr @hfcsusb_rx_frame._entry.105, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.4, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: No mem for rx_skb\0A\00", [35 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.110 = internal global ptr @hfcsusb_rx_frame._entry.108, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.4, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: %s: sbk mem exceeded for fifo(%d) HFCUSB_D_RX\0A\00", [43 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.113 = internal global ptr @hfcsusb_rx_frame._entry.111, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.101, ptr @.str.4, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: fifon(%i) new RX len(%i): \00", [59 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.116 = internal global ptr @hfcsusb_rx_frame._entry.114, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.101, ptr @.str.4, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.118 = internal global ptr @hfcsusb_rx_frame._entry.117, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.101, ptr @.str.4, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.120 = internal global ptr @hfcsusb_rx_frame._entry.119, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.101, ptr @.str.4, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: CRC or minlen ERROR fifon(%i) RX len(%i): \00", [47 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.123 = internal global ptr @hfcsusb_rx_frame._entry.121, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.101, ptr @.str.4, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.125 = internal global ptr @hfcsusb_rx_frame._entry.124, section ".printk_index", align 4
@hfcsusb_rx_frame._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.101, ptr @.str.4, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfcsusb_rx_frame._entry_ptr.127 = internal global ptr @hfcsusb_rx_frame._entry.126, section ".printk_index", align 4
@start_isoc_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s: fifo %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start_isoc_chain\00", [47 x i8] zeroinitializer }, align 32
@start_isoc_chain._entry_ptr = internal global ptr @start_isoc_chain._entry, section ".printk_index", align 4
@start_isoc_chain._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.4, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s: alloc urb for fifo %i failed\00", [57 x i8] zeroinitializer }, align 32
@start_isoc_chain._entry_ptr.132 = internal global ptr @start_isoc_chain._entry.130, section ".printk_index", align 4
@start_isoc_chain._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.4, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: ISO Buffer size to small!\0A\00", [59 x i8] zeroinitializer }, align 32
@start_isoc_chain._entry_ptr.135 = internal global ptr @start_isoc_chain._entry.133, section ".printk_index", align 4
@start_isoc_chain._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.4, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s: %s URB nr:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@start_isoc_chain._entry_ptr.138 = internal global ptr @start_isoc_chain._entry.136, section ".printk_index", align 4
@urb_errlist = internal constant { [15 x %struct.hfcusb_symbolic_list], [40 x i8] } { [15 x %struct.hfcusb_symbolic_list] [%struct.hfcusb_symbolic_list { i32 -12, ptr @.str.140 }, %struct.hfcusb_symbolic_list { i32 -28, ptr @.str.141 }, %struct.hfcusb_symbolic_list { i32 -2, ptr @.str.142 }, %struct.hfcusb_symbolic_list { i32 -18, ptr @.str.143 }, %struct.hfcusb_symbolic_list { i32 -11, ptr @.str.144 }, %struct.hfcusb_symbolic_list { i32 -6, ptr @.str.145 }, %struct.hfcusb_symbolic_list { i32 -27, ptr @.str.146 }, %struct.hfcusb_symbolic_list { i32 -63, ptr @.str.147 }, %struct.hfcusb_symbolic_list { i32 -32, ptr @.str.148 }, %struct.hfcusb_symbolic_list { i32 -75, ptr @.str.149 }, %struct.hfcusb_symbolic_list { i32 -71, ptr @.str.150 }, %struct.hfcusb_symbolic_list { i32 -84, ptr @.str.151 }, %struct.hfcusb_symbolic_list { i32 -110, ptr @.str.152 }, %struct.hfcusb_symbolic_list { i32 -108, ptr @.str.153 }, %struct.hfcusb_symbolic_list { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<unknown USB Error>\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No memory for allocation of internal structures\00", [48 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"The host controller's bandwidth is already consumed\00", [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"URB was canceled by unlink_urb\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ISO transfer only partially completed\00", [58 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Too match scheduled for the future\00", [61 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"URB already queued\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too much ISO frames requested\00", [34 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Specified endpoint is stalled (device not responding)\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CRC/Timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NAK (device does not respond)\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Device unplugged\00", [47 x i8] zeroinitializer }, align 32
@rx_iso_complete.eof = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@rx_iso_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.4, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: %s: with -EXDEV urb->status %d, fifonum %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_iso_complete\00", [16 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr = internal global ptr @rx_iso_complete._entry, section ".printk_index", align 4
@iso_packets = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.4, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: ISO packet %i, status: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.158 = internal global ptr @rx_iso_complete._entry.156, section ".printk_index", align 4
@rx_iso_complete._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.4, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: %d (%d/%d) len(%d) \00", [34 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.161 = internal global ptr @rx_iso_complete._entry.159, section ".printk_index", align 4
@rx_iso_complete._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.4, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x \00", [28 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.164 = internal global ptr @rx_iso_complete._entry.162, section ".printk_index", align 4
@rx_iso_complete._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.155, ptr @.str.4, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.166 = internal global ptr @rx_iso_complete._entry.165, section ".printk_index", align 4
@rx_iso_complete._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.155, ptr @.str.4, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: error submitting ISO URB: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.169 = internal global ptr @rx_iso_complete._entry.167, section ".printk_index", align 4
@rx_iso_complete._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.155, ptr @.str.4, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: rx_iso_complete : urb->status %d, fifonum %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rx_iso_complete._entry_ptr.172 = internal global ptr @rx_iso_complete._entry.170, section ".printk_index", align 4
@tx_iso_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.4, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: neither BCH nor DCH\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_iso_complete\00", [16 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr = internal global ptr @tx_iso_complete._entry, section ".printk_index", align 4
@tx_iso_complete._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.4, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: -EXDEV (%i) fifon (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.177 = internal global ptr @tx_iso_complete._entry.175, section ".printk_index", align 4
@tx_iso_complete._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.174, ptr @.str.4, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.179 = internal global ptr @tx_iso_complete._entry.178, section ".printk_index", align 4
@tx_iso_complete._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.174, ptr @.str.4, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s (%d/%d) offs(%d) len(%d) \00", [61 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.182 = internal global ptr @tx_iso_complete._entry.180, section ".printk_index", align 4
@tx_iso_complete._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.174, ptr @.str.4, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.184 = internal global ptr @tx_iso_complete._entry.183, section ".printk_index", align 4
@tx_iso_complete._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.174, ptr @.str.4, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" skb->len(%i) tx-idx(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.187 = internal global ptr @tx_iso_complete._entry.185, section ".printk_index", align 4
@tx_iso_complete._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.174, ptr @.str.4, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: fifon(%i) new TX len(%i): \00", [59 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.190 = internal global ptr @tx_iso_complete._entry.188, section ".printk_index", align 4
@tx_iso_complete._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.174, ptr @.str.4, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.192 = internal global ptr @tx_iso_complete._entry.191, section ".printk_index", align 4
@tx_iso_complete._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.174, ptr @.str.4, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.194 = internal global ptr @tx_iso_complete._entry.193, section ".printk_index", align 4
@tx_iso_complete._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.174, ptr @.str.4, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: error submitting ISO URB: %d \0A\00", [55 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.197 = internal global ptr @tx_iso_complete._entry.195, section ".printk_index", align 4
@tx_iso_complete._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.174, ptr @.str.4, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: urb->status %s (%i)fifonum=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@tx_iso_complete._entry_ptr.200 = internal global ptr @tx_iso_complete._entry.198, section ".printk_index", align 4
@hfc_l1callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.4, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s cmd 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfc_l1callback\00", [17 x i8] zeroinitializer }, align 32
@hfc_l1callback._entry_ptr = internal global ptr @hfc_l1callback._entry, section ".printk_index", align 4
@hfc_l1callback._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.4, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: unknown cmd %x\0A\00", [38 x i8] zeroinitializer }, align 32
@hfc_l1callback._entry_ptr.205 = internal global ptr @hfc_l1callback._entry.203, section ".printk_index", align 4
@setPortMode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.4, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setPortMode\00", [20 x i8] zeroinitializer }, align 32
@setPortMode._entry_ptr = internal global ptr @setPortMode._entry, section ".printk_index", align 4
@open_bchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.4, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s B%i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_bchannel\00", [18 x i8] zeroinitializer }, align 32
@open_bchannel._entry_ptr = internal global ptr @open_bchannel._entry, section ".printk_index", align 4
@open_bchannel._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.4, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: %s:cannot get module\0A\00", [36 x i8] zeroinitializer }, align 32
@open_bchannel._entry_ptr.212 = internal global ptr @open_bchannel._entry.210, section ".printk_index", align 4
@stop_int_gracefull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.4, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s for fifo %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stop_int_gracefull\00", [45 x i8] zeroinitializer }, align 32
@stop_int_gracefull._entry_ptr = internal global ptr @stop_int_gracefull._entry, section ".printk_index", align 4
@stop_int_gracefull._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.4, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: ERROR %s for fifo %i\0A\00", [36 x i8] zeroinitializer }, align 32
@stop_int_gracefull._entry_ptr.217 = internal global ptr @stop_int_gracefull._entry.215, section ".printk_index", align 4
@stop_iso_gracefull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.4, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s for fifo %i.%i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stop_iso_gracefull\00", [45 x i8] zeroinitializer }, align 32
@stop_iso_gracefull._entry_ptr = internal global ptr @stop_iso_gracefull._entry, section ".printk_index", align 4
@stop_iso_gracefull._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.4, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: ERROR %s for fifo %i.%i\0A\00", [33 x i8] zeroinitializer }, align 32
@stop_iso_gracefull._entry_ptr.222 = internal global ptr @stop_iso_gracefull._entry.220, section ".printk_index", align 4
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.4, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s op(0x%x) channel(0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@channel_ctrl._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.4, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: %s: unknown Op %x\0A\00", [39 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr.227 = internal global ptr @channel_ctrl._entry.225, section ".printk_index", align 4
@hfcusb_l2l1B._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.228, ptr @.str.4, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hfcusb_l2l1B\00", [19 x i8] zeroinitializer }, align 32
@hfcusb_l2l1B._entry_ptr = internal global ptr @hfcusb_l2l1B._entry, section ".printk_index", align 4
@hfcusb_l2l1B._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.4, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s PH_DATA_REQ ret(%i)\0A\00", [34 x i8] zeroinitializer }, align 32
@hfcusb_l2l1B._entry_ptr.231 = internal global ptr @hfcusb_l2l1B._entry.229, section ".printk_index", align 4
@hfcsusb_setup_bch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.4, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s: protocol %x-->%x B%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfcsusb_setup_bch\00", [46 x i8] zeroinitializer }, align 32
@hfcsusb_setup_bch._entry_ptr = internal global ptr @hfcsusb_setup_bch._entry, section ".printk_index", align 4
@hfcsusb_setup_bch._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.4, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: prot not known %x\0A\00", [35 x i8] zeroinitializer }, align 32
@hfcsusb_setup_bch._entry_ptr.236 = internal global ptr @hfcsusb_setup_bch._entry.234, section ".printk_index", align 4
@deactivate_bchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.4, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: bch->nr(%i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"deactivate_bchannel\00", [44 x i8] zeroinitializer }, align 32
@deactivate_bchannel._entry_ptr = internal global ptr @deactivate_bchannel._entry, section ".printk_index", align 4
@hfc_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.4, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: cmd:%x %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfc_bctrl\00", [22 x i8] zeroinitializer }, align 32
@hfc_bctrl._entry_ptr = internal global ptr @hfc_bctrl._entry, section ".printk_index", align 4
@hfc_bctrl._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.4, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: unknown prim(%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@hfc_bctrl._entry_ptr.243 = internal global ptr @hfc_bctrl._entry.241, section ".printk_index", align 4
@setup_hfcsusb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.244, ptr @.str.4, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup_hfcsusb\00", [18 x i8] zeroinitializer }, align 32
@setup_hfcsusb._entry_ptr = internal global ptr @setup_hfcsusb._entry, section ".printk_index", align 4
@setup_hfcsusb._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str.4, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: cannot read chip id\0A\00", [33 x i8] zeroinitializer }, align 32
@setup_hfcsusb._entry_ptr.247 = internal global ptr @setup_hfcsusb._entry.245, section ".printk_index", align 4
@setup_hfcsusb._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.244, ptr @.str.4, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s: Invalid chip id 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@setup_hfcsusb._entry_ptr.250 = internal global ptr @setup_hfcsusb._entry.248, section ".printk_index", align 4
@ctrl_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.251, ptr @.str.4, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctrl_complete\00", [18 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr = internal global ptr @ctrl_complete._entry, section ".printk_index", align 4
@reset_hfcsusb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.252, ptr @.str.4, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset_hfcsusb\00", [18 x i8] zeroinitializer }, align 32
@reset_hfcsusb._entry_ptr = internal global ptr @reset_hfcsusb._entry, section ".printk_index", align 4
@.str.253 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HFClock\00", [24 x i8] zeroinitializer }, align 32
@hfcsusb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.4, i32 2123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: device disconnected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfcsusb_disconnect\00", [45 x i8] zeroinitializer }, align 32
@hfcsusb_disconnect._entry_ptr = internal global ptr @hfcsusb_disconnect._entry, section ".printk_index", align 4
@release_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.256, ptr @.str.4, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"release_hw\00", [21 x i8] zeroinitializer }, align 32
@release_hw._entry_ptr = internal global ptr @release_hw._entry, section ".printk_index", align 4
@.str.257 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ISDN USB TA (Cologne Chip HFC-S USB based)\00", [53 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 0, [8 x i16] [i16 4, i16 0, i16 2, i16 1, i16 0, i16 0, i16 0, i16 0], ptr @.str.257 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DrayTek miniVigor 128 USB ISDN TA\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 1, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], ptr @.str.258 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Billion tiny USB ISDN TA 128\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 128, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.260 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stollmann USB TA\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 4, i16 0, i16 2, i16 1, i16 0, i16 0, i16 0, i16 0], ptr @.str.262 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aceex USB ISDN TA\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 4, i16 0, i16 2, i16 1, i16 0, i16 0, i16 0, i16 0], ptr @.str.264 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OEM USB ISDN TA\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 4, i16 0, i16 2, i16 1, i16 0, i16 0, i16 0, i16 0], ptr @.str.266 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Olitec USB RNIS\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 2, i16 0, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0], ptr @.str.268 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bewan Modem RNIS USB\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 128, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.270 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Djinn Numeris USB\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 128, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.272 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Twister ISDN TA\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 128, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.274 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Eicon DIVA USB 4.0\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 2, i16 0, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0], ptr @.str.276 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ZyXEL OMNI.NET USB II\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 136, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.278 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"X-Tensions USB ISDN TA XC-525\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.hfcsusb_vdata, [40 x i8] } { %struct.hfcsusb_vdata { i8 1, [8 x i16] [i16 136, i16 -64, i16 -32, i16 -16, i16 0, i16 0, i16 0, i16 0], ptr @.str.280 }, [40 x i8] zeroinitializer }, align 32
@switch.table.ph_state = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 36866, i32 36866, i32 36866, i32 37378, i32 36866, i32 34818, i32 33282, i32 34050, i32 34818], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.282 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.283 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.285 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.286 = internal global [6 x i64] [i64 4, i64 32, i64 257, i64 513, i64 1793, i64 8193]
@__sancov_gen_cov_switch_values.287 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.288 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.289 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.290 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 768, i64 38402, i64 38658, i64 38914]
@__sancov_gen_cov_switch_values.291 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.292 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.293 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.294 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.295 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.296 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.297 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 514, i64 33538, i64 33794, i64 35330, i64 35586, i64 35842]
@__sancov_gen_cov_switch_values.298 = internal global [16 x i64] [i64 14, i64 32, i64 4294967186, i64 4294967188, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967278, i64 4294967284, i64 4294967285, i64 4294967290, i64 4294967294]
@__sancov_gen_cov_switch_values.299 = internal global [16 x i64] [i64 14, i64 32, i64 4294967186, i64 4294967188, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967278, i64 4294967284, i64 4294967285, i64 4294967290, i64 4294967294]
@__sancov_gen_cov_switch_values.300 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 33, i64 34, i64 4294967295]
@___asan_gen_.301 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 26, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 27, i32 12 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"hfcsusb_drv\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2136, i32 26 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2144, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2137, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"hfcsusb_idtab\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 341, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1931, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1937, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [10 x i8] c"validconf\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2097, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2103, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [9 x i8] c"conf_str\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 202, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 203, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 204, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 205, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 206, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1839, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1841, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1842, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1883, i32 42 }
@___asan_gen_.391 = private unnamed_addr constant [12 x i8] c"hfcsusb_cnt\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 38, i32 12 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1885, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [8 x i8] c"HFClock\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [8 x i8] c"HFClist\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 29, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 617, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant [21 x i8] c"HFC_NT_LAYER1_STATES\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 332, i32 20 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 622, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 333, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 334, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 335, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 336, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 337, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 184, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 756, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 81, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 56, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 576, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant [21 x i8] c"HFC_TE_LAYER1_STATES\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 320, i32 20 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 579, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 321, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 322, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 323, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 324, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 325, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 326, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 327, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 328, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 329, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 286, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 300, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 324, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 526, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 542, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 559, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 417, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 459, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1498, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1513, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1086, i32 14 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1101, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1114, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1117, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1118, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1146, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 811, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 820, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 842, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 866, i32 5 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 874, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 891, i32 6 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 897, i32 7 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 899, i32 6 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 915, i32 6 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 921, i32 7 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 923, i32 6 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1383, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1392, i32 5 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1423, i32 5 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1434, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant [12 x i8] c"urb_errlist\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 129, i32 36 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 154, i32 9 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 130, i32 12 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 131, i32 12 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 132, i32 12 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 133, i32 11 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 134, i32 12 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 135, i32 11 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 136, i32 11 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 137, i32 11 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 138, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 139, i32 15 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 140, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 141, i32 12 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 142, i32 15 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 143, i32 15 }
@___asan_gen_.760 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 967, i32 14 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 989, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant [12 x i8] c"iso_packets\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 93, i32 12 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1009, i32 5 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1017, i32 5 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1023, i32 6 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1024, i32 5 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1066, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1072, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1186, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1203, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1234, i32 6 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1290, i32 6 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1301, i32 7 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1304, i32 6 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1322, i32 6 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1328, i32 7 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1330, i32 6 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1345, i32 5 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1363, i32 4 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 368, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 403, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1523, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 475, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 485, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1477, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1486, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1452, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1463, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 496, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 505, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 205, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 213, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 686, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 717, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1785, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1805, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1826, i32 3 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1699, i32 3 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1711, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1716, i32 3 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 108, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1548, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 30, i32 8 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 2123, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1046 = private constant [41 x i8] c"../drivers/isdn/hardware/mISDN/hfcsusb.c\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1046, i32 1745, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 346, i32 6 }
@___asan_gen_.1051 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 352, i32 6 }
@___asan_gen_.1055 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 358, i32 6 }
@___asan_gen_.1059 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 364, i32 6 }
@___asan_gen_.1063 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 370, i32 6 }
@___asan_gen_.1067 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 376, i32 6 }
@___asan_gen_.1071 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 382, i32 6 }
@___asan_gen_.1075 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 388, i32 6 }
@___asan_gen_.1079 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 394, i32 6 }
@___asan_gen_.1083 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 400, i32 6 }
@___asan_gen_.1087 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 406, i32 6 }
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 412, i32 6 }
@___asan_gen_.1095 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant [41 x i8] c"../drivers/isdn/hardware/mISDN/hfcsusb.h\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 418, i32 6 }
@___asan_gen_.1099 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant [22 x i8] c"switch.table.ph_state\00", align 1
@llvm.compiler.used = appending global [373 x ptr] [ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_debugtype465, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__UNIQUE_ID_polltype466, ptr @__exitcall_hfcsusb_drv_exit, ptr @__initcall__kmod_hfcsusb__467_2144_hfcsusb_drv_init6, ptr @__param_debug, ptr @__param_poll, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry.225, ptr @channel_ctrl._entry_ptr, ptr @channel_ctrl._entry_ptr.227, ptr @ctrl_complete._entry, ptr @ctrl_complete._entry_ptr, ptr @ctrl_start_transfer._entry, ptr @ctrl_start_transfer._entry_ptr, ptr @deactivate_bchannel._entry, ptr @deactivate_bchannel._entry_ptr, ptr @handle_led._entry, ptr @handle_led._entry_ptr, ptr @hfc_bctrl._entry, ptr @hfc_bctrl._entry.241, ptr @hfc_bctrl._entry_ptr, ptr @hfc_bctrl._entry_ptr.243, ptr @hfc_dctrl._entry, ptr @hfc_dctrl._entry.70, ptr @hfc_dctrl._entry.73, ptr @hfc_dctrl._entry_ptr, ptr @hfc_dctrl._entry_ptr.72, ptr @hfc_dctrl._entry_ptr.75, ptr @hfc_l1callback._entry, ptr @hfc_l1callback._entry.203, ptr @hfc_l1callback._entry_ptr, ptr @hfc_l1callback._entry_ptr.205, ptr @hfcsusb_disconnect._entry, ptr @hfcsusb_disconnect._entry_ptr, ptr @hfcsusb_drv_exit, ptr @hfcsusb_ph_command._entry, ptr @hfcsusb_ph_command._entry_ptr, ptr @hfcsusb_probe._entry, ptr @hfcsusb_probe._entry.12, ptr @hfcsusb_probe._entry.5, ptr @hfcsusb_probe._entry.9, ptr @hfcsusb_probe._entry_ptr, ptr @hfcsusb_probe._entry_ptr.11, ptr @hfcsusb_probe._entry_ptr.14, ptr @hfcsusb_probe._entry_ptr.7, ptr @hfcsusb_rx_frame._entry, ptr @hfcsusb_rx_frame._entry.102, ptr @hfcsusb_rx_frame._entry.105, ptr @hfcsusb_rx_frame._entry.108, ptr @hfcsusb_rx_frame._entry.111, ptr @hfcsusb_rx_frame._entry.114, ptr @hfcsusb_rx_frame._entry.117, ptr @hfcsusb_rx_frame._entry.119, ptr @hfcsusb_rx_frame._entry.121, ptr @hfcsusb_rx_frame._entry.124, ptr @hfcsusb_rx_frame._entry.126, ptr @hfcsusb_rx_frame._entry_ptr, ptr @hfcsusb_rx_frame._entry_ptr.104, ptr @hfcsusb_rx_frame._entry_ptr.107, ptr @hfcsusb_rx_frame._entry_ptr.110, ptr @hfcsusb_rx_frame._entry_ptr.113, ptr @hfcsusb_rx_frame._entry_ptr.116, ptr @hfcsusb_rx_frame._entry_ptr.118, ptr @hfcsusb_rx_frame._entry_ptr.120, ptr @hfcsusb_rx_frame._entry_ptr.123, ptr @hfcsusb_rx_frame._entry_ptr.125, ptr @hfcsusb_rx_frame._entry_ptr.127, ptr @hfcsusb_setup_bch._entry, ptr @hfcsusb_setup_bch._entry.234, ptr @hfcsusb_setup_bch._entry_ptr, ptr @hfcsusb_setup_bch._entry_ptr.236, ptr @hfcusb_l2l1B._entry, ptr @hfcusb_l2l1B._entry.229, ptr @hfcusb_l2l1B._entry_ptr, ptr @hfcusb_l2l1B._entry_ptr.231, ptr @hfcusb_l2l1D._entry, ptr @hfcusb_l2l1D._entry.60, ptr @hfcusb_l2l1D._entry.65, ptr @hfcusb_l2l1D._entry_ptr, ptr @hfcusb_l2l1D._entry_ptr.62, ptr @hfcusb_l2l1D._entry_ptr.67, ptr @open_bchannel._entry, ptr @open_bchannel._entry.210, ptr @open_bchannel._entry_ptr, ptr @open_bchannel._entry_ptr.212, ptr @open_dchannel._entry, ptr @open_dchannel._entry.78, ptr @open_dchannel._entry_ptr, ptr @open_dchannel._entry_ptr.80, ptr @ph_state_nt._entry, ptr @ph_state_nt._entry.30, ptr @ph_state_nt._entry_ptr, ptr @ph_state_nt._entry_ptr.32, ptr @ph_state_te._entry, ptr @ph_state_te._entry.46, ptr @ph_state_te._entry_ptr, ptr @ph_state_te._entry_ptr.48, ptr @release_hw._entry, ptr @release_hw._entry_ptr, ptr @reset_hfcsusb._entry, ptr @reset_hfcsusb._entry_ptr, ptr @rx_int_complete._entry, ptr @rx_int_complete._entry.88, ptr @rx_int_complete._entry.91, ptr @rx_int_complete._entry.94, ptr @rx_int_complete._entry.97, ptr @rx_int_complete._entry_ptr, ptr @rx_int_complete._entry_ptr.90, ptr @rx_int_complete._entry_ptr.93, ptr @rx_int_complete._entry_ptr.96, ptr @rx_int_complete._entry_ptr.99, ptr @rx_iso_complete._entry, ptr @rx_iso_complete._entry.156, ptr @rx_iso_complete._entry.159, ptr @rx_iso_complete._entry.162, ptr @rx_iso_complete._entry.165, ptr @rx_iso_complete._entry.167, ptr @rx_iso_complete._entry.170, ptr @rx_iso_complete._entry_ptr, ptr @rx_iso_complete._entry_ptr.158, ptr @rx_iso_complete._entry_ptr.161, ptr @rx_iso_complete._entry_ptr.164, ptr @rx_iso_complete._entry_ptr.166, ptr @rx_iso_complete._entry_ptr.169, ptr @rx_iso_complete._entry_ptr.172, ptr @setPortMode._entry, ptr @setPortMode._entry_ptr, ptr @setup_hfcsusb._entry, ptr @setup_hfcsusb._entry.245, ptr @setup_hfcsusb._entry.248, ptr @setup_hfcsusb._entry_ptr, ptr @setup_hfcsusb._entry_ptr.247, ptr @setup_hfcsusb._entry_ptr.250, ptr @setup_instance._entry, ptr @setup_instance._entry.25, ptr @setup_instance._entry_ptr, ptr @setup_instance._entry_ptr.27, ptr @start_int_fifo._entry, ptr @start_int_fifo._entry.83, ptr @start_int_fifo._entry_ptr, ptr @start_int_fifo._entry_ptr.85, ptr @start_isoc_chain._entry, ptr @start_isoc_chain._entry.130, ptr @start_isoc_chain._entry.133, ptr @start_isoc_chain._entry.136, ptr @start_isoc_chain._entry_ptr, ptr @start_isoc_chain._entry_ptr.132, ptr @start_isoc_chain._entry_ptr.135, ptr @start_isoc_chain._entry_ptr.138, ptr @stop_int_gracefull._entry, ptr @stop_int_gracefull._entry.215, ptr @stop_int_gracefull._entry_ptr, ptr @stop_int_gracefull._entry_ptr.217, ptr @stop_iso_gracefull._entry, ptr @stop_iso_gracefull._entry.220, ptr @stop_iso_gracefull._entry_ptr, ptr @stop_iso_gracefull._entry_ptr.222, ptr @tx_iso_complete._entry, ptr @tx_iso_complete._entry.175, ptr @tx_iso_complete._entry.178, ptr @tx_iso_complete._entry.180, ptr @tx_iso_complete._entry.183, ptr @tx_iso_complete._entry.185, ptr @tx_iso_complete._entry.188, ptr @tx_iso_complete._entry.191, ptr @tx_iso_complete._entry.193, ptr @tx_iso_complete._entry.195, ptr @tx_iso_complete._entry.198, ptr @tx_iso_complete._entry_ptr, ptr @tx_iso_complete._entry_ptr.177, ptr @tx_iso_complete._entry_ptr.179, ptr @tx_iso_complete._entry_ptr.182, ptr @tx_iso_complete._entry_ptr.184, ptr @tx_iso_complete._entry_ptr.187, ptr @tx_iso_complete._entry_ptr.190, ptr @tx_iso_complete._entry_ptr.192, ptr @tx_iso_complete._entry_ptr.194, ptr @tx_iso_complete._entry_ptr.197, ptr @tx_iso_complete._entry_ptr.200, ptr @write_reg._entry, ptr @write_reg._entry_ptr, ptr @debug, ptr @poll, ptr @hfcsusb_drv, ptr @.str, ptr @.str.1, ptr @hfcsusb_idtab, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @validconf, ptr @.str.10, ptr @.str.13, ptr @conf_str, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @setup_instance.__key, ptr @.str.21, ptr @setup_instance.__key.22, ptr @.str.23, ptr @.str.24, ptr @hfcsusb_cnt, ptr @.str.26, ptr @HFClock, ptr @HFClist, ptr @.str.28, ptr @.str.29, ptr @HFC_NT_LAYER1_STATES, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @HFC_TE_LAYER1_STATES, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @rx_int_complete.eof, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.122, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @urb_errlist, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @rx_iso_complete.eof, ptr @.str.154, ptr @.str.155, ptr @iso_packets, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.181, ptr @.str.186, ptr @.str.189, ptr @.str.196, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.249, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.compoundliteral, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.str.272, ptr @.compoundliteral.273, ptr @.str.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @.compoundliteral.281, ptr @switch.table.ph_state], section "llvm.metadata"
@0 = internal global [276 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_drv to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_idtab to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validconf to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conf_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFClock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFClist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_nt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_NT_LAYER1_STATES to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_nt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_ph_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_te._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_TE_LAYER1_STATES to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_te._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcusb_l2l1D._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcusb_l2l1D._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcusb_l2l1D._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_int_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_int_fifo._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete.eof to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_complete._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_rx_frame._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_isoc_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_isoc_chain._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_isoc_chain._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_isoc_chain._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_errlist to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete.eof to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_packets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_iso_complete._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_iso_complete._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_l1callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_l1callback._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setPortMode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_bchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_bchannel._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_int_gracefull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_int_gracefull._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_iso_gracefull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_iso_gracefull._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcusb_l2l1B._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcusb_l2l1B._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_setup_bch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_setup_bch._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deactivate_bchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_bctrl._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hfcsusb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hfcsusb._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hfcsusb._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcsusb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcsusb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ph_state to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcsusb_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @hfcsusb_drv, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hfcsusb_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @hfcsusb_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcsusb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %cmptbl = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmptbl) #10
  %6 = call ptr @memset(ptr %cmptbl, i32 255, i32 64)
  %idVendor1 = getelementptr i8, ptr %1, i32 936
  %7 = ptrtoint ptr %idVendor1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idVendor1, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %idProduct = getelementptr i8, ptr %1, i32 938
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %vend_idx.0474 = phi i32 [ 65535, %entry ], [ %vend_idx.1, %for.inc.for.body_crit_edge ]
  %i.0472 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %idVendor = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %i.0472, i32 1
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp = icmp eq i16 %9, %11
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %idProduct10 = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %i.0472, i32 2
  %15 = ptrtoint ptr %idProduct10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idProduct10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp12 = icmp eq i16 %14, %16
  %spec.select = select i1 %cmp12, i32 %i.0472, i32 %vend_idx.0474
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %vend_idx.1 = phi i32 [ %vend_idx.0474, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.0472, 1
  %exitcond = icmp eq i32 %inc, 13
  br i1 %exitcond, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %conv = zext i8 %5 to i32
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bAlternateSetting, align 1
  %conv15 = zext i8 %18 to i32
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %19 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minor, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv15, i32 noundef %20, i32 noundef %vend_idx.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %vend_idx.1)
  %cmp17 = icmp eq i32 %vend_idx.1, 65535
  br i1 %cmp17, label %do.end22, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %21 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp26487.not = icmp eq i32 %22, 0
  br i1 %cmp26487.not, label %while.cond.preheader.cleanup290_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup290_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %23 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf, align 8
  %arrayidx111.1 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 1
  %arrayidx111.2 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 2
  %arrayidx111.3 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 3
  %arrayidx111.4 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 4
  %arrayidx111.5 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 5
  %arrayidx111.6 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 6
  %arrayidx111.7 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 7
  %arrayidx111.8 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 8
  %arrayidx111.9 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 9
  %arrayidx111.10 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 10
  %arrayidx111.11 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 11
  %arrayidx111.12 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 12
  %arrayidx111.13 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 13
  %arrayidx111.14 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 14
  %arrayidx111.15 = getelementptr inbounds [16 x i32], ptr %cmptbl, i32 0, i32 15
  br label %while.body

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #13
  br label %cleanup290

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %alt_used.0491 = phi i32 [ 0, %while.body.lr.ph ], [ %alt_used.2, %while.end.while.body_crit_edge ]
  %small_match.0490 = phi i32 [ -1, %while.body.lr.ph ], [ %small_match.2, %while.end.while.body_crit_edge ]
  %alt_idx.0489 = phi i32 [ 0, %while.body.lr.ph ], [ %inc131, %while.end.while.body_crit_edge ]
  %iface_used.0488 = phi ptr [ null, %while.body.lr.ph ], [ %iface_used.2, %while.end.while.body_crit_edge ]
  %add.ptr = getelementptr %struct.usb_host_interface, ptr %24, i32 %alt_idx.0489
  %bAlternateSetting29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 3
  %25 = ptrtoint ptr %bAlternateSetting29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bAlternateSetting29, align 1
  %conv30 = zext i8 %26 to i32
  %endpoint = getelementptr %struct.usb_host_interface, ptr %24, i32 %alt_idx.0489, i32 3
  %27 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %endpoint, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 4
  %29 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNumEndpoints, align 4
  %conv40 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp41475.not = icmp eq i8 %30, 0
  br label %while.body35

while.body35:                                     ; preds = %for.cond107.preheader.while.body35_crit_edge, %while.body
  %arrayidx32486 = phi ptr [ @validconf, %while.body ], [ %arrayidx32, %for.cond107.preheader.while.body35_crit_edge ]
  %alt_used.1485 = phi i32 [ %alt_used.0491, %while.body ], [ %alt_used.2, %for.cond107.preheader.while.body35_crit_edge ]
  %small_match.1484 = phi i32 [ %small_match.0490, %while.body ], [ %small_match.2, %for.cond107.preheader.while.body35_crit_edge ]
  %cfg_used.0483 = phi i32 [ 0, %while.body ], [ %inc130, %for.cond107.preheader.while.body35_crit_edge ]
  %iface_used.1482 = phi ptr [ %iface_used.0488, %while.body ], [ %iface_used.2, %for.cond107.preheader.while.body35_crit_edge ]
  %31 = call ptr @memcpy(ptr %cmptbl, ptr %arrayidx32486, i32 64)
  br i1 %cmp41475.not, label %while.body35.for.cond107.preheader_crit_edge, label %for.body43.lr.ph

while.body35.for.cond107.preheader_crit_edge:     ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond107.preheader

for.body43.lr.ph:                                 ; preds = %while.body35
  %arrayidx98 = getelementptr i32, ptr %arrayidx32486, i32 17
  br label %for.body43

for.cond107.preheader:                            ; preds = %if.end103.for.cond107.preheader_crit_edge, %while.body35.for.cond107.preheader_crit_edge
  %cfg_found.0.lcssa = phi i32 [ 1, %while.body35.for.cond107.preheader_crit_edge ], [ %cfg_found.2, %if.end103.for.cond107.preheader_crit_edge ]
  %32 = ptrtoint ptr %cmptbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmptbl, align 4
  %.off = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %34 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx111.1, align 4
  %.off.1 = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.1)
  %switch.1 = icmp ult i32 %.off.1, 2
  %36 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx111.2, align 4
  %.off.2 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.2)
  %switch.2 = icmp ult i32 %.off.2, 2
  %38 = ptrtoint ptr %arrayidx111.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx111.3, align 4
  %.off.3 = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.3)
  %switch.3 = icmp ult i32 %.off.3, 2
  %40 = ptrtoint ptr %arrayidx111.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx111.4, align 4
  %.off.4 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.4)
  %switch.4 = icmp ult i32 %.off.4, 2
  %42 = ptrtoint ptr %arrayidx111.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx111.5, align 4
  %.off.5 = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.5)
  %switch.5 = icmp ult i32 %.off.5, 2
  %44 = ptrtoint ptr %arrayidx111.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx111.6, align 4
  %.off.6 = add i32 %45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.6)
  %switch.6 = icmp ult i32 %.off.6, 2
  %46 = ptrtoint ptr %arrayidx111.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx111.7, align 4
  %.off.7 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.7)
  %switch.7 = icmp ult i32 %.off.7, 2
  %48 = ptrtoint ptr %arrayidx111.8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx111.8, align 4
  %.off.8 = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.8)
  %switch.8 = icmp ult i32 %.off.8, 2
  %50 = ptrtoint ptr %arrayidx111.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx111.9, align 4
  %.off.9 = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.9)
  %switch.9 = icmp ult i32 %.off.9, 2
  %52 = ptrtoint ptr %arrayidx111.10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx111.10, align 4
  %.off.10 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.10)
  %switch.10 = icmp ult i32 %.off.10, 2
  %54 = ptrtoint ptr %arrayidx111.11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx111.11, align 4
  %.off.11 = add i32 %55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.11)
  %switch.11 = icmp ult i32 %.off.11, 2
  %56 = ptrtoint ptr %arrayidx111.12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx111.12, align 4
  %.off.12 = add i32 %57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.12)
  %switch.12 = icmp ult i32 %.off.12, 2
  %58 = ptrtoint ptr %arrayidx111.13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx111.13, align 4
  %.off.13 = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.13)
  %switch.13 = icmp ult i32 %.off.13, 2
  %60 = ptrtoint ptr %arrayidx111.14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx111.14, align 4
  %.off.14 = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.14)
  %switch.14 = icmp ult i32 %.off.14, 2
  %62 = ptrtoint ptr %arrayidx111.15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx111.15, align 4
  %.off.15 = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.15)
  %switch.15 = icmp ult i32 %.off.15, 2
  %64 = select i1 %switch.15, i1 %switch.14, i1 false
  %65 = select i1 %64, i1 %switch.13, i1 false
  %66 = select i1 %65, i1 %switch.12, i1 false
  %67 = select i1 %66, i1 %switch.11, i1 false
  %68 = select i1 %67, i1 %switch.10, i1 false
  %69 = select i1 %68, i1 %switch.9, i1 false
  %70 = select i1 %69, i1 %switch.8, i1 false
  %71 = select i1 %70, i1 %switch.7, i1 false
  %72 = select i1 %71, i1 %switch.6, i1 false
  %73 = select i1 %72, i1 %switch.5, i1 false
  %74 = select i1 %73, i1 %switch.4, i1 false
  %75 = select i1 %74, i1 %switch.3, i1 false
  %76 = select i1 %75, i1 %switch.2, i1 false
  %77 = select i1 %76, i1 %switch.1, i1 false
  %78 = select i1 %77, i1 %switch, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfg_found.0.lcssa)
  %tobool123.not507 = icmp ne i32 %cfg_found.0.lcssa, 0
  %tobool123.not = select i1 %78, i1 %tobool123.not507, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %small_match.1484, i32 %cfg_used.0483)
  %cmp125 = icmp slt i32 %small_match.1484, %cfg_used.0483
  %or.cond = select i1 %tobool123.not, i1 %cmp125, i1 false
  %iface_used.2 = select i1 %or.cond, ptr %add.ptr, ptr %iface_used.1482
  %small_match.2 = select i1 %or.cond, i32 %cfg_used.0483, i32 %small_match.1484
  %alt_used.2 = select i1 %or.cond, i32 %conv30, i32 %alt_used.1485
  %inc130 = add nuw nsw i32 %cfg_used.0483, 1
  %arrayidx32 = getelementptr [5 x [19 x i32]], ptr @validconf, i32 0, i32 %inc130
  %exitcond505 = icmp eq i32 %inc130, 4
  br i1 %exitcond505, label %while.end, label %for.cond107.preheader.while.body35_crit_edge

for.cond107.preheader.while.body35_crit_edge:     ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body35

for.body43:                                       ; preds = %if.end103.for.body43_crit_edge, %for.body43.lr.ph
  %cfg_found.0479 = phi i32 [ 1, %for.body43.lr.ph ], [ %cfg_found.2, %if.end103.for.body43_crit_edge ]
  %i.1478 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc105, %if.end103.for.body43_crit_edge ]
  %ep.0476 = phi ptr [ %28, %for.body43.lr.ph ], [ %incdec.ptr, %if.end103.for.body43_crit_edge ]
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0476, i32 0, i32 2
  %79 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bEndpointAddress, align 2
  %conv45 = zext i8 %80 to i32
  %and = shl nuw nsw i32 %conv45, 1
  %sub = and i32 %and, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub)
  %cmp46 = icmp ugt i32 %sub, 17
  br i1 %cmp46, label %for.body43.cleanup290_crit_edge, label %if.end49

for.body43.cleanup290_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end49:                                         ; preds = %for.body43
  %and50 = and i32 %conv45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %spec.select443.v = select i1 %tobool51.not, i32 -2, i32 -1
  %spec.select443 = add nsw i32 %spec.select443.v, %sub
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0476, i32 0, i32 3
  %81 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bmAttributes, align 1
  %arrayidx57 = getelementptr [16 x i32], ptr %cmptbl, i32 0, i32 %spec.select443
  %83 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx57, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %84, label %if.end49.if.end65_crit_edge [
    i32 2, label %if.end49.if.end103_crit_edge
    i32 1, label %if.then64
  ]

if.end49.if.end103_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end49.if.end65_crit_edge
  %cfg_found.1 = phi i32 [ 0, %if.then64 ], [ %cfg_found.0479, %if.end49.if.end65_crit_edge ]
  %86 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %82, label %if.end65.if.end103_crit_edge [
    i8 3, label %land.lhs.true95
    i8 2, label %land.lhs.true77
    i8 1, label %land.lhs.true86
  ]

if.end65.if.end103_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

land.lhs.true77:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp79 = icmp eq i32 %88, 4
  %spec.store.select444 = select i1 %cmp79, i32 1, i32 %88
  %89 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.store.select444, ptr %arrayidx57, align 4
  br label %if.end103

land.lhs.true86:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp88 = icmp eq i32 %91, 3
  %spec.store.select445 = select i1 %cmp88, i32 1, i32 %91
  %92 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.store.select445, ptr %arrayidx57, align 4
  br label %if.end103

land.lhs.true95:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %cmp70 = icmp eq i32 %84, 5
  %spec.store.select = select i1 %cmp70, i32 1, i32 %84
  %93 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.store.select, ptr %arrayidx57, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0476, i32 0, i32 5
  %94 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bInterval, align 2
  %conv97 = zext i8 %95 to i32
  %96 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv97)
  %cmp99 = icmp sgt i32 %97, %conv97
  %spec.select446 = select i1 %cmp99, i32 0, i32 %cfg_found.1
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true95, %land.lhs.true86, %land.lhs.true77, %if.end65.if.end103_crit_edge, %if.end49.if.end103_crit_edge
  %cfg_found.2 = phi i32 [ %cfg_found.0479, %if.end49.if.end103_crit_edge ], [ %spec.select446, %land.lhs.true95 ], [ %cfg_found.1, %land.lhs.true86 ], [ %cfg_found.1, %land.lhs.true77 ], [ %cfg_found.1, %if.end65.if.end103_crit_edge ]
  %incdec.ptr = getelementptr %struct.usb_host_endpoint, ptr %ep.0476, i32 1
  %inc105 = add nuw nsw i32 %i.1478, 1
  %exitcond503.not = icmp eq i32 %inc105, %conv40
  br i1 %exitcond503.not, label %if.end103.for.cond107.preheader_crit_edge, label %if.end103.for.body43_crit_edge

if.end103.for.body43_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

if.end103.for.cond107.preheader_crit_edge:        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond107.preheader

while.end:                                        ; preds = %for.cond107.preheader
  %inc131 = add nuw i32 %alt_idx.0489, 1
  %exitcond506.not = icmp eq i32 %inc131, %22
  br i1 %exitcond506.not, label %while.end132, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end132:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %small_match.2)
  %cmp133 = icmp eq i32 %small_match.2, -1
  br i1 %cmp133, label %while.end132.cleanup290_crit_edge, label %if.end136

while.end132.cleanup290_crit_edge:                ; preds = %while.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end136:                                        ; preds = %while.end132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 7176) #14
  %tobool138.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool138.not, label %if.end136.cleanup290_crit_edge, label %if.end140

if.end136.cleanup290_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end140:                                        ; preds = %if.end136
  %name = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 32
  %99 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 10)
  %arrayidx144 = getelementptr [5 x [19 x i32]], ptr @validconf, i32 0, i32 %small_match.2
  %bNumEndpoints148 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %iface_used.2, i32 0, i32 4
  %100 = ptrtoint ptr %bNumEndpoints148 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bNumEndpoints148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp150496.not = icmp eq i8 %101, 0
  br i1 %cmp150496.not, label %if.end140.for.end245_crit_edge, label %for.body152.preheader

if.end140.for.end245_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end245

for.body152.preheader:                            ; preds = %if.end140
  %endpoint143 = getelementptr inbounds %struct.usb_host_interface, ptr %iface_used.2, i32 0, i32 3
  %102 = ptrtoint ptr %endpoint143 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %endpoint143, align 4
  br label %for.body152

for.body152:                                      ; preds = %cleanup.for.body152_crit_edge, %for.body152.preheader
  %packet_size.0500 = phi i32 [ %packet_size.2, %cleanup.for.body152_crit_edge ], [ 64, %for.body152.preheader ]
  %iso_packet_size.0499 = phi i32 [ %iso_packet_size.2, %cleanup.for.body152_crit_edge ], [ 16, %for.body152.preheader ]
  %i.3498 = phi i32 [ %inc244, %cleanup.for.body152_crit_edge ], [ 0, %for.body152.preheader ]
  %ep.1497 = phi ptr [ %ep.2, %cleanup.for.body152_crit_edge ], [ %103, %for.body152.preheader ]
  %bEndpointAddress154 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 2
  %104 = ptrtoint ptr %bEndpointAddress154 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bEndpointAddress154, align 2
  %conv155 = zext i8 %105 to i32
  %and156 = shl nuw nsw i32 %conv155, 1
  %sub157 = and i32 %and156, 254
  %and159 = and i32 %conv155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  %spec.select447.v = select i1 %tobool160.not, i32 -2, i32 -1
  %spec.select447 = add nsw i32 %spec.select447.v, %sub157
  %and164 = and i32 %spec.select447, 7
  %arrayidx165 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164
  %arrayidx166 = getelementptr i32, ptr %arrayidx144, i32 %spec.select447
  %106 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx166, align 4
  %.off449 = add i32 %107, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off449)
  %switch450 = icmp ult i32 %.off449, 2
  br i1 %switch450, label %for.body152.cleanup_crit_edge, label %if.end174

for.body152.cleanup_crit_edge:                    ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end174:                                        ; preds = %for.body152
  %bmAttributes176 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 3
  %108 = ptrtoint ptr %bmAttributes176 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bmAttributes176, align 1
  %110 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %109, label %sw.default [
    i8 3, label %sw.bb
    i8 2, label %sw.bb185
    i8 1, label %sw.bb207
  ]

sw.bb:                                            ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %112, 8
  %shl1.i = shl nuw nsw i32 %conv155, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or182 = or i32 %or.i, 1073741952
  %pipe = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 3
  %113 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or182, ptr %pipe, align 4
  %usb_transfer_mode = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 10
  %114 = ptrtoint ptr %usb_transfer_mode to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %usb_transfer_mode, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 4
  %115 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %wMaxPacketSize, align 4
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  %conv184 = zext i16 %117 to i32
  br label %sw.epilog

sw.bb185:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i, align 8
  %shl.i454 = shl i32 %119, 8
  %shl1.i455 = shl nuw nsw i32 %conv155, 15
  %or.i456 = or i32 %shl1.i455, %shl.i454
  %120 = or i32 %and159, -1073741824
  %or200 = or i32 %or.i456, %120
  %121 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 3
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or200, ptr %121, align 4
  %usb_transfer_mode203 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 10
  %123 = ptrtoint ptr %usb_transfer_mode203 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %usb_transfer_mode203, align 4
  %wMaxPacketSize205 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 4
  %124 = ptrtoint ptr %wMaxPacketSize205 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %wMaxPacketSize205, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125)
  %conv206 = zext i16 %126 to i32
  br label %sw.epilog

sw.bb207:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i, align 8
  %shl.i460 = shl i32 %128, 8
  %shl1.i461 = shl nuw nsw i32 %conv155, 15
  %or.i462 = or i32 %shl.i460, %shl1.i461
  %or.i459 = or i32 %shl1.i461, %shl.i460
  %or216 = or i32 %or.i459, 128
  %or216.sink = select i1 %tobool160.not, i32 %or.i462, i32 %or216
  %129 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 3
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or216.sink, ptr %129, align 4
  %usb_transfer_mode226 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 10
  %131 = ptrtoint ptr %usb_transfer_mode226 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 2, ptr %usb_transfer_mode226, align 4
  %wMaxPacketSize228 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 4
  %132 = ptrtoint ptr %wMaxPacketSize228 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %wMaxPacketSize228, align 4
  %134 = tail call i16 @llvm.bswap.i16(i16 %133)
  %conv229 = zext i16 %134 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #12
  %pipe230 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 3
  %135 = ptrtoint ptr %pipe230 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %pipe230, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb207, %sw.bb185, %sw.bb
  %iso_packet_size.1 = phi i32 [ %iso_packet_size.0499, %sw.default ], [ %conv229, %sw.bb207 ], [ %iso_packet_size.0499, %sw.bb185 ], [ %iso_packet_size.0499, %sw.bb ]
  %packet_size.1 = phi i32 [ %packet_size.0500, %sw.default ], [ %packet_size.0500, %sw.bb207 ], [ %conv206, %sw.bb185 ], [ %conv184, %sw.bb ]
  %pipe231 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 3
  %136 = ptrtoint ptr %pipe231 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pipe231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool232.not = icmp eq i32 %137, 0
  br i1 %tobool232.not, label %sw.epilog.cleanup_crit_edge, label %if.then233

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then233:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and164, ptr %arrayidx165, align 4
  %hw235 = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 2
  %139 = ptrtoint ptr %hw235 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call7.i.i, ptr %hw235, align 4
  %wMaxPacketSize237 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 4
  %140 = ptrtoint ptr %wMaxPacketSize237 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %wMaxPacketSize237, align 4
  %142 = lshr i16 %141, 8
  %conv238 = trunc i16 %142 to i8
  %usb_packet_maxlen = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 4
  %143 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv238, ptr %usb_packet_maxlen, align 4
  %bInterval240 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.1497, i32 0, i32 5
  %144 = ptrtoint ptr %bInterval240 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bInterval240, align 2
  %intervall = getelementptr %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 12, i32 %and164, i32 6
  %146 = ptrtoint ptr %intervall to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %intervall, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then233, %sw.epilog.cleanup_crit_edge, %for.body152.cleanup_crit_edge
  %iso_packet_size.2 = phi i32 [ %iso_packet_size.0499, %for.body152.cleanup_crit_edge ], [ %iso_packet_size.1, %if.then233 ], [ %iso_packet_size.1, %sw.epilog.cleanup_crit_edge ]
  %packet_size.2 = phi i32 [ %packet_size.0500, %for.body152.cleanup_crit_edge ], [ %packet_size.1, %if.then233 ], [ %packet_size.1, %sw.epilog.cleanup_crit_edge ]
  %ep.2 = getelementptr %struct.usb_host_endpoint, ptr %ep.1497, i32 1
  %inc244 = add nuw nsw i32 %i.3498, 1
  %147 = ptrtoint ptr %bNumEndpoints148 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bNumEndpoints148, align 4
  %conv149 = zext i8 %148 to i32
  %cmp150 = icmp ult i32 %inc244, %conv149
  br i1 %cmp150, label %cleanup.for.body152_crit_edge, label %cleanup.for.end245_crit_edge

cleanup.for.end245_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end245

cleanup.for.body152_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body152

for.end245:                                       ; preds = %cleanup.for.end245_crit_edge, %if.end140.for.end245_crit_edge
  %iso_packet_size.0.lcssa = phi i32 [ 16, %if.end140.for.end245_crit_edge ], [ %iso_packet_size.2, %cleanup.for.end245_crit_edge ]
  %packet_size.0.lcssa = phi i32 [ 64, %if.end140.for.end245_crit_edge ], [ %packet_size.2, %cleanup.for.end245_crit_edge ]
  %dev246 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 4
  %149 = ptrtoint ptr %dev246 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i, ptr %dev246, align 8
  %if_used = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 6
  %150 = ptrtoint ptr %if_used to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv, ptr %if_used, align 8
  %alt_used247 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 7
  %151 = ptrtoint ptr %alt_used247 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %alt_used.2, ptr %alt_used247, align 4
  %bMaxPacketSize0 = getelementptr i8, ptr %1, i32 935
  %152 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %bMaxPacketSize0, align 1
  %conv249 = zext i8 %153 to i32
  %ctrl_paksize = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 20
  %154 = ptrtoint ptr %ctrl_paksize to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv249, ptr %ctrl_paksize, align 8
  %arrayidx250 = getelementptr i32, ptr %arrayidx144, i32 16
  %155 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx250, align 4
  %cfg_used251 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 8
  %157 = ptrtoint ptr %cfg_used251 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %cfg_used251, align 8
  %vend_idx252 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 9
  %158 = ptrtoint ptr %vend_idx252 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %vend_idx.1, ptr %vend_idx252, align 4
  %packet_size253 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 10
  %159 = ptrtoint ptr %packet_size253 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %packet_size.0.lcssa, ptr %packet_size253, align 8
  %iso_packet_size254 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 11
  %160 = ptrtoint ptr %iso_packet_size254 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %iso_packet_size.0.lcssa, ptr %iso_packet_size254, align 4
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr.i, align 8
  %shl.i463 = shl i32 %162, 8
  %or258 = or i32 %shl.i463, -2147483520
  %ctrl_in_pipe = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 21
  %163 = ptrtoint ptr %ctrl_in_pipe to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or258, ptr %ctrl_in_pipe, align 4
  %164 = load i32, ptr %add.ptr.i, align 8
  %shl.i464 = shl i32 %164, 8
  %or261 = or i32 %shl.i464, -2147483648
  %ctrl_out_pipe = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 22
  %165 = ptrtoint ptr %ctrl_out_pipe to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or261, ptr %ctrl_out_pipe, align 8
  %driver_info263 = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %vend_idx.1, i32 12
  %166 = ptrtoint ptr %driver_info263 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %driver_info263, align 4
  %168 = inttoptr i32 %167 to ptr
  %call264 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %ctrl_urb = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 17
  %169 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call264, ptr %ctrl_urb, align 4
  %tobool266.not = icmp eq ptr %call264, null
  %vend_name = getelementptr inbounds %struct.hfcsusb_vdata, ptr %168, i32 0, i32 2
  %170 = ptrtoint ptr %vend_name to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vend_name, align 4
  br i1 %tobool266.not, label %do.end270, label %do.end276

do.end270:                                        ; preds = %for.end245
  call void @__sanitizer_cov_trace_pc() #12
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %171) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup290

do.end276:                                        ; preds = %for.end245
  %arrayidx281 = getelementptr [4 x ptr], ptr @conf_str, i32 0, i32 %small_match.2
  %172 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx281, align 4
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, ptr noundef nonnull @.str.3, ptr noundef %171, ptr noundef %173, i32 noundef %conv, i32 noundef %alt_used.2) #13
  %parent = getelementptr i8, ptr %1, i32 136
  %174 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %parent, align 8
  %call284 = tail call fastcc i32 @setup_instance(ptr noundef nonnull %call7.i.i, ptr noundef %175)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %do.end276.cleanup290_crit_edge

do.end276.cleanup290_crit_edge:                   ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

if.end287:                                        ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #12
  %intf288 = getelementptr inbounds %struct.hfcsusb, ptr %call7.i.i, i32 0, i32 5
  %176 = ptrtoint ptr %intf288 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %intf, ptr %intf288, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %177 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup290

cleanup290:                                       ; preds = %if.end287, %do.end276.cleanup290_crit_edge, %do.end270, %if.end136.cleanup290_crit_edge, %while.end132.cleanup290_crit_edge, %for.body43.cleanup290_crit_edge, %do.end22, %while.cond.preheader.cleanup290_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ 0, %if.end287 ], [ -12, %do.end270 ], [ -5, %while.end132.cleanup290_crit_edge ], [ -12, %if.end136.cleanup290_crit_edge ], [ -5, %do.end276.cleanup290_crit_edge ], [ -5, %while.cond.preheader.cleanup290_crit_edge ], [ -5, %for.body43.cleanup290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmptbl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfcsusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef %name) #13
  tail call fastcc void @handle_led(ptr noundef %1, i32 noundef 2)
  %2 = load i32, ptr @debug, align 4
  %and.i = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.256) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 2) #10
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 0) #10
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 1) #10
  %pipe.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 12, i32 7, i32 3
  %3 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 3) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %protocol.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end3.i.if.end7.i_crit_edge

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %l1.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %l1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l1.i, align 8
  %call6.i = tail call i32 @l1_event(ptr noundef %8, i32 noundef 512) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %dch8.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1
  tail call void @mISDN_unregister_device(ptr noundef %dch8.i) #10
  %bch.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 2
  %arrayidx9.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 2, i32 1
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx9.i) #10
  tail call void @mISDN_freebchannel(ptr noundef %bch.i) #10
  %call13.i = tail call i32 @mISDN_freedchannel(ptr noundef %dch8.i) #10
  %ctrl_urb.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_urb.i, align 4
  %tobool14.not.i = icmp eq ptr %10, null
  br i1 %tobool14.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then15.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %12) #10
  %13 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ctrl_urb.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end19.i_crit_edge
  %intf.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i, align 4
  %tobool20.not.i = icmp eq ptr %15, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end23.i.release_hw.exit_crit_edge

if.end23.i.release_hw.exit_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_hw.exit

if.end.i.i.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %release_hw.exit

release_hw.exit:                                  ; preds = %if.end.i.i.i, %if.end23.i.release_hw.exit_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %release_hw.exit
  %cnt.0 = phi i32 [ 0, %release_hw.exit ], [ %inc, %for.cond.for.cond_crit_edge ]
  %hw.0.in = phi ptr [ @HFClist, %release_hw.exit ], [ %hw.0, %for.cond.for.cond_crit_edge ]
  %25 = ptrtoint ptr %hw.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %hw.0 = load ptr, ptr %hw.0.in, align 4
  %cmp.not = icmp eq ptr %hw.0, @HFClist
  %inc = add i32 %cnt.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %tobool.not = icmp eq i32 %cnt.0, 0
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @hfcsusb_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_instance(ptr noundef %hw, ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %do.end

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.20) #13
  br label %do.body1

do.body1:                                         ; preds = %do.end, %entry.do.body1_crit_edge
  %ctrl_lock = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #10
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @setup_instance.__key.22, i16 noundef signext 3) #10
  %dch = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1
  %call9 = tail call i32 @mISDN_initdchannel(ptr noundef %dch, i32 noundef 300, ptr noundef nonnull @ph_state) #10
  %1 = load i32, ptr @debug, align 4
  %and10 = and i32 %1, 65535
  %debug = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 15
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and10, ptr %debug, align 4
  %hw13 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %hw13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hw, ptr %hw13, align 4
  %Dprotocols = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %Dprotocols, align 8
  %send = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 7
  %5 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hfcusb_l2l1D, ptr %send, align 8
  %ctrl = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 9
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hfc_dctrl, ptr %ctrl, align 8
  %pipe = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 7, i32 3
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %do.body1.if.end23_crit_edge, label %if.then21

do.body1.if.end23_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %ech = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 3
  %call22 = tail call i32 @mISDN_initdchannel(ptr noundef %ech, i32 noundef 300, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body1.if.end23_crit_edge
  %Bprotocols = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %Bprotocols, align 4
  %nrbchan = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %nrbchan to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %nrbchan, align 8
  %channelmap = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 5
  %bchannels = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 6
  %arrayidx28 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0
  %nr = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nr, align 4
  %12 = ptrtoint ptr %channelmap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channelmap, align 1
  %conv1.i = or i8 %13, 2
  store i8 %conv1.i, ptr %channelmap, align 1
  %14 = load i32, ptr @debug, align 4
  %debug35 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 21
  %15 = ptrtoint ptr %debug35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %debug35, align 4
  %16 = load i32, ptr @poll, align 4
  %17 = lshr i32 %16, 1
  %conv = trunc i32 %17 to i16
  %call38 = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx28, i16 noundef zeroext 2056, i16 noundef zeroext %conv) #10
  %hw41 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %18 = ptrtoint ptr %hw41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hw, ptr %hw41, align 4
  %send44 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 0, i32 7
  %19 = ptrtoint ptr %send44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hfcusb_l2l1B, ptr %send44, align 4
  %ctrl48 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 0, i32 9
  %20 = ptrtoint ptr %ctrl48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hfc_bctrl, ptr %ctrl48, align 4
  %nr53 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %nr53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %nr53, align 4
  %22 = ptrtoint ptr %bchannels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bchannels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx28, ptr noundef %bchannels, ptr noundef %23) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add.exit_crit_edge

if.end23.list_add.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx28, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %arrayidx28, align 4
  %prev3.i.i = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bchannels, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %bchannels to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx28, ptr %bchannels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end23.list_add.exit_crit_edge
  %arrayidx28.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1
  %nr.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 1
  %28 = ptrtoint ptr %nr.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %nr.1, align 4
  %29 = ptrtoint ptr %channelmap to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %channelmap, align 1
  %conv1.i.1 = or i8 %30, 4
  store i8 %conv1.i.1, ptr %channelmap, align 1
  %31 = load i32, ptr @debug, align 4
  %debug35.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 21
  %32 = ptrtoint ptr %debug35.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %debug35.1, align 4
  %33 = load i32, ptr @poll, align 4
  %34 = lshr i32 %33, 1
  %conv.1 = trunc i32 %34 to i16
  %call38.1 = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx28.1, i16 noundef zeroext 2056, i16 noundef zeroext %conv.1) #10
  %hw41.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 5
  %35 = ptrtoint ptr %hw41.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %hw, ptr %hw41.1, align 4
  %send44.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 0, i32 7
  %36 = ptrtoint ptr %send44.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hfcusb_l2l1B, ptr %send44.1, align 4
  %ctrl48.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 0, i32 9
  %37 = ptrtoint ptr %ctrl48.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @hfc_bctrl, ptr %ctrl48.1, align 4
  %nr53.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %nr53.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %nr53.1, align 4
  %39 = ptrtoint ptr %bchannels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bchannels, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx28.1, ptr noundef %bchannels, ptr noundef %40) #10
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx28.1, ptr %prev1.i.i.1, align 4
  %42 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %arrayidx28.1, align 4
  %prev3.i.i.1 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bchannels, ptr %prev3.i.i.1, align 4
  %44 = ptrtoint ptr %bchannels to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx28.1, ptr %bchannels, align 4
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %bch63 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 0, i32 13
  %45 = ptrtoint ptr %bch63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx28, ptr %bch63, align 4
  %bch68 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 1, i32 13
  %46 = ptrtoint ptr %bch68 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx28, ptr %bch68, align 4
  %bch73 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 2, i32 13
  %47 = ptrtoint ptr %bch73 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx28.1, ptr %bch73, align 4
  %bch78 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 3, i32 13
  %48 = ptrtoint ptr %bch78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx28.1, ptr %bch78, align 4
  %dch82 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 4, i32 12
  %49 = ptrtoint ptr %dch82 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dch, ptr %dch82, align 8
  %dch86 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 5, i32 12
  %50 = ptrtoint ptr %dch86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dch, ptr %dch86, align 4
  %ech87 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 3
  %ech90 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 7, i32 14
  %51 = ptrtoint ptr %ech90 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ech87, ptr %ech90, align 4
  %ech94 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 6, i32 14
  %52 = ptrtoint ptr %ech94 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ech87, ptr %ech94, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 1) #14
  %54 = load i32, ptr @debug, align 4
  %and.i207 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207)
  %tobool.not.i = icmp eq i32 %and.i207, 0
  br i1 %tobool.not.i, label %list_add.exit.1.if.end.i_crit_edge, label %do.end.i

list_add.exit.1.if.end.i_crit_edge:               ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, ptr noundef nonnull @.str.244) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_add.exit.1.if.end.i_crit_edge
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.out_crit_edge, label %if.end4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 4
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 8
  %ctrl_in_pipe.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 21
  %57 = ptrtoint ptr %ctrl_in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl_in_pipe.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %58, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 20) #10
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %b.0.copyload.i = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.not.i, label %if.end14.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %name11.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef %name11.i, ptr noundef nonnull @.str.244) #13
  br label %out

if.end14.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %b.0.copyload.i)
  %cmp15.not.i = icmp eq i8 %b.0.copyload.i, 64
  br i1 %cmp15.not.i, label %if.end26.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %b.0.copyload.i to i32
  %name22.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef %name22.i, ptr noundef nonnull @.str.244, i32 noundef %conv.i) #13
  br label %out

if.end26.i:                                       ; preds = %if.end14.i
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  %if_used.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 6
  %62 = ptrtoint ptr %if_used.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %if_used.i, align 8
  %alt_used.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 7
  %64 = ptrtoint ptr %alt_used.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %alt_used.i, align 4
  %call28.i = tail call i32 @usb_set_interface(ptr noundef %61, i32 noundef %63, i32 noundef %65) #10
  %led_state.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 26
  %66 = ptrtoint ptr %led_state.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %led_state.i, align 1
  %ctrl_read.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 19
  %67 = ptrtoint ptr %ctrl_read.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -64, ptr %ctrl_read.i, align 8
  %bRequest.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 19, i32 1
  %68 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %bRequest.i, align 1
  %wLength.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 19, i32 4
  %69 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 256, ptr %wLength.i, align 2
  %ctrl_write.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18
  %70 = ptrtoint ptr %ctrl_write.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 64, ptr %ctrl_write.i, align 8
  %bRequest33.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18, i32 1
  %71 = ptrtoint ptr %bRequest33.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bRequest33.i, align 1
  %wLength35.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18, i32 4
  %72 = ptrtoint ptr %wLength35.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %wLength35.i, align 2
  %ctrl_urb.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 17
  %73 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl_urb.i, align 4
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 8
  %ctrl_out_pipe.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 22
  %77 = ptrtoint ptr %ctrl_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrl_out_pipe.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 8
  %79 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 10
  %80 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %78, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 21
  %81 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %ctrl_write.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 19
  %83 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 28
  %84 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @ctrl_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 27
  %85 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %hw, ptr %context5.i.i, align 4
  %86 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26.i.if.end.i.i209_crit_edge, label %do.end.i.i

if.end26.i.if.end.i.i209_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i209

do.end.i.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call.i.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, ptr noundef nonnull @.str.252) #13
  br label %if.end.i.i209

if.end.i.i209:                                    ; preds = %do.end.i.i, %if.end26.i.if.end.i.i209_crit_edge
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 8) #10
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 16) #10
  %packet_size.i.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 10
  %87 = ptrtoint ptr %packet_size.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %packet_size.i.i, align 8
  %div.i.i = sdiv i32 %88, 8
  %shl.i.i = shl i32 %div.i.i, 4
  %or.i.i = or i32 %shl.i.i, %div.i.i
  %conv.i.i = trunc i32 %or.i.i to i8
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 7, i8 noundef zeroext %conv.i.i) #10
  %iso_packet_size.i.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 11
  %89 = ptrtoint ptr %iso_packet_size.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iso_packet_size.i.i, align 4
  %conv6.i.i = trunc i32 %90 to i8
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 6, i8 noundef zeroext %conv6.i.i) #10
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 21, i8 noundef zeroext 0) #10
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 20, i8 noundef zeroext 1) #10
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 12, i8 noundef zeroext -116) #10
  %fifos.i.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  %protocol.i.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 27
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end33.i.i.for.body.i.i_crit_edge, %if.end.i.i209
  %i.063.i.i = phi i32 [ 0, %if.end.i.i209 ], [ %inc.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %conv13.i.i = trunc i32 %i.063.i.i to i8
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 15, i8 noundef zeroext %conv13.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.063.i.i)
  %cmp15.i.i = icmp ult i32 %i.063.i.i, 4
  %cond.i.i = select i1 %cmp15.i.i, i32 2048, i32 260
  %max_size.i.i = getelementptr %struct.usb_fifo, ptr %fifos.i.i, i32 %i.063.i.i, i32 5
  %91 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond.i.i, ptr %max_size.i.i, align 4
  %last_urblen.i.i = getelementptr %struct.usb_fifo, ptr %fifos.i.i, i32 %i.063.i.i, i32 15
  %92 = ptrtoint ptr %last_urblen.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %last_urblen.i.i, align 4
  %conv21.i.i = select i1 %cmp15.i.i, i8 0, i8 2
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext -5, i8 noundef zeroext %conv21.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.063.i.i)
  %cmp23.i.i = icmp eq i32 %i.063.i.i, 4
  br i1 %cmp23.i.i, label %if.then25.i.i, label %for.body.i.i.if.end33.i.i_crit_edge

for.body.i.i.if.end33.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %protocol.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp27.i.i = icmp eq i8 %94, 2
  %conv30.i.i = select i1 %cmp27.i.i, i8 8, i8 9
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then25.i.i, %for.body.i.i.if.end33.i.i_crit_edge
  %.sink.i.i = phi i8 [ %conv30.i.i, %if.then25.i.i ], [ 8, %for.body.i.i.if.end33.i.i_crit_edge ]
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext -6, i8 noundef zeroext %.sink.i.i) #10
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 14, i8 noundef zeroext 2) #10
  %inc.i.i = add nuw nsw i32 %i.063.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %if.end98, label %if.end33.i.i.for.body.i.i_crit_edge

if.end33.i.i.for.body.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end98:                                         ; preds = %if.end33.i.i
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 51, i8 noundef zeroext 0) #10
  tail call fastcc void @handle_led(ptr noundef %hw, i32 noundef 1) #10
  %name99 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %95 = load i32, ptr @hfcsusb_cnt, align 4
  %add101 = add i32 %95, 1
  %call102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name99, i32 noundef 19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef %add101)
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, ptr noundef %name99) #13
  %call114 = tail call i32 @mISDN_register_device(ptr noundef %dch, ptr noundef %parent, ptr noundef %name99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end98.out_crit_edge

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end117:                                        ; preds = %if.end98
  %96 = load i32, ptr @hfcsusb_cnt, align 4
  %inc118 = add i32 %96, 1
  store i32 %inc118, ptr @hfcsusb_cnt, align 4
  %call123 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @HFClock) #10
  %97 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @HFClist, i32 0, i32 1), align 4
  %call.i.i210 = tail call zeroext i1 @__list_add_valid(ptr noundef %hw, ptr noundef %97, ptr noundef nonnull @HFClist) #10
  br i1 %call.i.i210, label %if.end.i.i212, label %if.end117.list_add_tail.exit_crit_edge

if.end117.list_add_tail.exit_crit_edge:           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i212:                                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %hw, ptr getelementptr inbounds (%struct.list_head, ptr @HFClist, i32 0, i32 1), align 4
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @HFClist, ptr %hw, align 4
  %prev3.i.i211 = getelementptr inbounds %struct.list_head, ptr %hw, i32 0, i32 1
  %99 = ptrtoint ptr %prev3.i.i211 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %97, ptr %prev3.i.i211, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %hw, ptr %97, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i212, %if.end117.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @HFClock, i32 noundef %call123) #10
  br label %cleanup

out:                                              ; preds = %if.end98.out_crit_edge, %do.end20.i, %do.end9.i, %if.end.i.out_crit_edge
  %err.0 = phi i32 [ %call114, %if.end98.out_crit_edge ], [ -12, %if.end.i.out_crit_edge ], [ 1, %do.end20.i ], [ 1, %do.end9.i ]
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx28.1) #10
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx28) #10
  %call140 = tail call i32 @mISDN_freedchannel(ptr noundef %dch) #10
  tail call void @kfree(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %list_add_tail.exit
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initdchannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ph_state(ptr noundef %dch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %protocol = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.284)
  switch i8 %3, label %entry.if.end8_crit_edge [
    i8 2, label %if.then
    i8 1, label %if.then7
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end12.i_crit_edge, label %if.then.i

if.then.if.end12.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %if.then
  %state.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i = icmp ult i32 %7, 5
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  br i1 %cmp.i, label %do.end.i, label %do.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [5 x ptr], ptr @HFC_NT_LAYER1_STATES, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, ptr noundef nonnull @.str.29, ptr noundef %9) #13
  br label %if.end12.i

do.end6.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i, ptr noundef nonnull @.str.29, i32 noundef %7) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end6.i, %do.end.i, %if.then.if.end12.i_crit_edge
  %state13.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %10 = ptrtoint ptr %state13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state13.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %11, label %if.end12.i.ph_state_nt.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb19.i
    i32 3, label %sw.bb37.i
    i32 4, label %sw.bb45.i
  ]

if.end12.i.ph_state_nt.exit_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ph_state_nt.exit

sw.bb.i:                                          ; preds = %if.end12.i
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call14.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags.i) #10
  %call16.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags.i) #10
  %nt_timer.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %nt_timer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nt_timer.i, align 8
  %timers.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %timers.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %timers.i, align 8
  %16 = and i8 %15, -2
  store i8 %16, ptr %timers.i, align 8
  %vend_idx.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %vend_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vend_idx.i.i, align 4
  %driver_info1.i.i = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %18, i32 12
  %19 = ptrtoint ptr %driver_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_info1.i.i, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 0
  br i1 %cmp.i.i, label %sw.bb.i.ph_state_nt.exit_crit_edge, label %if.end.i.i

sw.bb.i.ph_state_nt.exit_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ph_state_nt.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %led_state.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %led_state.i.i, align 1
  %arrayidx24.i.i = getelementptr %struct.hfcsusb_vdata, ptr %21, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx24.i.i, align 2
  %conv15.i158.i.i = trunc i16 %27 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp16.i159.i.i = icmp slt i16 %27, 0
  %28 = xor i8 %conv15.i158.i.i, -1
  %conv41.i165.i.i = and i8 %25, %28
  %sub26.i160.i.i = sub i8 0, %conv15.i158.i.i
  %or33.i162.i.i = or i8 %25, %sub26.i160.i.i
  %conv41.i205.sink.i.i = select i1 %cmp16.i159.i.i, i8 %or33.i162.i.i, i8 %conv41.i165.i.i
  %29 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41.i205.sink.i.i, ptr %led_state.i.i, align 1
  %conv38.i.i = zext i8 %conv41.i205.sink.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv41.i205.sink.i.i, i8 %25)
  %cmp40.not.i.i = icmp eq i8 %conv41.i205.sink.i.i, %25
  br i1 %cmp40.not.i.i, label %if.end.i.i.ph_state_nt.exit_crit_edge, label %if.then42.i.i

if.end.i.i.ph_state_nt.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ph_state_nt.exit

if.then42.i.i:                                    ; preds = %if.end.i.i
  %30 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then42.i.i.if.end46.i.i_crit_edge, label %do.end.i.i

if.then42.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

do.end.i.i:                                       ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i.i, ptr noundef nonnull @.str.39, i32 noundef 31, i32 noundef %conv38.i.i) #13
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %do.end.i.i, %if.then42.i.i.if.end46.i.i_crit_edge
  %31 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %led_state.i.i, align 1
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 31, i8 noundef zeroext %32) #10
  br label %ph_state_nt.exit

sw.bb19.i:                                        ; preds = %if.end12.i
  %nt_timer20.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 28
  %33 = ptrtoint ptr %nt_timer20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nt_timer20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp21.i = icmp slt i32 %34, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.else30.i

if.then23.i:                                      ; preds = %sw.bb19.i
  %35 = ptrtoint ptr %nt_timer20.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nt_timer20.i, align 8
  %timers25.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 30
  %36 = ptrtoint ptr %timers25.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %timers25.i, align 8
  %38 = and i8 %37, -2
  store i8 %38, ptr %timers25.i, align 8
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 4
  %41 = load i32, ptr @debug, align 4
  %and.i77.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77.i)
  %tobool.not.i78.i = icmp eq i32 %and.i77.i, 0
  br i1 %tobool.not.i78.i, label %if.then23.i.hfcsusb_ph_command.exit.i_crit_edge, label %do.end.i81.i

if.then23.i.hfcsusb_ph_command.exit.i_crit_edge:  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hfcsusb_ph_command.exit.i

do.end.i81.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i79.i = getelementptr inbounds %struct.hfcsusb, ptr %40, i32 0, i32 32
  %call.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i79.i, ptr noundef nonnull @.str.41, i32 noundef 3) #13
  br label %hfcsusb_ph_command.exit.i

hfcsusb_ph_command.exit.i:                        ; preds = %do.end.i81.i, %if.then23.i.hfcsusb_ph_command.exit.i_crit_edge
  tail call fastcc void @write_reg(ptr noundef %40, i8 noundef zeroext 48, i8 noundef zeroext 64) #10
  br label %ph_state_nt.exit

if.else30.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  %timers31.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 30
  %42 = ptrtoint ptr %timers31.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %timers31.i, align 8
  %44 = or i8 %43, 1
  store i8 %44, ptr %timers31.i, align 8
  %45 = ptrtoint ptr %nt_timer20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 10, ptr %nt_timer20.i, align 8
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext -126) #10
  br label %ph_state_nt.exit

sw.bb37.i:                                        ; preds = %if.end12.i
  %nt_timer38.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %nt_timer38.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %nt_timer38.i, align 8
  %timers39.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 30
  %47 = ptrtoint ptr %timers39.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %timers39.i, align 8
  %49 = and i8 %48, -2
  store i8 %49, ptr %timers39.i, align 8
  %Flags43.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call44.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags43.i) #10
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %50 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i83.i = icmp eq ptr %51, null
  br i1 %tobool.not.i83.i, label %sw.bb37.i._queue_data.exit.i_crit_edge, label %if.end.i84.i

sw.bb37.i._queue_data.exit.i_crit_edge:           ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit.i

if.end.i84.i:                                     ; preds = %sw.bb37.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i84.i._queue_data.exit.i_crit_edge, label %if.end.i.i.i, !prof !528

if.end.i84.i._queue_data.exit.i_crit_edge:        ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i84.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %55, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 258, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %58 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %recv.i.i, align 4
  %60 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %59(ptr noundef %61, ptr noundef nonnull %call.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i._queue_data.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i.i._queue_data.exit.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %_queue_data.exit.i

_queue_data.exit.i:                               ; preds = %if.then7.i.i, %if.end.i.i.i._queue_data.exit.i_crit_edge, %if.end.i84.i._queue_data.exit.i_crit_edge, %sw.bb37.i._queue_data.exit.i_crit_edge
  %vend_idx.i85.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 9
  %62 = ptrtoint ptr %vend_idx.i85.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vend_idx.i85.i, align 4
  %driver_info1.i86.i = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %63, i32 12
  %64 = ptrtoint ptr %driver_info1.i86.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %driver_info1.i86.i, align 4
  %66 = inttoptr i32 %65 to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.i87.i = icmp eq i8 %68, 0
  br i1 %cmp.i87.i, label %_queue_data.exit.i.ph_state_nt.exit_crit_edge, label %if.end.i89.i

_queue_data.exit.i.ph_state_nt.exit_crit_edge:    ; preds = %_queue_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ph_state_nt.exit

if.end.i89.i:                                     ; preds = %_queue_data.exit.i
  %led_state.i88.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %led_state.i88.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %led_state.i88.i, align 1
  %arrayidx21.i.i = getelementptr %struct.hfcsusb_vdata, ptr %66, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx21.i.i, align 2
  %conv15.i148.i.i = trunc i16 %72 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp16.i149.i.i = icmp slt i16 %72, 0
  %conv13.i155.i.i = or i8 %70, %conv15.i148.i.i
  %neg.i150.i.i = add i8 %conv15.i148.i.i, -1
  %and.i152.i.i = and i8 %neg.i150.i.i, %70
  %conv41.i205.sink.i90.i = select i1 %cmp16.i149.i.i, i8 %and.i152.i.i, i8 %conv13.i155.i.i
  %73 = ptrtoint ptr %led_state.i88.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv41.i205.sink.i90.i, ptr %led_state.i88.i, align 1
  %conv38.i92.i = zext i8 %conv41.i205.sink.i90.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv41.i205.sink.i90.i, i8 %70)
  %cmp40.not.i93.i = icmp eq i8 %conv41.i205.sink.i90.i, %70
  br i1 %cmp40.not.i93.i, label %if.end.i89.i.ph_state_nt.exit_crit_edge, label %if.then42.i96.i

if.end.i89.i.ph_state_nt.exit_crit_edge:          ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ph_state_nt.exit

if.then42.i96.i:                                  ; preds = %if.end.i89.i
  %74 = load i32, ptr @debug, align 4
  %and.i94.i = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool.not.i95.i = icmp eq i32 %and.i94.i, 0
  br i1 %tobool.not.i95.i, label %if.then42.i96.i.if.end46.i100.i_crit_edge, label %do.end.i99.i

if.then42.i96.i.if.end46.i100.i_crit_edge:        ; preds = %if.then42.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i100.i

do.end.i99.i:                                     ; preds = %if.then42.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i97.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i97.i, ptr noundef nonnull @.str.39, i32 noundef 31, i32 noundef %conv38.i92.i) #13
  br label %if.end46.i100.i

if.end46.i100.i:                                  ; preds = %do.end.i99.i, %if.then42.i96.i.if.end46.i100.i_crit_edge
  %75 = ptrtoint ptr %led_state.i88.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %led_state.i88.i, align 1
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 31, i8 noundef zeroext %76) #10
  br label %ph_state_nt.exit

sw.bb45.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %nt_timer46.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 28
  %77 = ptrtoint ptr %nt_timer46.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %nt_timer46.i, align 8
  %timers47.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 30
  %78 = ptrtoint ptr %timers47.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %timers47.i, align 8
  %80 = and i8 %79, -2
  store i8 %80, ptr %timers47.i, align 8
  br label %ph_state_nt.exit

ph_state_nt.exit:                                 ; preds = %sw.bb45.i, %if.end46.i100.i, %if.end.i89.i.ph_state_nt.exit_crit_edge, %_queue_data.exit.i.ph_state_nt.exit_crit_edge, %if.else30.i, %hfcsusb_ph_command.exit.i, %if.end46.i.i, %if.end.i.i.ph_state_nt.exit_crit_edge, %sw.bb.i.ph_state_nt.exit_crit_edge, %if.end12.i.ph_state_nt.exit_crit_edge
  %call51.i = tail call fastcc i32 @hfcsusb_ph_info(ptr noundef %1) #10
  br label %if.end8

if.then7:                                         ; preds = %entry
  %81 = load i32, ptr @debug, align 4
  %and.i13 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.then7.if.end12.i25_crit_edge, label %if.then.i18

if.then7.if.end12.i25_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i25

if.then.i18:                                      ; preds = %if.then7
  %state.i15 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %82 = ptrtoint ptr %state.i15 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %83)
  %cmp.i16 = icmp ult i32 %83, 9
  %name.i17 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  br i1 %cmp.i16, label %do.end.i21, label %do.end6.i23

do.end.i21:                                       ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i19 = getelementptr [9 x ptr], ptr @HFC_TE_LAYER1_STATES, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i19, align 4
  %call.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i17, ptr noundef nonnull @.str.45, ptr noundef %85) #13
  br label %if.end12.i25

do.end6.i23:                                      ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i17, ptr noundef nonnull @.str.45, i32 noundef %83) #13
  br label %if.end12.i25

if.end12.i25:                                     ; preds = %do.end6.i23, %do.end.i21, %if.then7.if.end12.i25_crit_edge
  %state13.i24 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %86 = ptrtoint ptr %state13.i24 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state13.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %87)
  %88 = icmp ult i32 %87, 9
  br i1 %88, label %switch.hole_check, label %if.end12.i25.if.else30.i42_crit_edge

if.end12.i25.if.else30.i42_crit_edge:             ; preds = %if.end12.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i42

switch.hole_check:                                ; preds = %if.end12.i25
  %switch.maskindex = trunc i32 %87 to i16
  %switch.shifted = lshr i16 489, %switch.maskindex
  %89 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %switch.lobit.not = icmp eq i16 %89, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else30.i42_crit_edge, label %switch.lookup

switch.hole_check.if.else30.i42_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i42

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ph_state, i32 0, i32 %87
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load = load i32, ptr %switch.gep, align 4
  %l125.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %91 = ptrtoint ptr %l125.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %l125.i, align 8
  %call26.i = tail call i32 @l1_event(ptr noundef %92, i32 noundef %switch.load) #10
  %93 = ptrtoint ptr %state13.i24 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr.i = load i32, ptr %state13.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.pr.i)
  %cmp28.i = icmp eq i32 %.pr.i, 7
  br i1 %cmp28.i, label %if.then29.i, label %switch.lookup.if.else30.i42_crit_edge

switch.lookup.if.else30.i42_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30.i42

if.then29.i:                                      ; preds = %switch.lookup
  %vend_idx.i.i26 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %vend_idx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vend_idx.i.i26, align 4
  %driver_info1.i.i27 = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %95, i32 12
  %96 = ptrtoint ptr %driver_info1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %driver_info1.i.i27, align 4
  %98 = inttoptr i32 %97 to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp.i.i28 = icmp eq i8 %100, 0
  br i1 %cmp.i.i28, label %if.then29.i.if.end8_crit_edge, label %if.end.i.i38

if.then29.i.if.end8_crit_edge:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i.i38:                                     ; preds = %if.then29.i
  %led_state.i.i29 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 26
  %101 = ptrtoint ptr %led_state.i.i29 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %led_state.i.i29, align 1
  %arrayidx21.i.i30 = getelementptr %struct.hfcsusb_vdata, ptr %98, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %arrayidx21.i.i30 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx21.i.i30, align 2
  %conv15.i148.i.i31 = trunc i16 %104 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp16.i149.i.i32 = icmp slt i16 %104, 0
  %conv13.i155.i.i33 = or i8 %102, %conv15.i148.i.i31
  %neg.i150.i.i34 = add i8 %conv15.i148.i.i31, -1
  %and.i152.i.i35 = and i8 %neg.i150.i.i34, %102
  %conv41.i205.sink.i.i36 = select i1 %cmp16.i149.i.i32, i8 %and.i152.i.i35, i8 %conv13.i155.i.i33
  %105 = ptrtoint ptr %led_state.i.i29 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv41.i205.sink.i.i36, ptr %led_state.i.i29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv41.i205.sink.i.i36, i8 %102)
  %cmp40.not.i.i37 = icmp eq i8 %conv41.i205.sink.i.i36, %102
  br i1 %cmp40.not.i.i37, label %if.end.i.i38.if.end8_crit_edge, label %if.then42.i.i41

if.end.i.i38.if.end8_crit_edge:                   ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then42.i.i41:                                  ; preds = %if.end.i.i38
  %106 = load i32, ptr @debug, align 4
  %and.i.i39 = and i32 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i40, label %if.then42.i.i41.if.end31.sink.split.i_crit_edge, label %if.then42.i.i41.if.end31.sink.split.sink.split.i_crit_edge

if.then42.i.i41.if.end31.sink.split.sink.split.i_crit_edge: ; preds = %if.then42.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.sink.split.i

if.then42.i.i41.if.end31.sink.split.i_crit_edge:  ; preds = %if.then42.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.i

if.else30.i42:                                    ; preds = %switch.lookup.if.else30.i42_crit_edge, %switch.hole_check.if.else30.i42_crit_edge, %if.end12.i25.if.else30.i42_crit_edge
  %vend_idx.i45.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 9
  %107 = ptrtoint ptr %vend_idx.i45.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vend_idx.i45.i, align 4
  %driver_info1.i46.i = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %108, i32 12
  %109 = ptrtoint ptr %driver_info1.i46.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %driver_info1.i46.i, align 4
  %111 = inttoptr i32 %110 to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp.i47.i = icmp eq i8 %113, 0
  br i1 %cmp.i47.i, label %if.else30.i42.if.end8_crit_edge, label %if.end.i49.i

if.else30.i42.if.end8_crit_edge:                  ; preds = %if.else30.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i49.i:                                     ; preds = %if.else30.i42
  %led_state.i48.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 26
  %114 = ptrtoint ptr %led_state.i48.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %led_state.i48.i, align 1
  %arrayidx24.i.i43 = getelementptr %struct.hfcsusb_vdata, ptr %111, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %arrayidx24.i.i43 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx24.i.i43, align 2
  %conv15.i158.i.i44 = trunc i16 %117 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp16.i159.i.i45 = icmp slt i16 %117, 0
  %118 = xor i8 %conv15.i158.i.i44, -1
  %conv41.i165.i.i46 = and i8 %115, %118
  %sub26.i160.i.i47 = sub i8 0, %conv15.i158.i.i44
  %or33.i162.i.i48 = or i8 %115, %sub26.i160.i.i47
  %conv41.i205.sink.i50.i = select i1 %cmp16.i159.i.i45, i8 %or33.i162.i.i48, i8 %conv41.i165.i.i46
  %119 = ptrtoint ptr %led_state.i48.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv41.i205.sink.i50.i, ptr %led_state.i48.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv41.i205.sink.i50.i, i8 %115)
  %cmp40.not.i53.i = icmp eq i8 %conv41.i205.sink.i50.i, %115
  br i1 %cmp40.not.i53.i, label %if.end.i49.i.if.end8_crit_edge, label %if.then42.i56.i

if.end.i49.i.if.end8_crit_edge:                   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then42.i56.i:                                  ; preds = %if.end.i49.i
  %120 = load i32, ptr @debug, align 4
  %and.i54.i = and i32 %120, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.not.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.then42.i56.i.if.end31.sink.split.i_crit_edge, label %if.then42.i56.i.if.end31.sink.split.sink.split.i_crit_edge

if.then42.i56.i.if.end31.sink.split.sink.split.i_crit_edge: ; preds = %if.then42.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.sink.split.i

if.then42.i56.i.if.end31.sink.split.i_crit_edge:  ; preds = %if.then42.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split.i

if.end31.sink.split.sink.split.i:                 ; preds = %if.then42.i56.i.if.end31.sink.split.sink.split.i_crit_edge, %if.then42.i.i41.if.end31.sink.split.sink.split.i_crit_edge
  %conv38.i52.sink.in.i = phi i8 [ %conv41.i205.sink.i.i36, %if.then42.i.i41.if.end31.sink.split.sink.split.i_crit_edge ], [ %conv41.i205.sink.i50.i, %if.then42.i56.i.if.end31.sink.split.sink.split.i_crit_edge ]
  %led_state.i48.sink.ph.i = phi ptr [ %led_state.i.i29, %if.then42.i.i41.if.end31.sink.split.sink.split.i_crit_edge ], [ %led_state.i48.i, %if.then42.i56.i.if.end31.sink.split.sink.split.i_crit_edge ]
  %conv38.i52.sink.i = zext i8 %conv38.i52.sink.in.i to i32
  %name.i57.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i57.i, ptr noundef nonnull @.str.39, i32 noundef 31, i32 noundef %conv38.i52.sink.i) #13
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.end31.sink.split.sink.split.i, %if.then42.i56.i.if.end31.sink.split.i_crit_edge, %if.then42.i.i41.if.end31.sink.split.i_crit_edge
  %led_state.i48.sink.i = phi ptr [ %led_state.i.i29, %if.then42.i.i41.if.end31.sink.split.i_crit_edge ], [ %led_state.i48.i, %if.then42.i56.i.if.end31.sink.split.i_crit_edge ], [ %led_state.i48.sink.ph.i, %if.end31.sink.split.sink.split.i ]
  %121 = ptrtoint ptr %led_state.i48.sink.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %led_state.i48.sink.i, align 1
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 31, i8 noundef zeroext %122) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end31.sink.split.i, %if.end.i49.i.if.end8_crit_edge, %if.else30.i42.if.end8_crit_edge, %if.end.i.i38.if.end8_crit_edge, %if.then29.i.if.end8_crit_edge, %ph_state_nt.exit, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcusb_l2l1D(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %hw4 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw4, align 4
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 8193, label %sw.bb
    i32 257, label %sw.bb21
    i32 513, label %sw.bb52
    i32 1793, label %sw.bb103
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.do.body7_crit_edge, label %do.end

sw.bb.do.body7_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name, ptr noundef nonnull @.str.59) #13
  br label %do.body7

do.body7:                                         ; preds = %do.end, %sw.bb.do.body7_crit_edge
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call15 = tail call i32 @dchannel_senddata(ptr noundef %ch, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp sgt i32 %call15, 0
  br i1 %cmp17, label %if.then19, label %do.body7.sw.epilog_crit_edge

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %id, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %7, ptr noundef null) #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  %and22 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb21.if.end35_crit_edge, label %do.end27

sw.bb21.if.end35_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %protocol = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp32 = icmp eq i8 %10, 2
  %cond = select i1 %cmp32, ptr @.str.63, ptr @.str.64
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name29, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end27, %sw.bb21.if.end35_crit_edge
  %protocol36 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %protocol36 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protocol36, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp38 = icmp eq i8 %12, 2
  br i1 %cmp38, label %if.then40, label %if.else48

if.then40:                                        ; preds = %if.end35
  %Flags = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %Flags, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool42.not = icmp eq i32 %15, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.then40
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %16 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then43.sw.epilog_crit_edge, label %if.end.i

if.then43.sw.epilog_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then43
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.i, !prof !528

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %21, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %24 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recv.i, align 4
  %26 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %25(ptr noundef %27, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i.sw.epilog_crit_edge, label %if.then7.i

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %sw.epilog

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hfcsusb_ph_command(ptr noundef %1, i8 noundef zeroext 2)
  %call46 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %Flags) #10
  br label %sw.epilog

if.else48:                                        ; preds = %if.end35
  %28 = load i32, ptr @debug, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i142 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i142, label %if.else48.hfcsusb_ph_command.exit_crit_edge, label %do.end.i

if.else48.hfcsusb_ph_command.exit_crit_edge:      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %hfcsusb_ph_command.exit

do.end.i:                                         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, ptr noundef nonnull @.str.41, i32 noundef 1) #13
  br label %hfcsusb_ph_command.exit

hfcsusb_ph_command.exit:                          ; preds = %do.end.i, %if.else48.hfcsusb_ph_command.exit_crit_edge
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext 20) #10
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext 4) #10
  %l1 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %29 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l1, align 8
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %cb, align 1
  %call50 = tail call i32 @l1_event(ptr noundef %30, i32 noundef %32) #10
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %33 = load i32, ptr @debug, align 4
  %and53 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sw.bb52.if.end63_crit_edge, label %do.end58

sw.bb52.if.end63_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end58:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %name60 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name60, ptr noundef nonnull @.str.59) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %sw.bb52.if.end63_crit_edge
  %Flags64 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %call65 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags64) #10
  %protocol66 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %protocol66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %protocol66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp68 = icmp eq i8 %35, 2
  br i1 %cmp68, label %if.then70, label %if.else98

if.then70:                                        ; preds = %if.end63
  %36 = load i32, ptr @debug, align 4
  %and.i144 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %if.then70.hfcsusb_ph_command.exit150_crit_edge, label %do.end.i148

if.then70.hfcsusb_ph_command.exit150_crit_edge:   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %hfcsusb_ph_command.exit150

do.end.i148:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %name.i146 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i146, ptr noundef nonnull @.str.41, i32 noundef 3) #13
  br label %hfcsusb_ph_command.exit150

hfcsusb_ph_command.exit150:                       ; preds = %do.end.i148, %if.then70.hfcsusb_ph_command.exit150_crit_edge
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext 64) #10
  %lock78 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %call80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock78) #10
  %squeue = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #10
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 13
  %37 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_skb, align 4
  %tobool85.not = icmp eq ptr %38, null
  br i1 %tobool85.not, label %hfcsusb_ph_command.exit150.if.end89_crit_edge, label %if.then86

hfcsusb_ph_command.exit150.if.end89_crit_edge:    ; preds = %hfcsusb_ph_command.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then86:                                        ; preds = %hfcsusb_ph_command.exit150
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %38) #10
  %39 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %hfcsusb_ph_command.exit150.if.end89_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 14
  %40 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 9
  %41 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_skb, align 4
  %tobool90.not = icmp eq ptr %42, null
  br i1 %tobool90.not, label %if.end89.if.end94_crit_edge, label %if.then91

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %42) #10
  %43 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end89.if.end94_crit_edge
  %call96 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags64) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock78, i32 noundef %call80) #10
  br label %sw.epilog

if.else98:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %l199 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %44 = ptrtoint ptr %l199 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %l199, align 8
  %46 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %cb, align 1
  %call101 = tail call i32 @l1_event(ptr noundef %45, i32 noundef %47) #10
  br label %sw.epilog

sw.bb103:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = tail call fastcc i32 @hfcsusb_ph_info(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb103, %if.else98, %if.end94, %hfcsusb_ph_command.exit, %if.else, %if.then7.i, %if.end.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then43.sw.epilog_crit_edge, %if.then19, %do.body7.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call104, %sw.bb103 ], [ 0, %if.end94 ], [ %call101, %if.else98 ], [ 0, %if.else ], [ %call50, %hfcsusb_ph_command.exit ], [ 0, %if.then19 ], [ %call15, %do.body7.sw.epilog_crit_edge ], [ 0, %if.then43.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 0, %if.end.i.i.sw.epilog_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_dctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw4 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw4, align 4
  %debug = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 15
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef %cmd, ptr noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %cmd, label %sw.default [
    i32 256, label %sw.bb
    i32 512, label %sw.bb15
    i32 768, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb
  %7 = load i32, ptr @debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %do.end.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %id.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 1
  %conv.i = zext i8 %11 to i32
  %12 = tail call ptr @llvm.returnaddress(i32 0) #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name.i, ptr noundef nonnull @.str.77, i32 noundef %9, i32 noundef %conv.i, ptr noundef %12) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then8.if.end.i_crit_edge
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %dch4.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1
  %Flags.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 1
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags.i) #10
  %Flags6.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 3, i32 1
  %call7.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags6.i) #10
  tail call fastcc void @hfcsusb_start_endpoint(ptr noundef %1, i32 noundef 2) #10
  %channel9.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp11.i = icmp eq i8 %16, 1
  br i1 %cmp11.i, label %if.then13.i, label %if.end3.i.if.end21.i_crit_edge

if.end3.i.if.end21.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end3.i
  %pipe.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 12, i32 7, i32 3
  %17 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.i = icmp eq i32 %18, 0
  br i1 %tobool14.not.i, label %if.then13.i.cleanup_crit_edge, label %if.then15.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.i:                                      ; preds = %if.then13.i
  tail call fastcc void @hfcsusb_start_endpoint(ptr noundef %1, i32 noundef 3) #10
  tail call void @_set_bit(i32 noundef 6, ptr noundef %Flags6.i) #10
  %peer.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 6
  %19 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then15.i.if.end21.i_crit_edge, label %if.end.i.i

if.then15.i.if.end21.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end.i.i:                                       ; preds = %if.then15.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end21.i_crit_edge, label %if.end.i.i.i, !prof !528

if.end.i.i.if.end21.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 258, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 8
  %27 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %recv.i.i, align 4
  %29 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %call.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.i.if.end21.i_crit_edge, label %if.then7.i.i

if.end.i.i.i.if.end21.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then7.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then7.i.i, %if.end.i.i.i.if.end21.i_crit_edge, %if.end.i.i.if.end21.i_crit_edge, %if.then15.i.if.end21.i_crit_edge, %if.end3.i.if.end21.i_crit_edge
  %initdone.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 31
  %31 = ptrtoint ptr %initdone.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %initdone.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not.i = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arg, align 4
  br i1 %tobool22.not.i, label %if.then23.i, label %if.else40.i

if.then23.i:                                      ; preds = %if.end21.i
  %conv25.i = trunc i32 %34 to i8
  %protocol26.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %35 = ptrtoint ptr %protocol26.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv25.i, ptr %protocol26.i, align 2
  %36 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp28.i = icmp eq i32 %37, 1
  br i1 %cmp28.i, label %if.then30.i, label %if.then23.i.if.end36.i_crit_edge

if.then23.i.if.end36.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.then23.i
  %call32.i = tail call i32 @create_l1(ptr noundef %dch4.i, ptr noundef nonnull @hfc_l1callback) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.end36.i_crit_edge, label %if.then30.i.cleanup_crit_edge

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i.if.end36.i_crit_edge, %if.then23.i.if.end36.i_crit_edge
  %38 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i104.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i104.i, label %if.end36.i.setPortMode.exit.i_crit_edge, label %do.end.i.i

if.end36.i.setPortMode.exit.i_crit_edge:          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %setPortMode.exit.i

do.end.i.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %39 = ptrtoint ptr %protocol26.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protocol26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp.i.i = icmp eq i8 %40, 1
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.64, ptr @.str.63
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef %name.i.i, ptr noundef nonnull @.str.207, ptr noundef nonnull %cond.i.i) #13
  br label %setPortMode.exit.i

setPortMode.exit.i:                               ; preds = %do.end.i.i, %if.end36.i.setPortMode.exit.i_crit_edge
  %41 = ptrtoint ptr %protocol26.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %protocol26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp4.i.i = icmp eq i8 %42, 1
  %..i.i = select i1 %cmp4.i.i, i8 64, i8 68
  %.34.i.i = select i1 %cmp4.i.i, i8 0, i8 9
  %.35.i.i = select i1 %cmp4.i.i, i8 15, i8 108
  %.36.i.i = select i1 %cmp4.i.i, i8 19, i8 17
  %.37.i.i = select i1 %cmp4.i.i, i8 3, i8 1
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 49, i8 noundef zeroext %..i.i) #10
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 50, i8 noundef zeroext %.34.i.i) #10
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 55, i8 noundef zeroext %.35.i.i) #10
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %.36.i.i) #10
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %.37.i.i) #10
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arg, align 4
  %protocol38.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %45 = ptrtoint ptr %protocol38.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %protocol38.i, align 4
  %46 = ptrtoint ptr %initdone.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %initdone.i, align 1
  br label %if.end47.i

if.else40.i:                                      ; preds = %if.end21.i
  %protocol42.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %47 = ptrtoint ptr %protocol42.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %protocol42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %48)
  %cmp43.not.i = icmp eq i32 %34, %48
  br i1 %cmp43.not.i, label %if.else40.i.if.end47.i_crit_edge, label %if.else40.i.cleanup_crit_edge

if.else40.i.cleanup_crit_edge:                    ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else40.i.if.end47.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else40.i.if.end47.i_crit_edge, %setPortMode.exit.i
  %protocol48.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %49 = ptrtoint ptr %protocol48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %protocol48.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %50, label %if.end47.i.if.end63.i_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 1, label %land.lhs.true57.i
  ]

if.end47.i.if.end63.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %if.end47.i
  %state.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp52.i = icmp eq i32 %53, 3
  br i1 %cmp52.i, label %land.lhs.true.i.if.then62.i_crit_edge, label %land.lhs.true.i.if.end63.i_crit_edge

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true.i.if.then62.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

land.lhs.true57.i:                                ; preds = %if.end47.i
  %state59.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %state59.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %55)
  %cmp60.i = icmp eq i32 %55, 7
  br i1 %cmp60.i, label %land.lhs.true57.i.if.then62.i_crit_edge, label %land.lhs.true57.i.if.end63.i_crit_edge

land.lhs.true57.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true57.i.if.then62.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

if.then62.i:                                      ; preds = %land.lhs.true57.i.if.then62.i_crit_edge, %land.lhs.true.i.if.then62.i_crit_edge
  %peer.i106.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %56 = ptrtoint ptr %peer.i106.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %peer.i106.i, align 4
  %tobool.not.i107.i = icmp eq ptr %57, null
  br i1 %tobool.not.i107.i, label %if.then62.i.if.end63.i_crit_edge, label %if.end.i110.i

if.then62.i.if.end63.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.end.i110.i:                                    ; preds = %if.then62.i
  %call.i.i.i.i108.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i109.i = icmp eq ptr %call.i.i.i.i108.i, null
  br i1 %tobool.not.i.i.i109.i, label %if.end.i110.i.if.end63.i_crit_edge, label %if.end.i.i115.i, !prof !528

if.end.i110.i.if.end63.i_crit_edge:               ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.end.i.i115.i:                                  ; preds = %if.end.i110.i
  %data.i.i.i.i111.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i108.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i.i111.i, align 4
  %add.ptr.i.i.i.i112.i = getelementptr i8, ptr %59, i32 8
  store ptr %add.ptr.i.i.i.i112.i, ptr %data.i.i.i.i111.i, align 4
  %tail.i.i.i.i113.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i108.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i.i113.i, align 8
  %add.ptr1.i.i.i.i114.i = getelementptr i8, ptr %61, i32 8
  store ptr %add.ptr1.i.i.i.i114.i, ptr %tail.i.i.i.i113.i, align 8
  %cb.i.i116.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i108.i, i32 0, i32 3
  %62 = ptrtoint ptr %cb.i.i116.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 258, ptr %cb.i.i116.i, align 1
  %id6.i.i117.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i108.i, i32 0, i32 3, i32 4
  %63 = ptrtoint ptr %id6.i.i117.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 65535, ptr %id6.i.i117.i, align 1
  %recv.i118.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %64 = ptrtoint ptr %recv.i118.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %recv.i118.i, align 4
  %66 = ptrtoint ptr %peer.i106.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %peer.i106.i, align 4
  %call5.i119.i = tail call i32 %65(ptr noundef %67, ptr noundef nonnull %call.i.i.i.i108.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i119.i)
  %tobool6.not.i120.i = icmp eq i32 %call5.i119.i, 0
  br i1 %tobool6.not.i120.i, label %if.end.i.i115.i.if.end63.i_crit_edge, label %if.then7.i121.i

if.end.i.i115.i.if.end63.i_crit_edge:             ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then7.i121.i:                                  ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i108.i) #10
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then7.i121.i, %if.end.i.i115.i.if.end63.i_crit_edge, %if.end.i110.i.if.end63.i_crit_edge, %if.then62.i.if.end63.i_crit_edge, %land.lhs.true57.i.if.end63.i_crit_edge, %land.lhs.true.i.if.end63.i_crit_edge, %if.end47.i.if.end63.i_crit_edge
  %ch64.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %68 = ptrtoint ptr %ch64.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ch, ptr %ch64.i, align 4
  %call65.i = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call65.i, label %if.end63.i.if.then13_crit_edge, label %do.end69.i

if.end63.i.if.then13_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

do.end69.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %name71.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name71.i, ptr noundef nonnull @.str.77) #13
  br label %if.then13

if.else:                                          ; preds = %sw.bb
  %channel.i81 = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %channel.i81 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %channel.i81, align 1
  %conv.i82 = zext i8 %70 to i32
  %71 = add i8 %70, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %71)
  %72 = icmp ult i8 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.i = icmp eq i32 %6, 0
  %or.cond = select i1 %72, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %73 = load i32, ptr @debug, align 4
  %and.i84 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %if.end10.i.if.end15.i_crit_edge, label %do.end.i88

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

do.end.i88:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i86 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %name.i86, ptr noundef nonnull @.str.209, i32 noundef %conv.i82) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i88, %if.end10.i.if.end15.i_crit_edge
  %74 = ptrtoint ptr %channel.i81 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %channel.i81, align 1
  %conv19.i = zext i8 %75 to i32
  %sub.i = add nsw i32 %conv19.i, -1
  %Flags.i89 = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 2, i32 %sub.i, i32 2
  %call20.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23.i:                                       ; preds = %if.end15.i
  %arrayidx.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 2, i32 %sub.i
  %76 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arg, align 4
  %protocol25.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %78 = ptrtoint ptr %protocol25.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %protocol25.i, align 4
  %ch27.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %79 = ptrtoint ptr %ch27.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.i, ptr %ch27.i, align 4
  %call28.i = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call28.i, label %if.end23.i.if.then13_crit_edge, label %do.end32.i

if.end23.i.if.then13_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

do.end32.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %name34.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name34.i, ptr noundef nonnull @.str.209) #13
  br label %if.then13

if.then13:                                        ; preds = %do.end32.i, %if.end23.i.if.then13_crit_edge, %do.end69.i, %if.end63.i.if.then13_crit_edge
  %open = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 29
  %80 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %open, align 4
  %inc = add i32 %81, 1
  store i32 %inc, ptr %open, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %open16 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 29
  %82 = ptrtoint ptr %open16 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %open16, align 4
  %dec = add i32 %83, -1
  store i32 %dec, ptr %open16, align 4
  %84 = load i32, ptr @debug, align 4
  %and17 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb15.if.end30_crit_edge, label %do.end22

sw.bb15.if.end30_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end22:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %name24 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %id = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 4
  %87 = tail call ptr @llvm.returnaddress(i32 0)
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name24, ptr noundef nonnull @.str.69, i32 noundef %86, ptr noundef %87, i32 noundef %dec) #13
  %88 = ptrtoint ptr %open16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %open16, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end22, %sw.bb15.if.end30_crit_edge
  %89 = phi i32 [ %.pr, %do.end22 ], [ %dec, %sw.bb15.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool32.not = icmp eq i32 %89, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 2)
  %pipe = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 12, i32 7, i32 3
  %90 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool34.not = icmp eq i32 %91, 0
  br i1 %tobool34.not, label %if.then33.if.end36_crit_edge, label %if.then35

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef 3)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then33.if.end36_crit_edge
  tail call fastcc void @handle_led(ptr noundef %1, i32 noundef 1)
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end30.if.end37_crit_edge
  tail call void @module_put(ptr noundef null) #10
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %92 = load i32, ptr @debug, align 4
  %and.i91 = and i32 %92, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %sw.bb38.if.end.i97_crit_edge, label %do.end.i96

sw.bb38.if.end.i97_crit_edge:                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i97

do.end.i96:                                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  %name.i93 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %93 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arg, align 4
  %channel.i94 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %95 = ptrtoint ptr %channel.i94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %channel.i94, align 4
  %call.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name.i93, ptr noundef nonnull @.str.224, i32 noundef %94, i32 noundef %96) #13
  br label %if.end.i97

if.end.i97:                                       ; preds = %do.end.i96, %sw.bb38.if.end.i97_crit_edge
  %97 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cond.i = icmp eq i32 %98, 0
  br i1 %cond.i, label %sw.bb.i, label %do.end5.i

sw.bb.i:                                          ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 7, ptr %arg, align 4
  br label %cleanup

do.end5.i:                                        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  %name7.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %name7.i, ptr noundef nonnull @.str.224, i32 noundef %98) #13
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %100 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug, align 4
  %and41 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %sw.default.cleanup_crit_edge, label %do.end46

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end46:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %name48 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name48, ptr noundef nonnull @.str.69, i32 noundef %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %sw.default.cleanup_crit_edge, %do.end5.i, %sw.bb.i, %if.end37, %if.then13, %if.end15.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.else40.i.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end46 ], [ -22, %sw.default.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %if.then13 ], [ 0, %sw.bb.i ], [ -22, %do.end5.i ], [ -16, %if.end15.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -93, %if.else40.i.cleanup_crit_edge ], [ %call32.i, %if.then30.i.cleanup_crit_edge ], [ -22, %if.then13.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcusb_l2l1B(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.228) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %cb, align 1
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 8193, label %do.body4
    i32 257, label %sw.bb29
    i32 513, label %sw.bb38
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call12 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  %6 = load i32, ptr @debug, align 4
  %and14 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body4.if.end24_crit_edge, label %do.end19

do.body4.if.end24_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end19:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %name21 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %name21, ptr noundef nonnull @.str.228, i32 noundef %call12) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %do.body4.if.end24_crit_edge
  %7 = tail call i32 @llvm.smin.i32(i32 %call12, i32 0)
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %sw.bb29.if.then36_crit_edge

sw.bb29.if.then36_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.end34:                                         ; preds = %sw.bb29
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  %sub = add i32 %9, -1
  tail call fastcc void @hfcsusb_start_endpoint(ptr noundef %1, i32 noundef %sub)
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %protocol, align 4
  %call33 = tail call fastcc i32 @hfcsusb_setup_bch(ptr noundef %ch, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool35.not = icmp eq i32 %call33, 0
  br i1 %tobool35.not, label %if.end34.if.then36_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %sw.bb29.if.then36_crit_edge
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %12 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then36.if.then40_crit_edge, label %if.end.i

if.then36.if.then40_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end.i:                                         ; preds = %if.then36
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then40_crit_edge, label %if.end.i.i, !prof !528

if.end.i.if.then40_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %20 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %recv.i, align 4
  %22 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %21(ptr noundef %23, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i.if.then40_crit_edge, label %if.end.i.i.if.then40.sink.split_crit_edge

if.end.i.i.if.then40.sink.split_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.sink.split

if.end.i.i.if.then40_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

sw.bb38:                                          ; preds = %if.end
  tail call fastcc void @deactivate_bchannel(ptr noundef %ch)
  %peer.i65 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %24 = ptrtoint ptr %peer.i65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer.i65, align 4
  %tobool.not.i66 = icmp eq ptr %25, null
  br i1 %tobool.not.i66, label %sw.bb38.if.then40_crit_edge, label %if.end.i69

sw.bb38.if.then40_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end.i69:                                       ; preds = %sw.bb38
  %call.i.i.i.i67 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i68 = icmp eq ptr %call.i.i.i.i67, null
  br i1 %tobool.not.i.i.i68, label %if.end.i69.if.then40_crit_edge, label %if.end.i.i74, !prof !528

if.end.i69.if.then40_crit_edge:                   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end.i.i74:                                     ; preds = %if.end.i69
  %data.i.i.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i67, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i70, align 4
  %add.ptr.i.i.i.i71 = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr.i.i.i.i71, ptr %data.i.i.i.i70, align 4
  %tail.i.i.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i67, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i.i72, align 8
  %add.ptr1.i.i.i.i73 = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr1.i.i.i.i73, ptr %tail.i.i.i.i72, align 8
  %cb.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i67, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i75 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 514, ptr %cb.i.i75, align 1
  %id6.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i67, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id6.i.i76 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 65535, ptr %id6.i.i76, align 1
  %recv.i77 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %32 = ptrtoint ptr %recv.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %recv.i77, align 4
  %34 = ptrtoint ptr %peer.i65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer.i65, align 4
  %call5.i78 = tail call i32 %33(ptr noundef %35, ptr noundef nonnull %call.i.i.i.i67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i78)
  %tobool6.not.i79 = icmp eq i32 %call5.i78, 0
  br i1 %tobool6.not.i79, label %if.end.i.i74.if.then40_crit_edge, label %if.end.i.i74.if.then40.sink.split_crit_edge

if.end.i.i74.if.then40.sink.split_crit_edge:      ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.sink.split

if.end.i.i74.if.then40_crit_edge:                 ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40.sink.split:                             ; preds = %if.end.i.i74.if.then40.sink.split_crit_edge, %if.end.i.i.if.then40.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end.i.i.if.then40.sink.split_crit_edge ], [ %call.i.i.i.i67, %if.end.i.i74.if.then40.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #10
  br label %if.then40

if.then40:                                        ; preds = %if.then40.sink.split, %if.end.i.i74.if.then40_crit_edge, %if.end.i69.if.then40_crit_edge, %sw.bb38.if.then40_crit_edge, %if.end.i.i.if.then40_crit_edge, %if.end.i.if.then40_crit_edge, %if.then36.if.then40_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end34.cleanup_crit_edge, %if.end24, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end24 ], [ 0, %if.then40 ], [ -22, %if.end.cleanup_crit_edge ], [ %call33, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 21
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240, i32 noundef %cmd, ptr noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.290)
  switch i32 %cmd, label %do.end8 [
    i32 38402, label %if.end.sw.epilog_crit_edge
    i32 38658, label %if.end.sw.epilog_crit_edge19
    i32 38914, label %if.end.sw.epilog_crit_edge20
    i32 512, label %sw.bb2
    i32 768, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge20:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge19:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #10
  tail call fastcc void @deactivate_bchannel(ptr noundef %ch)
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %peer, align 4
  tail call void @module_put(ptr noundef null) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #10
  br label %sw.epilog

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.240, i32 noundef %cmd) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %sw.bb4, %sw.bb2, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge19, %if.end.sw.epilog_crit_edge20
  %ret.0 = phi i32 [ -22, %do.end8 ], [ %call.i, %sw.bb4 ], [ 0, %sw.bb2 ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge19 ], [ -22, %if.end.sw.epilog_crit_edge20 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_freedchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_led(ptr noundef %hw, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vend_idx = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %vend_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vend_idx, align 4
  %driver_info1 = getelementptr [14 x %struct.usb_device_id], ptr @hfcsusb_idtab, i32 0, i32 %1, i32 12
  %2 = ptrtoint ptr %driver_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info1, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %led_state = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 26
  %7 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %led_state, align 1
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
    i32 8, label %sw.bb31
    i32 9, label %sw.bb34
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %led_bits = getelementptr inbounds %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %led_bits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %led_bits, align 2
  %conv15.i = trunc i16 %11 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16.i = icmp slt i16 %11, 0
  %conv13.i = or i8 %8, %conv15.i
  %neg.i = add i8 %conv15.i, -1
  %and.i = and i8 %neg.i, %8
  %storemerge210 = select i1 %cmp16.i, i8 %and.i, i8 %conv13.i
  %12 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge210, ptr %led_state, align 1
  %arrayidx5 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx5, align 2
  %conv15.i85 = trunc i16 %14 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp16.i86 = icmp slt i16 %14, 0
  br i1 %cmp16.i86, label %cond.end29.i, label %if.else35.i

cond.end29.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i = sub i8 0, %conv15.i85
  %15 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %led_state, align 1
  %or33.i = or i8 %16, %sub26.i
  br label %set_led_bit.exit87

if.else35.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %led_state, align 1
  %19 = xor i8 %conv15.i85, -1
  %conv41.i = and i8 %18, %19
  br label %set_led_bit.exit87

set_led_bit.exit87:                               ; preds = %if.else35.i, %cond.end29.i
  %storemerge211 = phi i8 [ %conv41.i, %if.else35.i ], [ %or33.i, %cond.end29.i ]
  %20 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge211, ptr %led_state, align 1
  %arrayidx7 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx7, align 2
  %conv15.i88 = trunc i16 %22 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp16.i89 = icmp slt i16 %22, 0
  br i1 %cmp16.i89, label %cond.end29.i93, label %if.else35.i96

cond.end29.i93:                                   ; preds = %set_led_bit.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i90 = sub i8 0, %conv15.i88
  %23 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %led_state, align 1
  %or33.i92 = or i8 %24, %sub26.i90
  br label %set_led_bit.exit97

if.else35.i96:                                    ; preds = %set_led_bit.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %led_state, align 1
  %27 = xor i8 %conv15.i88, -1
  %conv41.i95 = and i8 %26, %27
  br label %set_led_bit.exit97

set_led_bit.exit97:                               ; preds = %if.else35.i96, %cond.end29.i93
  %storemerge212 = phi i8 [ %conv41.i95, %if.else35.i96 ], [ %or33.i92, %cond.end29.i93 ]
  %28 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge212, ptr %led_state, align 1
  %arrayidx9 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx9, align 2
  %conv15.i98 = trunc i16 %30 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp16.i99 = icmp slt i16 %30, 0
  br i1 %cmp16.i99, label %cond.end29.i103, label %if.else35.i106

cond.end29.i103:                                  ; preds = %set_led_bit.exit97
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i100 = sub i8 0, %conv15.i98
  %31 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %led_state, align 1
  %or33.i102 = or i8 %32, %sub26.i100
  br label %sw.epilog.sink.split

if.else35.i106:                                   ; preds = %set_led_bit.exit97
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %led_state, align 1
  %35 = xor i8 %conv15.i98, -1
  %conv41.i105 = and i8 %34, %35
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end
  %led_bits11 = getelementptr inbounds %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %led_bits11 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %led_bits11, align 2
  %conv15.i108 = trunc i16 %37 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp16.i109 = icmp slt i16 %37, 0
  %38 = xor i8 %conv15.i108, -1
  %conv41.i115 = and i8 %8, %38
  %sub26.i110 = sub i8 0, %conv15.i108
  %or33.i112 = or i8 %8, %sub26.i110
  %storemerge = select i1 %cmp16.i109, i8 %or33.i112, i8 %conv41.i115
  %39 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %led_state, align 1
  %arrayidx14 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx14, align 2
  %conv15.i118 = trunc i16 %41 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp16.i119 = icmp slt i16 %41, 0
  br i1 %cmp16.i119, label %cond.end29.i123, label %if.else35.i126

cond.end29.i123:                                  ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i120 = sub i8 0, %conv15.i118
  %42 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %led_state, align 1
  %or33.i122 = or i8 %43, %sub26.i120
  br label %set_led_bit.exit127

if.else35.i126:                                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %led_state, align 1
  %46 = xor i8 %conv15.i118, -1
  %conv41.i125 = and i8 %45, %46
  br label %set_led_bit.exit127

set_led_bit.exit127:                              ; preds = %if.else35.i126, %cond.end29.i123
  %storemerge208 = phi i8 [ %conv41.i125, %if.else35.i126 ], [ %or33.i122, %cond.end29.i123 ]
  %47 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge208, ptr %led_state, align 1
  %arrayidx16 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx16, align 2
  %conv15.i128 = trunc i16 %49 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp16.i129 = icmp slt i16 %49, 0
  br i1 %cmp16.i129, label %cond.end29.i133, label %if.else35.i136

cond.end29.i133:                                  ; preds = %set_led_bit.exit127
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i130 = sub i8 0, %conv15.i128
  %50 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %led_state, align 1
  %or33.i132 = or i8 %51, %sub26.i130
  br label %set_led_bit.exit137

if.else35.i136:                                   ; preds = %set_led_bit.exit127
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %led_state, align 1
  %54 = xor i8 %conv15.i128, -1
  %conv41.i135 = and i8 %53, %54
  br label %set_led_bit.exit137

set_led_bit.exit137:                              ; preds = %if.else35.i136, %cond.end29.i133
  %storemerge209 = phi i8 [ %conv41.i135, %if.else35.i136 ], [ %or33.i132, %cond.end29.i133 ]
  %55 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %storemerge209, ptr %led_state, align 1
  %arrayidx18 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx18, align 2
  %conv15.i138 = trunc i16 %57 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp16.i139 = icmp slt i16 %57, 0
  br i1 %cmp16.i139, label %cond.end29.i143, label %if.else35.i146

cond.end29.i143:                                  ; preds = %set_led_bit.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i140 = sub i8 0, %conv15.i138
  %58 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %led_state, align 1
  %or33.i142 = or i8 %59, %sub26.i140
  br label %sw.epilog.sink.split

if.else35.i146:                                   ; preds = %set_led_bit.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %led_state, align 1
  %62 = xor i8 %conv15.i138, -1
  %conv41.i145 = and i8 %61, %62
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %if.end
  %arrayidx21 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx21, align 2
  %conv15.i148 = trunc i16 %64 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp16.i149 = icmp slt i16 %64, 0
  br i1 %cmp16.i149, label %cond.end.i153, label %if.else.i156

cond.end.i153:                                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i150 = add i8 %conv15.i148, -1
  %and.i152 = and i8 %neg.i150, %8
  br label %sw.epilog.sink.split

if.else.i156:                                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %conv13.i155 = or i8 %8, %conv15.i148
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end
  %arrayidx24 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx24, align 2
  %conv15.i158 = trunc i16 %66 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp16.i159 = icmp slt i16 %66, 0
  br i1 %cmp16.i159, label %cond.end29.i163, label %if.else35.i166

cond.end29.i163:                                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i160 = sub i8 0, %conv15.i158
  %or33.i162 = or i8 %8, %sub26.i160
  br label %sw.epilog.sink.split

if.else35.i166:                                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %67 = xor i8 %conv15.i158, -1
  %conv41.i165 = and i8 %8, %67
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end
  %arrayidx27 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx27, align 2
  %conv15.i168 = trunc i16 %69 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp16.i169 = icmp slt i16 %69, 0
  br i1 %cmp16.i169, label %cond.end.i173, label %if.else.i176

cond.end.i173:                                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i170 = add i8 %conv15.i168, -1
  %and.i172 = and i8 %neg.i170, %8
  br label %sw.epilog.sink.split

if.else.i176:                                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %conv13.i175 = or i8 %8, %conv15.i168
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %if.end
  %arrayidx30 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx30, align 2
  %conv15.i178 = trunc i16 %71 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp16.i179 = icmp slt i16 %71, 0
  br i1 %cmp16.i179, label %cond.end29.i183, label %if.else35.i186

cond.end29.i183:                                  ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i180 = sub i8 0, %conv15.i178
  %or33.i182 = or i8 %8, %sub26.i180
  br label %sw.epilog.sink.split

if.else35.i186:                                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %72 = xor i8 %conv15.i178, -1
  %conv41.i185 = and i8 %8, %72
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %if.end
  %arrayidx33 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx33, align 2
  %conv15.i188 = trunc i16 %74 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp16.i189 = icmp slt i16 %74, 0
  br i1 %cmp16.i189, label %cond.end.i193, label %if.else.i196

cond.end.i193:                                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i190 = add i8 %conv15.i188, -1
  %and.i192 = and i8 %neg.i190, %8
  br label %sw.epilog.sink.split

if.else.i196:                                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %conv13.i195 = or i8 %8, %conv15.i188
  br label %sw.epilog.sink.split

sw.bb34:                                          ; preds = %if.end
  %arrayidx36 = getelementptr %struct.hfcsusb_vdata, ptr %4, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx36, align 2
  %conv15.i198 = trunc i16 %76 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp16.i199 = icmp slt i16 %76, 0
  br i1 %cmp16.i199, label %cond.end29.i203, label %if.else35.i206

cond.end29.i203:                                  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %sub26.i200 = sub i8 0, %conv15.i198
  %or33.i202 = or i8 %8, %sub26.i200
  br label %sw.epilog.sink.split

if.else35.i206:                                   ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %77 = xor i8 %conv15.i198, -1
  %conv41.i205 = and i8 %8, %77
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.else35.i206, %cond.end29.i203, %if.else.i196, %cond.end.i193, %if.else35.i186, %cond.end29.i183, %if.else.i176, %cond.end.i173, %if.else35.i166, %cond.end29.i163, %if.else.i156, %cond.end.i153, %if.else35.i146, %cond.end29.i143, %if.else35.i106, %cond.end29.i103
  %conv41.i205.sink = phi i8 [ %conv41.i205, %if.else35.i206 ], [ %or33.i202, %cond.end29.i203 ], [ %conv13.i195, %if.else.i196 ], [ %and.i192, %cond.end.i193 ], [ %conv41.i185, %if.else35.i186 ], [ %or33.i182, %cond.end29.i183 ], [ %conv13.i175, %if.else.i176 ], [ %and.i172, %cond.end.i173 ], [ %conv41.i165, %if.else35.i166 ], [ %or33.i162, %cond.end29.i163 ], [ %conv13.i155, %if.else.i156 ], [ %and.i152, %cond.end.i153 ], [ %conv41.i145, %if.else35.i146 ], [ %or33.i142, %cond.end29.i143 ], [ %conv41.i105, %if.else35.i106 ], [ %or33.i102, %cond.end29.i103 ]
  %78 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv41.i205.sink, ptr %led_state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %79 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %led_state, align 1
  %conv38 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %8)
  %cmp40.not = icmp eq i8 %80, %8
  br i1 %cmp40.not, label %sw.epilog.cleanup_crit_edge, label %if.then42

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %sw.epilog
  %81 = load i32, ptr @debug, align 4
  %and = and i32 %81, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then42.if.end46_crit_edge, label %do.end

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef nonnull @.str.39, i32 noundef 31, i32 noundef %conv38) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.then42.if.end46_crit_edge
  %82 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %led_state, align 1
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 31, i8 noundef zeroext %83)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcsusb_ph_command(ptr noundef %hw, i8 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %conv = zext i8 %command to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef nonnull @.str.41, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = zext i8 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.292)
  switch i8 %command, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb13
    i8 2, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 48, i8 noundef zeroext 20)
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 48, i8 noundef zeroext 4)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %state = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb7
  %peer.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 6
  %4 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then9.sw.epilog_crit_edge, label %if.end.i

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then9
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.i, !prof !528

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 8
  %12 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recv.i, align 4
  %14 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i.sw.epilog_crit_edge, label %if.then7.i

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 48, i8 noundef zeroext -32)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext 48, i8 noundef zeroext 64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.else, %if.then7.i, %if.end.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then9.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_reg(ptr noundef %hw, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %conv = zext i8 %reg to i32
  %conv1 = zext i8 %val to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ctrl_lock = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %ctrl_lock) #10
  %ctrl_cnt = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 16
  %1 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ctrl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %2)
  %cmp = icmp sgt i32 %2, 63
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ctrl_in_idx = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 14
  %3 = ptrtoint ptr %ctrl_in_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctrl_in_idx, align 8
  %arrayidx = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 13, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %reg, ptr %arrayidx, align 1
  %reg_val = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 13, i32 %4, i32 1
  %6 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %val, ptr %reg_val, align 1
  %7 = load i32, ptr %ctrl_in_idx, align 8
  %inc = add i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc)
  %cmp7 = icmp sgt i32 %inc, 63
  %spec.select = select i1 %cmp7, i32 0, i32 %inc
  %8 = ptrtoint ptr %ctrl_in_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %ctrl_in_idx, align 8
  %9 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_cnt, align 8
  %inc13 = add i32 %10, 1
  store i32 %inc13, ptr %ctrl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end5
  %11 = load i32, ptr @debug, align 4
  %and.i = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %do.end.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, ptr noundef nonnull @.str.44) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then16.if.end.i_crit_edge
  %12 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_out_pipe.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 22
  %14 = ptrtoint ptr %ctrl_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_out_pipe.i, align 8
  %ctrl_urb.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 17
  %16 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_urb.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %pipe.i, align 4
  %ctrl_write.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18
  %19 = load ptr, ptr %ctrl_urb.i, align 4
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ctrl_write.i, ptr %setup_packet.i, align 4
  %21 = load ptr, ptr %ctrl_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %transfer_buffer.i, align 4
  %23 = load ptr, ptr %ctrl_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %ctrl_out_idx.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 15
  %25 = ptrtoint ptr %ctrl_out_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl_out_idx.i, align 4
  %arrayidx.i = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 13, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %28 to i16
  %29 = shl nuw i16 %conv.i, 8
  %wIndex.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %wIndex.i, align 4
  %reg_val.i = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 13, i32 %26, i32 1
  %31 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg_val.i, align 1
  %conv10.i = zext i8 %32 to i16
  %33 = shl nuw i16 %conv10.i, 8
  %wValue.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 18, i32 2
  %34 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %wValue.i, align 2
  %35 = load ptr, ptr %ctrl_urb.i, align 4
  %call13.i = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 2592) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfcsusb_ph_info(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nrbchan = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nrbchan, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #10
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 24) #10
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2848) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 27
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protocol, align 2
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %call9.i.i, align 128
  %Flags = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Flags, align 8
  %conv5 = zext i32 %9 to i64
  %Flags8 = getelementptr inbounds %struct.ph_info_ch, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %Flags8 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv5, ptr %Flags8, align 8
  %state = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %conv9 = trunc i32 %12 to i16
  %state11 = getelementptr inbounds %struct.ph_info_dch, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %state11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv9, ptr %state11, align 16
  %14 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nrbchan, align 8
  %conv14 = trunc i32 %15 to i16
  %num_bch = getelementptr inbounds %struct.ph_info_dch, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %num_bch to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %num_bch, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp62.not = icmp eq i32 %15, 0
  br i1 %cmp62.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %protocol20 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 %i.063, i32 0, i32 1
  %17 = ptrtoint ptr %protocol20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol20, align 4
  %arrayidx22 = getelementptr %struct.ph_info, ptr %call9.i.i, i32 0, i32 1, i32 %i.063
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx22, align 8
  %Flags26 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 2, i32 %i.063, i32 2
  %20 = ptrtoint ptr %Flags26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Flags26, align 4
  %conv27 = zext i32 %21 to i64
  %Flags30 = getelementptr %struct.ph_info, ptr %call9.i.i, i32 0, i32 1, i32 %i.063, i32 1
  %22 = ptrtoint ptr %Flags30 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv27, ptr %Flags30, align 16
  %inc = add nuw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 16) #10
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %spec.select.i59 = tail call i32 @llvm.uadd.sat.i32(i32 %25, i32 24) #10
  %retval.0.i60 = select i1 %24, i32 -1, i32 %spec.select.i59
  %peer.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 6
  %26 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %for.end._queue_data.exit_crit_edge, label %if.end.i

for.end._queue_data.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit

if.end.i:                                         ; preds = %for.end
  %add.i.i.i = add i32 %retval.0.i60, 8
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i._queue_data.exit_crit_edge, label %if.end.i.i61, !prof !528

if.end.i._queue_data.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit

if.end.i.i61:                                     ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %31, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %retval.0.i60) #10
  %32 = call ptr @memcpy(ptr %call.i.i.i, ptr %call9.i.i, i32 %retval.0.i60)
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 1794, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 1, i32 0, i32 0, i32 8
  %35 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %recv.i, align 4
  %37 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %36(ptr noundef %38, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i61._queue_data.exit_crit_edge, label %if.then7.i

if.end.i.i61._queue_data.exit_crit_edge:          ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %_queue_data.exit

if.then7.i:                                       ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %_queue_data.exit

_queue_data.exit:                                 ; preds = %if.then7.i, %if.end.i.i61._queue_data.exit_crit_edge, %if.end.i._queue_data.exit_crit_edge, %for.end._queue_data.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %_queue_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_queue_data.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_ch_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcsusb_stop_endpoint(ptr nocapture noundef %hw, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %channel, label %entry.if.end24_crit_edge [
    i32 2, label %land.lhs.true
    i32 0, label %land.lhs.true2
    i32 1, label %land.lhs.true10
    i32 3, label %land.lhs.true18
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 5, i32 1
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true2:                                   ; preds = %entry
  %active5 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 1, i32 1
  %3 = ptrtoint ptr %active5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %land.lhs.true2.if.end50_crit_edge, label %land.lhs.true2.if.end24_crit_edge

land.lhs.true2.if.end24_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true2.if.end50_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true10:                                  ; preds = %entry
  %active13 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 3, i32 1
  %5 = ptrtoint ptr %active13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end50_crit_edge, label %land.lhs.true10.if.end24_crit_edge

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true10.if.end50_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true18:                                  ; preds = %entry
  %active21 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 7, i32 1
  %7 = ptrtoint ptr %active21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool22.not = icmp eq i32 %8, 0
  br i1 %tobool22.not, label %land.lhs.true18.if.end50_crit_edge, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true18.if.end50_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end24:                                         ; preds = %land.lhs.true18.if.end24_crit_edge, %land.lhs.true10.if.end24_crit_edge, %land.lhs.true2.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %cfg_used = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 8
  %9 = ptrtoint ptr %cfg_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_used, align 8
  %.off = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then28, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  %fifos29 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  %mul = shl i32 %channel, 1
  %add.ptr = getelementptr %struct.usb_fifo, ptr %fifos29, i32 %mul
  %add.ptr30 = getelementptr %struct.usb_fifo, ptr %add.ptr, i32 1
  %hw1.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 2
  %11 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1.i, align 4
  %lock.i = getelementptr inbounds %struct.hfcsusb, ptr %12, i32 0, i32 24
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then28.if.end.i_crit_edge, label %do.end8.i

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end8.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %12, i32 0, i32 32
  %14 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr30, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %name.i, ptr noundef nonnull @.str.214, i32 noundef %15) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end8.i, %if.then28.if.end.i_crit_edge
  %stop_gracefull.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 16
  %16 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %stop_gracefull.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  %17 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stop_gracefull.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not39.i = icmp eq i8 %18, 0
  br i1 %tobool14.not39.i, label %if.end.i.if.end31_crit_edge, label %while.body.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

while.body.i:                                     ; preds = %if.end.i
  %call16.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %19 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stop_gracefull.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not.i = icmp eq i8 %20, 0
  br i1 %tobool14.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.1

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %call16.i.1 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %21 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stop_gracefull.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i.1 = icmp eq i8 %22, 0
  br i1 %tobool14.not.i.1, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %call16.i.2 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %23 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stop_gracefull.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool14.not.i.2 = icmp eq i8 %24, 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.2, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %tobool14.not.i.lcssa = phi i1 [ %tobool14.not.i, %while.body.i.while.end.i_crit_edge ], [ %tobool14.not.i.1, %while.body.i.1.while.end.i_crit_edge ], [ %tobool14.not.i.2, %while.body.i.2 ]
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not.i = icmp eq i32 %25, 0
  %brmerge.i = select i1 %tobool17.not.i, i1 true, i1 %tobool14.not.i.lcssa
  br i1 %brmerge.i, label %while.end.i.if.end31_crit_edge, label %do.end24.i

while.end.i.if.end31_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end24.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name26.i = getelementptr inbounds %struct.hfcsusb, ptr %12, i32 0, i32 32
  %26 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr30, align 4
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name26.i, ptr noundef nonnull @.str.214, i32 noundef %27) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end24.i, %while.end.i.if.end31_crit_edge, %if.end.i.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %28 = ptrtoint ptr %cfg_used to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_used, align 8
  %.off69 = add i32 %29, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off69)
  %switch70 = icmp ult i32 %.off69, 2
  br i1 %switch70, label %if.then37, label %if.end31.if.end43_crit_edge

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %fifos38 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  %mul40 = shl i32 %channel, 1
  %add.ptr41 = getelementptr %struct.usb_fifo, ptr %fifos38, i32 %mul40
  %add.ptr42 = getelementptr %struct.usb_fifo, ptr %add.ptr41, i32 1
  tail call fastcc void @stop_iso_gracefull(ptr noundef %add.ptr42)
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end31.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %channel)
  %cmp44.not = icmp eq i32 %channel, 3
  br i1 %cmp44.not, label %if.end43.if.end50_crit_edge, label %if.then45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %fifos46 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  %mul48 = shl i32 %channel, 1
  %add.ptr49 = getelementptr %struct.usb_fifo, ptr %fifos46, i32 %mul48
  tail call fastcc void @stop_iso_gracefull(ptr noundef %add.ptr49)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end43.if.end50_crit_edge, %land.lhs.true18.if.end50_crit_edge, %land.lhs.true10.if.end50_crit_edge, %land.lhs.true2.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcsusb_start_endpoint(ptr noundef %hw, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %channel, label %entry.if.end24_crit_edge [
    i32 2, label %land.lhs.true
    i32 0, label %land.lhs.true2
    i32 1, label %land.lhs.true10
    i32 3, label %land.lhs.true18
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 5, i32 1
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.sw.epilog72_crit_edge

land.lhs.true.sw.epilog72_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true2:                                   ; preds = %entry
  %active5 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 1, i32 1
  %3 = ptrtoint ptr %active5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %land.lhs.true2.if.end24_crit_edge, label %land.lhs.true2.sw.epilog72_crit_edge

land.lhs.true2.sw.epilog72_crit_edge:             ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

land.lhs.true2.if.end24_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true10:                                  ; preds = %entry
  %active13 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 3, i32 1
  %5 = ptrtoint ptr %active13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end24_crit_edge, label %land.lhs.true10.sw.epilog72_crit_edge

land.lhs.true10.sw.epilog72_crit_edge:            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true18:                                  ; preds = %entry
  %active21 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 7, i32 1
  %7 = ptrtoint ptr %active21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool22.not = icmp eq i32 %8, 0
  br i1 %tobool22.not, label %land.lhs.true18.if.end24_crit_edge, label %land.lhs.true18.sw.epilog72_crit_edge

land.lhs.true18.sw.epilog72_crit_edge:            ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true18.if.end24_crit_edge, %land.lhs.true10.if.end24_crit_edge, %land.lhs.true2.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  %cfg_used = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 8
  %9 = ptrtoint ptr %cfg_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg_used, align 8
  %.off = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then28, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  %fifos29 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  %mul = shl i32 %channel, 1
  %add.ptr = getelementptr %struct.usb_fifo, ptr %fifos29, i32 %mul
  %add.ptr30 = getelementptr %struct.usb_fifo, ptr %add.ptr, i32 1
  %hw1.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 2
  %11 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1.i, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then28.if.end.i_crit_edge, label %do.end.i

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %12, i32 0, i32 32
  %14 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr30, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name.i, ptr noundef nonnull @.str.82, i32 noundef %15) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then28.if.end.i_crit_edge
  %urb.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 7
  %16 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %18 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4.i, ptr %urb.i, align 4
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %if.then3.i.if.end31_crit_edge, label %if.then3.i.if.end10.i_crit_edge

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then3.i.if.end31_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %19 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb.i, align 4
  %21 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1.i, align 4
  %dev.i = getelementptr inbounds %struct.hfcsusb, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %pipe.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 3
  %25 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe.i, align 4
  %buffer.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 8
  %usb_packet_maxlen.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 4
  %27 = ptrtoint ptr %usb_packet_maxlen.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %usb_packet_maxlen.i, align 4
  %conv.i = zext i8 %28 to i32
  %intervall.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 6
  %29 = ptrtoint ptr %intervall.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %intervall.i, align 4
  %conv14.i = zext i8 %30 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %24, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buffer.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rx_int_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr30, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 4
  %37 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp6.i.i = icmp ugt i32 %38, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end10.i.usb_fill_int_urb.exit.i_crit_edge

if.end10.i.usb_fill_int_urb.exit.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = tail call i32 @llvm.smax.i32(i32 %conv14.i, i32 1) #10
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 16) #10
  %sub.i.i = add nsw i32 %40, -1
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %if.end10.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %conv14.i, %if.end10.i.usb_fill_int_urb.exit.i_crit_edge ]
  %41 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 25
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %interval.sink.i.i, ptr %41, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 23
  %43 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %start_frame.i.i, align 4
  %active.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 1
  %44 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %active.i, align 4
  %stop_gracefull.i = getelementptr inbounds %struct.usb_fifo, ptr %add.ptr30, i32 0, i32 16
  %45 = ptrtoint ptr %stop_gracefull.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %stop_gracefull.i, align 4
  %46 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb.i, align 4
  %call16.i = tail call i32 @usb_submit_urb(ptr noundef %47, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %usb_fill_int_urb.exit.i.if.end31_crit_edge, label %do.end21.i

usb_fill_int_urb.exit.i.if.end31_crit_edge:       ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end21.i:                                       ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %name23.i = getelementptr inbounds %struct.hfcsusb, ptr %12, i32 0, i32 32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name23.i, ptr noundef nonnull @.str.82, i32 noundef %call16.i) #13
  %48 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %active.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end21.i, %usb_fill_int_urb.exit.i.if.end31_crit_edge, %if.then3.i.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %49 = ptrtoint ptr %cfg_used to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg_used, align 8
  %.off95 = add i32 %50, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off95)
  %switch96 = icmp ult i32 %.off95, 2
  br i1 %switch96, label %if.then37, label %if.end56

if.then37:                                        ; preds = %if.end31
  %51 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %channel, label %if.then37.sw.epilog72_crit_edge [
    i32 2, label %if.end56.thread97
    i32 3, label %if.end56.thread
    i32 0, label %if.end56.thread98
    i32 1, label %if.end56.thread99
  ]

if.then37.sw.epilog72_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

if.end56.thread97:                                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr40 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 5
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr40, ptr noundef nonnull @rx_iso_complete, i32 noundef 16)
  br label %sw.bb57

if.end56.thread:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr44 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 7
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr44, ptr noundef nonnull @rx_iso_complete, i32 noundef 16)
  br label %sw.epilog72

if.end56.thread98:                                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr49 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 1
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr49, ptr noundef nonnull @rx_iso_complete, i32 noundef 16)
  br label %sw.bb62

if.end56.thread99:                                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr54 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 3
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr54, ptr noundef nonnull @rx_iso_complete, i32 noundef 16)
  br label %sw.bb67

if.end56:                                         ; preds = %if.end31
  %52 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %channel, label %if.end56.sw.epilog72_crit_edge [
    i32 2, label %if.end56.sw.bb57_crit_edge
    i32 0, label %if.end56.sw.bb62_crit_edge
    i32 1, label %if.end56.sw.bb67_crit_edge
  ]

if.end56.sw.bb67_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb67

if.end56.sw.bb62_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.end56.sw.bb57_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

if.end56.sw.epilog72_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog72

sw.bb57:                                          ; preds = %if.end56.sw.bb57_crit_edge, %if.end56.thread97
  %add.ptr60 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 4
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr60, ptr noundef nonnull @tx_iso_complete, i32 noundef 1)
  br label %sw.epilog72

sw.bb62:                                          ; preds = %if.end56.sw.bb62_crit_edge, %if.end56.thread98
  %fifos63 = getelementptr inbounds %struct.hfcsusb, ptr %hw, i32 0, i32 12
  tail call fastcc void @start_isoc_chain(ptr noundef %fifos63, ptr noundef nonnull @tx_iso_complete, i32 noundef 1)
  br label %sw.epilog72

sw.bb67:                                          ; preds = %if.end56.sw.bb67_crit_edge, %if.end56.thread99
  %add.ptr70 = getelementptr %struct.hfcsusb, ptr %hw, i32 0, i32 12, i32 2
  tail call fastcc void @start_isoc_chain(ptr noundef %add.ptr70, ptr noundef nonnull @tx_iso_complete, i32 noundef 1)
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb67, %sw.bb62, %sw.bb57, %if.end56.sw.epilog72_crit_edge, %if.end56.thread, %if.then37.sw.epilog72_crit_edge, %land.lhs.true18.sw.epilog72_crit_edge, %land.lhs.true10.sw.epilog72_crit_edge, %land.lhs.true2.sw.epilog72_crit_edge, %land.lhs.true.sw.epilog72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_l1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_l1callback(ptr noundef %dch, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %name, ptr noundef nonnull @.str.202, i32 noundef %cmd) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %cmd, label %sw.default [
    i32 33538, label %if.end.sw.epilog_crit_edge
    i32 33794, label %if.end.sw.epilog_crit_edge72
    i32 35330, label %if.end.sw.epilog_crit_edge73
    i32 35586, label %if.end.sw.epilog_crit_edge74
    i32 35842, label %sw.bb2
    i32 258, label %sw.bb14
    i32 514, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge74:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge73:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge72:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %squeue = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #10
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 13
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %sw.bb2.if.end7_crit_edge, label %if.then4

sw.bb2.if.end7_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %5) #10
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %sw.bb2.if.end7_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 14
  %7 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 9
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags) #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %Flags15 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call16 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags15) #10
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %11 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %sw.bb14.sw.epilog_crit_edge, label %if.end.i

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb14
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.i, !prof !528

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %19 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recv.i, align 4
  %21 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %20(ptr noundef %22, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.i.sw.epilog_crit_edge, label %if.then7.i

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %Flags18 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call19 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags18) #10
  %peer.i55 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %23 = ptrtoint ptr %peer.i55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer.i55, align 4
  %tobool.not.i56 = icmp eq ptr %24, null
  br i1 %tobool.not.i56, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i59

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i59:                                       ; preds = %sw.bb17
  %call.i.i.i.i57 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i58 = icmp eq ptr %call.i.i.i.i57, null
  br i1 %tobool.not.i.i.i58, label %if.end.i59.sw.epilog_crit_edge, label %if.end.i.i64, !prof !528

if.end.i59.sw.epilog_crit_edge:                   ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i64:                                     ; preds = %if.end.i59
  %data.i.i.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i57, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i60, align 4
  %add.ptr.i.i.i.i61 = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr.i.i.i.i61, ptr %data.i.i.i.i60, align 4
  %tail.i.i.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i57, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i.i62, align 8
  %add.ptr1.i.i.i.i63 = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr1.i.i.i.i63, ptr %tail.i.i.i.i62, align 8
  %cb.i.i65 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i57, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i.i65 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 514, ptr %cb.i.i65, align 1
  %id6.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i57, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %id6.i.i66 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 65535, ptr %id6.i.i66, align 1
  %recv.i67 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %31 = ptrtoint ptr %recv.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recv.i67, align 4
  %33 = ptrtoint ptr %peer.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %peer.i55, align 4
  %call5.i68 = tail call i32 %32(ptr noundef %34, ptr noundef nonnull %call.i.i.i.i57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i68)
  %tobool6.not.i69 = icmp eq i32 %call5.i68, 0
  br i1 %tobool6.not.i69, label %if.end.i.i64.sw.epilog_crit_edge, label %if.then7.i70

if.end.i.i64.sw.epilog_crit_edge:                 ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then7.i70:                                     ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i57) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %debug = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 15
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug, align 4
  %and22 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.default.cleanup_crit_edge, label %do.end27

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end27:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name29, ptr noundef nonnull @.str.202, i32 noundef %cmd) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.then7.i70, %if.end.i.i64.sw.epilog_crit_edge, %if.end.i59.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.then7.i, %if.end.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %if.end12, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge72, %if.end.sw.epilog_crit_edge73, %if.end.sw.epilog_crit_edge74
  %call33 = tail call fastcc i32 @hfcsusb_ph_info(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end27, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %sw.epilog ], [ -1, %do.end27 ], [ -1, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_isoc_chain(ptr noundef %fifo, ptr noundef %complete, i32 noundef %packet_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name, ptr noundef nonnull @.str.129, i32 noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %usb_packet_maxlen = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 4
  %name64 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %pipe = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 3
  %intervall = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 6
  %bit_line = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 9
  %active = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 1
  %stop_gracefull = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 16
  %mul50.2 = shl i32 %packet_size, 1
  %mul50.3 = mul i32 %packet_size, 3
  %mul50.4 = shl i32 %packet_size, 2
  %mul50.5 = mul i32 %packet_size, 5
  %mul50.6 = mul i32 %packet_size, 6
  %mul50.7 = mul i32 %packet_size, 7
  br label %for.body

for.body:                                         ; preds = %for.inc87.for.body_crit_edge, %if.end
  %i.08 = phi i32 [ 0, %if.end ], [ %inc88, %for.inc87.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_fifo, ptr %fifo, i32 0, i32 11, i32 %i.08
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then3, label %for.body.if.end68_crit_edge

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then3:                                         ; preds = %for.body
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 8, i32 noundef 3264) #10
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %call4, null
  br i1 %tobool11.not, label %do.end15, label %if.end21

do.end15:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name64, ptr noundef nonnull @.str.129, i32 noundef %9) #13
  br label %for.inc87

if.end21:                                         ; preds = %if.then3
  %owner_fifo = getelementptr %struct.usb_fifo, ptr %fifo, i32 0, i32 11, i32 %i.08, i32 2
  %10 = ptrtoint ptr %owner_fifo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fifo, ptr %owner_fifo, align 4
  %conv = trunc i32 %i.08 to i8
  %indx = getelementptr %struct.usb_fifo, ptr %fifo, i32 0, i32 11, i32 %i.08, i32 3
  %11 = ptrtoint ptr %indx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %indx, align 4
  %12 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %usb_packet_maxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp27 = icmp ult i8 %13, 17
  br i1 %cmp27, label %if.then29, label %do.end62

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = zext i8 %13 to i32
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 4
  %dev = getelementptr inbounds %struct.hfcsusb, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 4
  %buffer = getelementptr %struct.usb_fifo, ptr %fifo, i32 0, i32 11, i32 %i.08, i32 1
  %20 = ptrtoint ptr %intervall to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %intervall, align 4
  %conv39 = zext i8 %21 to i32
  %mul.i = shl nuw nsw i32 %conv26, 3
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %context4.i.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 24
  %28 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %number_of_packets.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 13
  %29 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %transfer_flags.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 20
  %30 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %actual_length.i, align 4
  %interval1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 25
  %31 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv39, ptr %interval1.i, align 4
  %arrayidx.i = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 0
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 0, i32 1
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv26, ptr %length.i, align 4
  %actual_length7.i = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 0, i32 2
  %34 = ptrtoint ptr %actual_length7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %actual_length7.i, align 4
  %arrayidx.i.1 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 1
  %35 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv26, ptr %arrayidx.i.1, align 4
  %length.i.1 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 1, i32 1
  %36 = ptrtoint ptr %length.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv26, ptr %length.i.1, align 4
  %actual_length7.i.1 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 1, i32 2
  %37 = ptrtoint ptr %actual_length7.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %actual_length7.i.1, align 4
  %mul2.i.2 = shl nuw nsw i32 %conv26, 1
  %arrayidx.i.2 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 2
  %38 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul2.i.2, ptr %arrayidx.i.2, align 4
  %length.i.2 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 2, i32 1
  %39 = ptrtoint ptr %length.i.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv26, ptr %length.i.2, align 4
  %actual_length7.i.2 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 2, i32 2
  %40 = ptrtoint ptr %actual_length7.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %actual_length7.i.2, align 4
  %mul2.i.3 = mul nuw nsw i32 %conv26, 3
  %arrayidx.i.3 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 3
  %41 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul2.i.3, ptr %arrayidx.i.3, align 4
  %length.i.3 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 3, i32 1
  %42 = ptrtoint ptr %length.i.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv26, ptr %length.i.3, align 4
  %actual_length7.i.3 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 3, i32 2
  %43 = ptrtoint ptr %actual_length7.i.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %actual_length7.i.3, align 4
  %mul2.i.4 = shl nuw nsw i32 %conv26, 2
  %arrayidx.i.4 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 4
  %44 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul2.i.4, ptr %arrayidx.i.4, align 4
  %length.i.4 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 4, i32 1
  %45 = ptrtoint ptr %length.i.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv26, ptr %length.i.4, align 4
  %actual_length7.i.4 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 4, i32 2
  %46 = ptrtoint ptr %actual_length7.i.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %actual_length7.i.4, align 4
  %mul2.i.5 = mul nuw nsw i32 %conv26, 5
  %arrayidx.i.5 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 5
  %47 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul2.i.5, ptr %arrayidx.i.5, align 4
  %length.i.5 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 5, i32 1
  %48 = ptrtoint ptr %length.i.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv26, ptr %length.i.5, align 4
  %actual_length7.i.5 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 5, i32 2
  %49 = ptrtoint ptr %actual_length7.i.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %actual_length7.i.5, align 4
  %mul2.i.6 = mul nuw nsw i32 %conv26, 6
  %arrayidx.i.6 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 6
  %50 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul2.i.6, ptr %arrayidx.i.6, align 4
  %length.i.6 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 6, i32 1
  %51 = ptrtoint ptr %length.i.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv26, ptr %length.i.6, align 4
  %actual_length7.i.6 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 6, i32 2
  %52 = ptrtoint ptr %actual_length7.i.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %actual_length7.i.6, align 4
  %mul2.i.7 = mul nuw nsw i32 %conv26, 7
  %arrayidx.i.7 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 7
  %53 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul2.i.7, ptr %arrayidx.i.7, align 4
  %length.i.7 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 7, i32 1
  %54 = ptrtoint ptr %length.i.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv26, ptr %length.i.7, align 4
  %actual_length7.i.7 = getelementptr %struct.urb, ptr %call4, i32 0, i32 29, i32 7, i32 2
  %55 = ptrtoint ptr %actual_length7.i.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %actual_length7.i.7, align 4
  %56 = call ptr @memset(ptr %buffer, i32 0, i32 128)
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %arrayidx54 = getelementptr %struct.urb, ptr %58, i32 0, i32 29, i32 0
  %59 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx54, align 4
  %60 = load ptr, ptr %arrayidx, align 4
  %length = getelementptr %struct.urb, ptr %60, i32 0, i32 29, i32 0, i32 1
  %61 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %packet_size, ptr %length, align 4
  %62 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.1 = getelementptr %struct.urb, ptr %62, i32 0, i32 29, i32 1
  %63 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %packet_size, ptr %arrayidx54.1, align 4
  %64 = load ptr, ptr %arrayidx, align 4
  %length.1 = getelementptr %struct.urb, ptr %64, i32 0, i32 29, i32 1, i32 1
  %65 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %packet_size, ptr %length.1, align 4
  %66 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.2 = getelementptr %struct.urb, ptr %66, i32 0, i32 29, i32 2
  %67 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul50.2, ptr %arrayidx54.2, align 4
  %68 = load ptr, ptr %arrayidx, align 4
  %length.2 = getelementptr %struct.urb, ptr %68, i32 0, i32 29, i32 2, i32 1
  %69 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %packet_size, ptr %length.2, align 4
  %70 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.3 = getelementptr %struct.urb, ptr %70, i32 0, i32 29, i32 3
  %71 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul50.3, ptr %arrayidx54.3, align 4
  %72 = load ptr, ptr %arrayidx, align 4
  %length.3 = getelementptr %struct.urb, ptr %72, i32 0, i32 29, i32 3, i32 1
  %73 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %packet_size, ptr %length.3, align 4
  %74 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.4 = getelementptr %struct.urb, ptr %74, i32 0, i32 29, i32 4
  %75 = ptrtoint ptr %arrayidx54.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul50.4, ptr %arrayidx54.4, align 4
  %76 = load ptr, ptr %arrayidx, align 4
  %length.4 = getelementptr %struct.urb, ptr %76, i32 0, i32 29, i32 4, i32 1
  %77 = ptrtoint ptr %length.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %packet_size, ptr %length.4, align 4
  %78 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.5 = getelementptr %struct.urb, ptr %78, i32 0, i32 29, i32 5
  %79 = ptrtoint ptr %arrayidx54.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul50.5, ptr %arrayidx54.5, align 4
  %80 = load ptr, ptr %arrayidx, align 4
  %length.5 = getelementptr %struct.urb, ptr %80, i32 0, i32 29, i32 5, i32 1
  %81 = ptrtoint ptr %length.5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %packet_size, ptr %length.5, align 4
  %82 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.6 = getelementptr %struct.urb, ptr %82, i32 0, i32 29, i32 6
  %83 = ptrtoint ptr %arrayidx54.6 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul50.6, ptr %arrayidx54.6, align 4
  %84 = load ptr, ptr %arrayidx, align 4
  %length.6 = getelementptr %struct.urb, ptr %84, i32 0, i32 29, i32 6, i32 1
  %85 = ptrtoint ptr %length.6 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %packet_size, ptr %length.6, align 4
  %86 = load ptr, ptr %arrayidx, align 4
  %arrayidx54.7 = getelementptr %struct.urb, ptr %86, i32 0, i32 29, i32 7
  %87 = ptrtoint ptr %arrayidx54.7 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul50.7, ptr %arrayidx54.7, align 4
  %88 = load ptr, ptr %arrayidx, align 4
  %length.7 = getelementptr %struct.urb, ptr %88, i32 0, i32 29, i32 7, i32 1
  %89 = ptrtoint ptr %length.7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %packet_size, ptr %length.7, align 4
  br label %if.end68

do.end62:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name64, ptr noundef nonnull @.str.129) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.then29, %for.body.if.end68_crit_edge
  %90 = ptrtoint ptr %bit_line to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -768, ptr %bit_line, align 4
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 4
  %call72 = tail call i32 @usb_submit_urb(ptr noundef %92, i32 noundef 3264) #10
  %93 = xor i32 %call72, -1
  %call72.lobit.not = lshr i32 %93, 31
  %94 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call72.lobit.not, ptr %active, align 4
  %95 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp75 = icmp slt i32 %call72, 0
  br i1 %cmp75, label %for.body.i3.preheader, label %if.end68.for.inc87_crit_edge

if.end68.for.inc87_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

for.body.i3.preheader:                            ; preds = %if.end68
  %96 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %call72, label %for.cond.i.13 [
    i32 -12, label %for.body.i3.preheader.symbolic.exit_crit_edge
    i32 -28, label %for.body.i3.preheader.symbolic.exit.loopexit_crit_edge
    i32 -2, label %symbolic.exit.loopexit.fold.split
    i32 -18, label %symbolic.exit.loopexit.fold.split11
    i32 -11, label %symbolic.exit.loopexit.fold.split12
    i32 -6, label %symbolic.exit.loopexit.fold.split13
    i32 -27, label %symbolic.exit.loopexit.fold.split14
    i32 -63, label %symbolic.exit.loopexit.fold.split15
    i32 -32, label %symbolic.exit.loopexit.fold.split16
    i32 -75, label %symbolic.exit.loopexit.fold.split17
    i32 -71, label %symbolic.exit.loopexit.fold.split18
    i32 -84, label %symbolic.exit.loopexit.fold.split19
    i32 -110, label %symbolic.exit.loopexit.fold.split20
    i32 -108, label %symbolic.exit.loopexit.fold.split21
  ]

for.body.i3.preheader.symbolic.exit.loopexit_crit_edge: ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

for.body.i3.preheader.symbolic.exit_crit_edge:    ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit

for.cond.i.13:                                    ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split:                ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split11:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split12:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split13:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split14:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split15:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split16:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split17:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split18:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split19:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split20:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split21:              ; preds = %for.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit:                           ; preds = %symbolic.exit.loopexit.fold.split21, %symbolic.exit.loopexit.fold.split20, %symbolic.exit.loopexit.fold.split19, %symbolic.exit.loopexit.fold.split18, %symbolic.exit.loopexit.fold.split17, %symbolic.exit.loopexit.fold.split16, %symbolic.exit.loopexit.fold.split15, %symbolic.exit.loopexit.fold.split14, %symbolic.exit.loopexit.fold.split13, %symbolic.exit.loopexit.fold.split12, %symbolic.exit.loopexit.fold.split11, %symbolic.exit.loopexit.fold.split, %for.cond.i.13, %for.body.i3.preheader.symbolic.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.139, %for.cond.i.13 ], [ @.str.141, %for.body.i3.preheader.symbolic.exit.loopexit_crit_edge ], [ @.str.142, %symbolic.exit.loopexit.fold.split ], [ @.str.143, %symbolic.exit.loopexit.fold.split11 ], [ @.str.144, %symbolic.exit.loopexit.fold.split12 ], [ @.str.145, %symbolic.exit.loopexit.fold.split13 ], [ @.str.146, %symbolic.exit.loopexit.fold.split14 ], [ @.str.147, %symbolic.exit.loopexit.fold.split15 ], [ @.str.148, %symbolic.exit.loopexit.fold.split16 ], [ @.str.149, %symbolic.exit.loopexit.fold.split17 ], [ @.str.150, %symbolic.exit.loopexit.fold.split18 ], [ @.str.151, %symbolic.exit.loopexit.fold.split19 ], [ @.str.152, %symbolic.exit.loopexit.fold.split20 ], [ @.str.153, %symbolic.exit.loopexit.fold.split21 ]
  br label %symbolic.exit

symbolic.exit:                                    ; preds = %symbolic.exit.loopexit, %for.body.i3.preheader.symbolic.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.140, %for.body.i3.preheader.symbolic.exit_crit_edge ], [ %retval.0.i.ph, %symbolic.exit.loopexit ]
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name64, ptr noundef nonnull @.str.129, ptr noundef nonnull %retval.0.i, i32 noundef %i.08) #13
  br label %for.inc87

for.inc87:                                        ; preds = %symbolic.exit, %if.end68.for.inc87_crit_edge, %do.end15
  %inc88 = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc88, 2
  br i1 %exitcond.not, label %for.end89, label %for.inc87.for.body_crit_edge

for.inc87.for.body_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end89:                                        ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_iso_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %owner_fifo = getelementptr inbounds %struct.iso_urb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %owner_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner_fifo, align 4
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status2, align 4
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %stop_gracefull = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %stop_gracefull, align 4
  %active = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %9)
  %cmp10 = icmp eq i32 %9, -18
  br i1 %cmp10, label %if.then12, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then12:                                        ; preds = %if.end
  %14 = load i32, ptr @debug, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.if.end21_crit_edge, label %do.end17

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name, ptr noundef nonnull @.str.155, i32 noundef -18, i32 noundef %7) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %if.then12.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %status.0 = phi i32 [ %9, %if.end.if.end21_crit_edge ], [ 0, %do.end17 ], [ 0, %if.then12.if.end21_crit_edge ]
  %active22 = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %active22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool24.not = icmp eq i32 %status.0, 0
  %or.cond = select i1 %tobool23.not, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.else166

for.body.lr.ph:                                   ; preds = %if.end21
  %arrayidx = getelementptr [8 x i32], ptr @iso_packets, i32 0, i32 %7
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %usb_packet_maxlen = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %usb_packet_maxlen, align 4
  %conv26 = zext i8 %20 to i32
  %buffer = getelementptr inbounds %struct.iso_urb, ptr %1, i32 0, i32 1
  %name46 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp50 = icmp eq i32 %7, 5
  %start_frame = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %sub = add nsw i32 %18, -1
  %last_urblen = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 15
  %threshold_mask = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 25
  %arrayidx97 = getelementptr [8 x i8], ptr @rx_iso_complete.eof, i32 0, i32 %7
  %smax = call i32 @llvm.smax.i32(i32 %18, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc119.for.body_crit_edge, %for.body.lr.ph
  %k.0282 = phi i32 [ 0, %for.body.lr.ph ], [ %inc120, %for.inc119.for.body_crit_edge ]
  %s0_state.0281 = phi i8 [ 0, %for.body.lr.ph ], [ %s0_state.3, %for.inc119.for.body_crit_edge ]
  %arrayidx29 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0282
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0282, i32 2
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx29, align 4
  %add.ptr = getelementptr i8, ptr %buffer, i32 %24
  %status36 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0282, i32 3
  %25 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool37.not = icmp eq i32 %26, 0
  br i1 %tobool37.not, label %for.body.if.end49_crit_edge, label %land.lhs.true38

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true38:                                  ; preds = %for.body
  %27 = load i32, ptr @debug, align 4
  %and39 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.end49_crit_edge, label %do.end44

land.lhs.true38.if.end49_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end44:                                         ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %name46, ptr noundef nonnull @.str.155, i32 noundef %k.0282, i32 noundef %26) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %land.lhs.true38.if.end49_crit_edge, %for.body.if.end49_crit_edge
  br i1 %cmp50, label %land.lhs.true52, label %if.end49.if.end79_crit_edge

if.end49.if.end79_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

land.lhs.true52:                                  ; preds = %if.end49
  %28 = load i32, ptr @debug, align 4
  %and53 = and i32 %28, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %land.lhs.true52.if.end79_crit_edge, label %do.end58

land.lhs.true52.if.end79_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end58:                                         ; preds = %land.lhs.true52
  %29 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start_frame, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %name46, ptr noundef nonnull @.str.155, i32 noundef %30, i32 noundef %k.0282, i32 noundef %sub, i32 noundef %22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp64278 = icmp sgt i32 %22, 0
  br i1 %cmp64278, label %do.end58.do.end69_crit_edge, label %do.end58.do.end76_crit_edge

do.end58.do.end76_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.end58.do.end69_crit_edge:                      ; preds = %do.end58
  br label %do.end69

do.end69:                                         ; preds = %do.end69.do.end69_crit_edge, %do.end58.do.end69_crit_edge
  %i.0279 = phi i32 [ %inc, %do.end69.do.end69_crit_edge ], [ 0, %do.end58.do.end69_crit_edge ]
  %arrayidx71 = getelementptr i8, ptr %add.ptr, i32 %i.0279
  %31 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %32 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %conv72) #13
  %inc = add nuw nsw i32 %i.0279, 1
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %do.end69.do.end76_crit_edge, label %do.end69.do.end69_crit_edge

do.end69.do.end69_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end69.do.end76_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

do.end76:                                         ; preds = %do.end69.do.end76_crit_edge, %do.end58.do.end76_crit_edge
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %land.lhs.true52.if.end79_crit_edge, %if.end49.if.end79_crit_edge
  br i1 %tobool37.not, label %if.then81, label %if.end79.for.inc119_crit_edge

if.end79.for.inc119_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc119

if.then81:                                        ; preds = %if.end79
  %33 = ptrtoint ptr %last_urblen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_urblen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv26)
  %cmp82.not = icmp eq i32 %34, %conv26
  br i1 %cmp82.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.then81
  %arrayidx85 = getelementptr i8, ptr %add.ptr, i32 1
  %35 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx85, align 1
  %37 = ptrtoint ptr %threshold_mask to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %threshold_mask, align 4
  br i1 %cmp50, label %if.then88, label %if.then84.if.end92_crit_edge

if.then84.if.end92_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr, align 1
  %40 = lshr i8 %39, 4
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.then84.if.end92_crit_edge
  %s0_state.1 = phi i8 [ %40, %if.then88 ], [ %s0_state.0281, %if.then84.if.end92_crit_edge ]
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr, align 1
  %43 = and i8 %42, 1
  %44 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx97, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp98 = icmp sgt i32 %22, 2
  br i1 %cmp98, label %if.then100, label %if.end92.if.end116_crit_edge

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr101 = getelementptr i8, ptr %add.ptr, i32 2
  %sub102 = add nsw i32 %22, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv26)
  %cmp103 = icmp slt i32 %22, %conv26
  %conv106 = zext i8 %43 to i32
  %spec.select = select i1 %cmp103, i32 %conv106, i32 0
  tail call fastcc void @hfcsusb_rx_frame(ptr noundef %3, ptr noundef %add.ptr101, i32 noundef %sub102, i32 noundef %spec.select)
  br label %if.end116

if.else:                                          ; preds = %if.then81
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv26)
  %cmp108 = icmp slt i32 %22, %conv26
  br i1 %cmp108, label %cond.true110, label %if.else.cond.end114_crit_edge

if.else.cond.end114_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end114

cond.true110:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx97, align 1
  %conv112 = zext i8 %46 to i32
  br label %cond.end114

cond.end114:                                      ; preds = %cond.true110, %if.else.cond.end114_crit_edge
  %cond115 = phi i32 [ %conv112, %cond.true110 ], [ 0, %if.else.cond.end114_crit_edge ]
  tail call fastcc void @hfcsusb_rx_frame(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %22, i32 noundef %cond115)
  br label %if.end116

if.end116:                                        ; preds = %cond.end114, %if.then100, %if.end92.if.end116_crit_edge
  %s0_state.2 = phi i8 [ %s0_state.1, %if.then100 ], [ %s0_state.1, %if.end92.if.end116_crit_edge ], [ %s0_state.0281, %cond.end114 ]
  %47 = ptrtoint ptr %last_urblen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %22, ptr %last_urblen, align 4
  br label %for.inc119

for.inc119:                                       ; preds = %if.end116, %if.end79.for.inc119_crit_edge
  %s0_state.3 = phi i8 [ %s0_state.0281, %if.end79.for.inc119_crit_edge ], [ %s0_state.2, %if.end116 ]
  %inc120 = add nuw nsw i32 %k.0282, 1
  %exitcond285.not = icmp eq i32 %inc120, %smax
  br i1 %exitcond285.not, label %for.end121, label %for.inc119.for.body_crit_edge

for.inc119.for.body_crit_edge:                    ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end121:                                       ; preds = %for.inc119
  %conv122 = zext i8 %s0_state.3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %s0_state.3)
  %tobool123.not = icmp eq i8 %s0_state.3, 0
  br i1 %tobool123.not, label %for.end121.if.end142_crit_edge, label %land.lhs.true124

for.end121.if.end142_crit_edge:                   ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

land.lhs.true124:                                 ; preds = %for.end121
  %initdone = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 31
  %48 = ptrtoint ptr %initdone to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %initdone, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool126.not = icmp eq i8 %49, 0
  br i1 %tobool126.not, label %land.lhs.true124.if.end142_crit_edge, label %land.lhs.true127

land.lhs.true124.if.end142_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

land.lhs.true127:                                 ; preds = %land.lhs.true124
  %state = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv122)
  %cmp129.not = icmp eq i32 %51, %conv122
  br i1 %cmp129.not, label %land.lhs.true127.if.end142_crit_edge, label %if.then131

land.lhs.true127.if.end142_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then131:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv122, ptr %state, align 4
  %Flags = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 1, i32 1
  %call137 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags) #10
  %workq = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %workq) #10
  br label %if.end142

if.end142:                                        ; preds = %if.then131, %land.lhs.true127.if.end142_crit_edge, %land.lhs.true124.if.end142_crit_edge, %for.end121.if.end142_crit_edge
  %54 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw1, align 4
  %dev = getelementptr inbounds %struct.hfcsusb, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %pipe = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 3
  %58 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pipe, align 4
  %buffer144 = getelementptr inbounds %struct.iso_urb, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %usb_packet_maxlen, align 4
  %conv147 = zext i8 %61 to i32
  %intervall = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %intervall to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %intervall, align 4
  %conv148 = zext i8 %63 to i32
  %mul.i = mul i32 %18, %conv147
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %64 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %57, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %65 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %59, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %66 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buffer144, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %67 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %68 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @rx_iso_complete, ptr %complete.i.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %69 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %18, ptr %number_of_packets.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %70 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %transfer_flags.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %71 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %actual_length.i, align 4
  %interval1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %72 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv148, ptr %interval1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end142
  %k.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end142 ]
  %mul2.i = mul i32 %k.025.i, %conv147
  %arrayidx.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul2.i, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i, i32 1
  %74 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv147, ptr %length.i, align 4
  %actual_length7.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i, i32 2
  %75 = ptrtoint ptr %actual_length7.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %actual_length7.i, align 4
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %fill_isoc_urb.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fill_isoc_urb.exit:                               ; preds = %for.body.i
  %call150 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.then153, label %fill_isoc_urb.exit.cleanup_crit_edge

fill_isoc_urb.exit.cleanup_crit_edge:             ; preds = %fill_isoc_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then153:                                       ; preds = %fill_isoc_urb.exit
  %76 = load i32, ptr @debug, align 4
  %and154 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.then153.cleanup_crit_edge, label %do.end159

if.then153.cleanup_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end159:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %name161 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %name161, ptr noundef nonnull @.str.155, i32 noundef %call150) #13
  br label %cleanup

if.else166:                                       ; preds = %if.end21
  br i1 %tobool24.not, label %if.else166.cleanup_crit_edge, label %land.lhs.true168

if.else166.cleanup_crit_edge:                     ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true168:                                 ; preds = %if.else166
  %77 = load i32, ptr @debug, align 4
  %and169 = and i32 %77, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.lhs.true168.cleanup_crit_edge, label %do.end174

land.lhs.true168.cleanup_crit_edge:               ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end174:                                        ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #12
  %name176 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name176, ptr noundef nonnull @.str.155, i32 noundef %status.0, i32 noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end174, %land.lhs.true168.cleanup_crit_edge, %if.else166.cleanup_crit_edge, %do.end159, %if.then153.cleanup_crit_edge, %fill_isoc_urb.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_iso_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %owner_fifo = getelementptr inbounds %struct.iso_urb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %owner_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner_fifo, align 4
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %stop_gracefull = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %stop_gracefull, align 4
  %active = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %active, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dch = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dch, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_skb11 = getelementptr inbounds %struct.dchannel, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %tx_skb11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_skb11, align 4
  %tx_idx13 = getelementptr inbounds %struct.dchannel, ptr %11, i32 0, i32 14
  br label %if.end39

if.else:                                          ; preds = %if.end
  %bch = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bch, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %do.end34, label %if.then15

if.then15:                                        ; preds = %if.else
  %tx_skb17 = getelementptr inbounds %struct.bchannel, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %tx_skb17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_skb17, align 4
  %tx_idx19 = getelementptr inbounds %struct.bchannel, ptr %15, i32 0, i32 20
  %Flags = getelementptr inbounds %struct.bchannel, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %Flags, align 4
  %shr.i = lshr i32 %19, 13
  %and1.i = and i32 %shr.i, 1
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %land.lhs.true, label %if.then15.if.end39_crit_edge

if.then15.if.end39_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true24:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %Flags, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  br label %if.end39

do.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name, ptr noundef nonnull @.str.174) #13
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true24, %land.lhs.true.if.end39_crit_edge, %if.then15.if.end39_crit_edge, %if.then9
  %tx_idx.0 = phi ptr [ %tx_idx13, %if.then9 ], [ %tx_idx19, %if.then15.if.end39_crit_edge ], [ %tx_idx19, %land.lhs.true.if.end39_crit_edge ], [ %tx_idx19, %land.lhs.true24 ]
  %tobool101.not = phi i1 [ true, %if.then9 ], [ true, %if.then15.if.end39_crit_edge ], [ true, %land.lhs.true.if.end39_crit_edge ], [ %tobool28.not, %land.lhs.true24 ]
  %hdlc.0 = phi i32 [ 1, %if.then9 ], [ %and1.i, %if.then15.if.end39_crit_edge ], [ 1, %land.lhs.true.if.end39_crit_edge ], [ 0, %land.lhs.true24 ]
  %tx_skb.0 = phi ptr [ %13, %if.then9 ], [ %17, %if.then15.if.end39_crit_edge ], [ null, %land.lhs.true.if.end39_crit_edge ], [ null, %land.lhs.true24 ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %status40 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %25 = ptrtoint ptr %status40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %26)
  %cmp41 = icmp eq i32 %26, -18
  br i1 %cmp41, label %if.then43, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then43:                                        ; preds = %if.end39
  %27 = load i32, ptr @debug, align 4
  %and = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then43.if.end54_crit_edge, label %do.end48

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name50, ptr noundef nonnull @.str.174, i32 noundef -18, i32 noundef %24) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.then43.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  %status.0 = phi i32 [ %26, %if.end39.if.end54_crit_edge ], [ 0, %do.end48 ], [ 0, %if.then43.if.end54_crit_edge ]
  %active55 = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %active55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %active55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool56.not = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool58.not = icmp eq i32 %status.0, 0
  %or.cond = select i1 %tobool56.not, i1 %tobool58.not, i1 false
  br i1 %or.cond, label %if.then59, label %if.else321

if.then59:                                        ; preds = %if.end54
  %threshold_mask = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 25
  %30 = ptrtoint ptr %threshold_mask to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %threshold_mask, align 4
  %shl = shl nuw i32 1, %24
  %32 = trunc i32 %shl to i8
  %conv62 = and i8 %31, %32
  %arrayidx = getelementptr [8 x i32], ptr @iso_packets, i32 0, i32 %24
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv62)
  %tobool67.not = icmp eq i8 %conv62, 0
  %cond71 = select i1 %tobool67.not, i32 68, i32 48
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 4
  %dev = getelementptr inbounds %struct.hfcsusb, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %pipe = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pipe, align 4
  %buffer = getelementptr inbounds %struct.iso_urb, ptr %1, i32 0, i32 1
  %usb_packet_maxlen = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %usb_packet_maxlen, align 4
  %conv75 = zext i8 %42 to i32
  %intervall = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 6
  %43 = ptrtoint ptr %intervall to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %intervall, align 4
  %conv76 = zext i8 %44 to i32
  %mul.i = mul i32 %34, %conv75
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %45 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %38, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %46 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %40, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buffer, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %48 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %49 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @tx_iso_complete, ptr %complete.i.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %50 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %34, ptr %number_of_packets.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %51 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %transfer_flags.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %52 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %actual_length.i, align 4
  %interval1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %53 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv76, ptr %interval1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then59
  %k.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then59 ]
  %mul2.i = mul i32 %k.025.i, %conv75
  %arrayidx.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul2.i, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i, i32 1
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv75, ptr %length.i, align 4
  %actual_length7.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.025.i, i32 2
  %56 = ptrtoint ptr %actual_length7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %actual_length7.i, align 4
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.body.lr.ph, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.lr.ph:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp63 = icmp sgt i32 %24, 3
  %cond = select i1 %tobool67.not, i32 18, i32 12
  %sink.0 = select i1 %cmp63, i32 %cond, i32 %cond71
  %57 = call ptr @memset(ptr %buffer, i32 0, i32 128)
  %name93 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %bit_line = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdlc.0)
  %tobool130.not = icmp eq i32 %hdlc.0, 0
  %bch143 = getelementptr inbounds %struct.usb_fifo, ptr %3, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp155 = icmp ne i32 %24, 5
  %tobool101.not.not = xor i1 %tobool101.not, true
  %brmerge = select i1 %cmp155, i1 true, i1 %tobool101.not.not
  %sub169 = add nsw i32 %34, -1
  %smax = call i32 @llvm.smax.i32(i32 %34, i32 1)
  %add.ptr = getelementptr %struct.iso_urb, ptr %1, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc278.for.body_crit_edge, %for.body.lr.ph
  %tx_skb.1537 = phi ptr [ %tx_skb.0, %for.body.lr.ph ], [ %tx_skb.2, %for.inc278.for.body_crit_edge ]
  %k.0532 = phi i32 [ 0, %for.body.lr.ph ], [ %inc279, %for.inc278.for.body_crit_edge ]
  %tx_offset.0531 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_offset.1520, %for.inc278.for.body_crit_edge ]
  %58 = load i32, ptr @debug, align 4
  %and82 = and i32 %58, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.body.if.end97_crit_edge, label %if.then84

for.body.if.end97_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then84:                                        ; preds = %for.body
  %status86 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0532, i32 3
  %59 = ptrtoint ptr %status86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool87.not = icmp eq i32 %60, 0
  br i1 %tobool87.not, label %if.then84.if.end97_crit_edge, label %do.end91

if.then84.if.end97_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

do.end91:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %name93, ptr noundef nonnull @.str.174, i32 noundef %k.0532, i32 noundef %60) #13
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.then84.if.end97_crit_edge, %for.body.if.end97_crit_edge
  %tobool98.not = icmp eq ptr %tx_skb.1537, null
  br i1 %tobool98.not, label %if.else100, label %if.end105

if.else100:                                       ; preds = %if.end97
  br i1 %tobool101.not, label %if.else100.if.end224.thread_crit_edge, label %if.else100.if.then108_crit_edge

if.else100.if.then108_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.else100.if.end224.thread_crit_edge:            ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224.thread

if.end105:                                        ; preds = %if.end97
  %len = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.1537, i32 0, i32 6
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %63 = ptrtoint ptr %tx_idx.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_idx.0, align 4
  %sub = sub i32 %62, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp106 = icmp sgt i32 %sub, 0
  br i1 %cmp106, label %if.end105.if.then108_crit_edge, label %if.end105.if.end224.thread_crit_edge

if.end105.if.end224.thread_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224.thread

if.end105.if.then108_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.then108:                                       ; preds = %if.end105.if.then108_crit_edge, %if.else100.if.then108_crit_edge
  %remain.0512 = phi i32 [ %sub, %if.end105.if.then108_crit_edge ], [ 15, %if.else100.if.then108_crit_edge ]
  %65 = ptrtoint ptr %bit_line to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bit_line, align 4
  %sub109 = sub i32 %66, %sink.0
  %sub111 = sub i32 0, %sub109
  %div = sdiv i32 %sub111, 8
  %67 = tail call i32 @llvm.smin.i32(i32 %div, i32 14)
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 0)
  %69 = tail call i32 @llvm.umin.i32(i32 %remain.0512, i32 %68)
  %mul = shl nuw nsw i32 %69, 3
  %add = add i32 %mul, %sub109
  %70 = ptrtoint ptr %bit_line to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add, ptr %bit_line, align 4
  %arrayidx126 = getelementptr %struct.iso_urb, ptr %1, i32 0, i32 1, i32 %tx_offset.0531
  %71 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx126, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %remain.0512, i32 %68)
  %cmp127.not = icmp ugt i32 %remain.0512, %68
  %or.cond521 = select i1 %cmp127.not, i1 true, i1 %tobool130.not
  br i1 %or.cond521, label %if.then108.if.end137_crit_edge, label %if.then131

if.then108.if.end137_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then131:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %arrayidx126, align 1
  %73 = ptrtoint ptr %bit_line to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bit_line, align 4
  %add135 = add i32 %74, 32
  store i32 %add135, ptr %bit_line, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then131, %if.then108.if.end137_crit_edge
  %add.ptr140 = getelementptr i8, ptr %add.ptr, i32 %tx_offset.0531
  br i1 %tobool101.not, label %if.else146, label %if.then142

if.then142:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %bch143 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bch143, align 4
  %fill = getelementptr inbounds %struct.bchannel, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %fill to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fill, align 4
  %79 = zext i8 %78 to i32
  %80 = call ptr @memset(ptr %add.ptr140, i32 %79, i32 %69)
  br label %if.end149

if.else146:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.1537, i32 0, i32 19
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %tx_idx.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_idx.0, align 4
  %add.ptr147 = getelementptr i8, ptr %82, i32 %84
  %85 = call ptr @memcpy(ptr %add.ptr140, ptr %add.ptr147, i32 %69)
  %86 = load i32, ptr %tx_idx.0, align 4
  %add148 = add i32 %86, %69
  store i32 %add148, ptr %tx_idx.0, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else146, %if.then142
  %arrayidx151 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0532
  %87 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %tx_offset.0531, ptr %arrayidx151, align 4
  %add152 = add nuw nsw i32 %69, 1
  %length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0532, i32 1
  %88 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add152, ptr %length, align 4
  br i1 %brmerge, label %if.end149.if.end224_crit_edge, label %land.lhs.true159

if.end149.if.end224_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

land.lhs.true159:                                 ; preds = %if.end149
  %89 = load i32, ptr @debug, align 4
  %and160 = and i32 %89, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %land.lhs.true159.if.end224_crit_edge, label %do.end165

land.lhs.true159.if.end224_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

do.end165:                                        ; preds = %land.lhs.true159
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %name93, ptr noundef nonnull @.str.174, i32 noundef %k.0532, i32 noundef %sub169, i32 noundef %tx_offset.0531, i32 noundef %add152) #13
  %90 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx151, align 4
  %92 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length, align 4
  %add187525 = add i32 %93, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add187525)
  %cmp188526 = icmp ult i32 %91, %add187525
  br i1 %cmp188526, label %do.end165.do.end193_crit_edge, label %do.end165.do.end201_crit_edge

do.end165.do.end201_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end201

do.end165.do.end193_crit_edge:                    ; preds = %do.end165
  br label %do.end193

do.end193:                                        ; preds = %do.end193.do.end193_crit_edge, %do.end165.do.end193_crit_edge
  %i.0527 = phi i32 [ %inc, %do.end193.do.end193_crit_edge ], [ %91, %do.end165.do.end193_crit_edge ]
  %arrayidx196 = getelementptr %struct.iso_urb, ptr %1, i32 0, i32 1, i32 %i.0527
  %94 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %95 to i32
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %conv197) #13
  %inc = add nuw i32 %i.0527, 1
  %96 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx151, align 4
  %98 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %length, align 4
  %add187 = add i32 %99, %97
  %cmp188 = icmp ult i32 %inc, %add187
  br i1 %cmp188, label %do.end193.do.end193_crit_edge, label %do.end193.do.end201_crit_edge

do.end193.do.end201_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end201

do.end193.do.end193_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end193

do.end201:                                        ; preds = %do.end193.do.end201_crit_edge, %do.end165.do.end201_crit_edge
  %len203 = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.1537, i32 0, i32 6
  %100 = ptrtoint ptr %len203 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len203, align 4
  %102 = ptrtoint ptr %tx_idx.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_idx.0, align 4
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %101, i32 noundef %103) #13
  br label %if.end224

if.end224.thread:                                 ; preds = %if.end105.if.end224.thread_crit_edge, %if.else100.if.end224.thread_crit_edge
  %arrayidx211 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0532
  %104 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %tx_offset.0531, ptr %arrayidx211, align 4
  %length215 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %k.0532, i32 1
  %105 = ptrtoint ptr %length215 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %length215, align 4
  %106 = ptrtoint ptr %bit_line to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bit_line, align 4
  %sub217 = sub i32 %107, %sink.0
  %108 = tail call i32 @llvm.smax.i32(i32 %sub217, i32 -768)
  %109 = ptrtoint ptr %bit_line to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %bit_line, align 4
  br label %for.inc278

if.end224:                                        ; preds = %do.end201, %land.lhs.true159.if.end224_crit_edge, %if.end149.if.end224_crit_edge
  br i1 %cmp127.not, label %if.end224.for.inc278_crit_edge, label %if.then226

if.end224.for.inc278_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc278

if.then226:                                       ; preds = %if.end224
  %110 = load i32, ptr @debug, align 4
  %and227 = and i32 %110, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.then226.if.end255_crit_edge, label %do.end232

if.then226.if.end255_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

do.end232:                                        ; preds = %if.then226
  %len236 = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.1537, i32 0, i32 6
  %111 = ptrtoint ptr %len236 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len236, align 4
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name93, ptr noundef nonnull @.str.174, i32 noundef %24, i32 noundef %112) #13
  %113 = ptrtoint ptr %len236 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp239528.not = icmp eq i32 %114, 0
  br i1 %cmp239528.not, label %do.end232.do.end252_crit_edge, label %do.end243.lr.ph

do.end232.do.end252_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end252

do.end243.lr.ph:                                  ; preds = %do.end232
  %data245 = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.1537, i32 0, i32 19
  br label %do.end243

do.end243:                                        ; preds = %do.end243.do.end243_crit_edge, %do.end243.lr.ph
  %i.1529 = phi i32 [ 0, %do.end243.lr.ph ], [ %inc246, %do.end243.do.end243_crit_edge ]
  %115 = ptrtoint ptr %data245 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data245, align 4
  %inc246 = add nuw i32 %i.1529, 1
  %arrayidx247 = getelementptr i8, ptr %116, i32 %i.1529
  %117 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %118 to i32
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv248) #13
  %119 = ptrtoint ptr %len236 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len236, align 4
  %cmp239 = icmp ult i32 %inc246, %120
  br i1 %cmp239, label %do.end243.do.end243_crit_edge, label %do.end243.do.end252_crit_edge

do.end243.do.end252_crit_edge:                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end252

do.end243.do.end243_crit_edge:                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end243

do.end252:                                        ; preds = %do.end243.do.end252_crit_edge, %do.end232.do.end252_crit_edge
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %if.end255

if.end255:                                        ; preds = %do.end252, %if.then226.if.end255_crit_edge
  tail call void @consume_skb(ptr noundef %tx_skb.1537) #10
  %121 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dch, align 4
  %tobool257.not = icmp eq ptr %122, null
  br i1 %tobool257.not, label %if.end255.if.else265_crit_edge, label %land.lhs.true258

if.end255.if.else265_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else265

land.lhs.true258:                                 ; preds = %if.end255
  %call260 = tail call i32 @get_next_dframe(ptr noundef nonnull %122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %land.lhs.true258.if.else265_crit_edge, label %if.then262

land.lhs.true258.if.else265_crit_edge:            ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else265

if.then262:                                       ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dch, align 4
  %tx_skb264 = getelementptr inbounds %struct.dchannel, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %tx_skb264 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_skb264, align 4
  br label %for.inc278

if.else265:                                       ; preds = %land.lhs.true258.if.else265_crit_edge, %if.end255.if.else265_crit_edge
  %127 = ptrtoint ptr %bch143 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bch143, align 4
  %tobool267.not = icmp eq ptr %128, null
  br i1 %tobool267.not, label %if.else265.for.inc278_crit_edge, label %land.lhs.true268

if.else265.for.inc278_crit_edge:                  ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc278

land.lhs.true268:                                 ; preds = %if.else265
  %call270 = tail call i32 @get_next_bframe(ptr noundef nonnull %128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %land.lhs.true268.for.inc278_crit_edge, label %if.then272

land.lhs.true268.for.inc278_crit_edge:            ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc278

if.then272:                                       ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %bch143 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bch143, align 4
  %tx_skb274 = getelementptr inbounds %struct.bchannel, ptr %130, i32 0, i32 17
  %131 = ptrtoint ptr %tx_skb274 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_skb274, align 4
  br label %for.inc278

for.inc278:                                       ; preds = %if.then272, %land.lhs.true268.for.inc278_crit_edge, %if.else265.for.inc278_crit_edge, %if.then262, %if.end224.for.inc278_crit_edge, %if.end224.thread
  %add152.pn = phi i32 [ %add152, %if.then262 ], [ %add152, %if.then272 ], [ %add152, %land.lhs.true268.for.inc278_crit_edge ], [ %add152, %if.else265.for.inc278_crit_edge ], [ %add152, %if.end224.for.inc278_crit_edge ], [ 1, %if.end224.thread ]
  %tx_skb.2 = phi ptr [ %126, %if.then262 ], [ %132, %if.then272 ], [ null, %land.lhs.true268.for.inc278_crit_edge ], [ null, %if.else265.for.inc278_crit_edge ], [ %tx_skb.1537, %if.end224.for.inc278_crit_edge ], [ %tx_skb.1537, %if.end224.thread ]
  %tx_offset.1520 = add i32 %add152.pn, %tx_offset.0531
  %inc279 = add nuw nsw i32 %k.0532, 1
  %exitcond.not = icmp eq i32 %inc279, %smax
  br i1 %exitcond.not, label %for.end280, label %for.inc278.for.body_crit_edge

for.inc278.for.body_crit_edge:                    ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end280:                                       ; preds = %for.inc278
  %call281 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %cmp282 = icmp slt i32 %call281, 0
  br i1 %cmp282, label %if.then284, label %for.end280.if.end296_crit_edge

for.end280.if.end296_crit_edge:                   ; preds = %for.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end296

if.then284:                                       ; preds = %for.end280
  %133 = load i32, ptr @debug, align 4
  %and285 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %if.then284.if.end296_crit_edge, label %do.end290

if.then284.if.end296_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end296

do.end290:                                        ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  %name292 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %call294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name292, ptr noundef nonnull @.str.174, i32 noundef %call281) #13
  br label %if.end296

if.end296:                                        ; preds = %do.end290, %if.then284.if.end296_crit_edge, %for.end280.if.end296_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp297 = icmp eq i32 %24, 4
  br i1 %cmp297, label %land.lhs.true299, label %if.end296.cleanup_crit_edge

if.end296.cleanup_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true299:                                 ; preds = %if.end296
  %protocol = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 27
  %134 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %135)
  %cmp301 = icmp eq i8 %135, 2
  br i1 %cmp301, label %land.lhs.true303, label %land.lhs.true299.cleanup_crit_edge

land.lhs.true299.cleanup_crit_edge:               ; preds = %land.lhs.true299
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true303:                                 ; preds = %land.lhs.true299
  %timers = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 30
  %136 = ptrtoint ptr %timers to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %timers, align 8
  %138 = and i8 %137, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool306.not = icmp eq i8 %138, 0
  br i1 %tobool306.not, label %land.lhs.true303.cleanup_crit_edge, label %if.then307

land.lhs.true303.cleanup_crit_edge:               ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then307:                                       ; preds = %land.lhs.true303
  %nt_timer = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 28
  %139 = ptrtoint ptr %nt_timer to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nt_timer, align 8
  %dec = add i32 %140, -1
  store i32 %dec, ptr %nt_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp308 = icmp slt i32 %dec, 0
  br i1 %cmp308, label %do.body311, label %if.then307.cleanup_crit_edge

if.then307.cleanup_crit_edge:                     ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body311:                                       ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #12
  %Flags313 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 1, i32 1
  %call314 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags313) #10
  %workq = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %141 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %141, ptr noundef %workq) #10
  br label %cleanup

if.else321:                                       ; preds = %if.end54
  br i1 %tobool58.not, label %if.else321.cleanup_crit_edge, label %land.lhs.true323

if.else321.cleanup_crit_edge:                     ; preds = %if.else321
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true323:                                 ; preds = %if.else321
  %142 = load i32, ptr @debug, align 4
  %and324 = and i32 %142, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %land.lhs.true323.cleanup_crit_edge, label %do.end329

land.lhs.true323.cleanup_crit_edge:               ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end329:                                        ; preds = %land.lhs.true323
  %name331 = getelementptr inbounds %struct.hfcsusb, ptr %5, i32 0, i32 32
  %143 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %status.0, label %for.cond.i.13 [
    i32 -12, label %do.end329.symbolic.exit_crit_edge
    i32 -28, label %do.end329.symbolic.exit.loopexit_crit_edge
    i32 -2, label %symbolic.exit.loopexit.fold.split
    i32 -18, label %symbolic.exit.loopexit.fold.split539
    i32 -11, label %symbolic.exit.loopexit.fold.split540
    i32 -6, label %symbolic.exit.loopexit.fold.split541
    i32 -27, label %symbolic.exit.loopexit.fold.split542
    i32 -63, label %symbolic.exit.loopexit.fold.split543
    i32 -32, label %symbolic.exit.loopexit.fold.split544
    i32 -75, label %symbolic.exit.loopexit.fold.split545
    i32 -71, label %symbolic.exit.loopexit.fold.split546
    i32 -84, label %symbolic.exit.loopexit.fold.split547
    i32 -110, label %symbolic.exit.loopexit.fold.split548
    i32 -108, label %symbolic.exit.loopexit.fold.split549
  ]

do.end329.symbolic.exit.loopexit_crit_edge:       ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

do.end329.symbolic.exit_crit_edge:                ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit

for.cond.i.13:                                    ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split:                ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split539:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split540:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split541:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split542:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split543:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split544:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split545:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split546:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split547:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split548:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit.fold.split549:             ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %symbolic.exit.loopexit

symbolic.exit.loopexit:                           ; preds = %symbolic.exit.loopexit.fold.split549, %symbolic.exit.loopexit.fold.split548, %symbolic.exit.loopexit.fold.split547, %symbolic.exit.loopexit.fold.split546, %symbolic.exit.loopexit.fold.split545, %symbolic.exit.loopexit.fold.split544, %symbolic.exit.loopexit.fold.split543, %symbolic.exit.loopexit.fold.split542, %symbolic.exit.loopexit.fold.split541, %symbolic.exit.loopexit.fold.split540, %symbolic.exit.loopexit.fold.split539, %symbolic.exit.loopexit.fold.split, %for.cond.i.13, %do.end329.symbolic.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.139, %for.cond.i.13 ], [ @.str.141, %do.end329.symbolic.exit.loopexit_crit_edge ], [ @.str.142, %symbolic.exit.loopexit.fold.split ], [ @.str.143, %symbolic.exit.loopexit.fold.split539 ], [ @.str.144, %symbolic.exit.loopexit.fold.split540 ], [ @.str.145, %symbolic.exit.loopexit.fold.split541 ], [ @.str.146, %symbolic.exit.loopexit.fold.split542 ], [ @.str.147, %symbolic.exit.loopexit.fold.split543 ], [ @.str.148, %symbolic.exit.loopexit.fold.split544 ], [ @.str.149, %symbolic.exit.loopexit.fold.split545 ], [ @.str.150, %symbolic.exit.loopexit.fold.split546 ], [ @.str.151, %symbolic.exit.loopexit.fold.split547 ], [ @.str.152, %symbolic.exit.loopexit.fold.split548 ], [ @.str.153, %symbolic.exit.loopexit.fold.split549 ]
  br label %symbolic.exit

symbolic.exit:                                    ; preds = %symbolic.exit.loopexit, %do.end329.symbolic.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.140, %do.end329.symbolic.exit_crit_edge ], [ %retval.0.i.ph, %symbolic.exit.loopexit ]
  %call334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name331, ptr noundef nonnull @.str.174, ptr noundef nonnull %retval.0.i, i32 noundef %status.0, i32 noundef %24) #13
  br label %cleanup

cleanup:                                          ; preds = %symbolic.exit, %land.lhs.true323.cleanup_crit_edge, %if.else321.cleanup_crit_edge, %do.body311, %if.then307.cleanup_crit_edge, %land.lhs.true303.cleanup_crit_edge, %land.lhs.true299.cleanup_crit_edge, %if.end296.cleanup_crit_edge, %do.end34, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_int_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %stop_gracefull = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stop_gracefull, align 4
  %active = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %active10 = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %active10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end.if.then14_crit_edge, label %lor.lhs.false

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %status12 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end26, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %14 = load i32, ptr @debug, align 4
  %and = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then14.if.end24_crit_edge, label %do.end19

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 32
  %conv21 = and i32 %9, 255
  %status22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef nonnull @.str.87, i32 noundef %conv21, i32 noundef %16) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %if.then14.if.end24_crit_edge
  %urb25 = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %urb25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb25, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %interval, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %20 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length, align 4
  %buffer = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 8
  %usb_packet_maxlen = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %usb_packet_maxlen, align 4
  %conv28 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv28)
  %cmp29 = icmp eq i32 %conv28, 5
  br i1 %cmp29, label %land.lhs.true, label %if.end26.if.end54_crit_edge

if.end26.if.end54_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end26
  %24 = load i32, ptr @debug, align 4
  %and31 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end54_crit_edge, label %do.end36

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end36:                                         ; preds = %land.lhs.true
  %name38 = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name38, ptr noundef nonnull @.str.87, i32 noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41184 = icmp sgt i32 %21, 0
  br i1 %cmp41184, label %do.end36.do.end45_crit_edge, label %do.end36.do.end51_crit_edge

do.end36.do.end51_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end36.do.end45_crit_edge:                      ; preds = %do.end36
  br label %do.end45

do.end45:                                         ; preds = %do.end45.do.end45_crit_edge, %do.end36.do.end45_crit_edge
  %i.0185 = phi i32 [ %inc, %do.end45.do.end45_crit_edge ], [ 0, %do.end36.do.end45_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.0185
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv47 = zext i8 %26 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv47) #13
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %do.end45.do.end51_crit_edge, label %do.end45.do.end45_crit_edge

do.end45.do.end45_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45.do.end51_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %do.end45.do.end51_crit_edge, %do.end36.do.end51_crit_edge
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %land.lhs.true.if.end54_crit_edge, %if.end26.if.end54_crit_edge
  %last_urblen = getelementptr inbounds %struct.usb_fifo, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %last_urblen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_urblen, align 4
  %29 = ptrtoint ptr %usb_packet_maxlen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %usb_packet_maxlen, align 4
  %conv56 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv56)
  %cmp57.not = icmp eq i32 %28, %conv56
  br i1 %cmp57.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end54
  %arrayidx60 = getelementptr %struct.usb_fifo, ptr %1, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx60, align 1
  %threshold_mask = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 25
  %33 = ptrtoint ptr %threshold_mask to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %threshold_mask, align 4
  %initdone = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 31
  %34 = ptrtoint ptr %initdone to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %initdone, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool62.not = icmp eq i8 %35, 0
  br i1 %tobool62.not, label %if.then59.if.end81_crit_edge, label %land.lhs.true63

if.then59.if.end81_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

land.lhs.true63:                                  ; preds = %if.then59
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buffer, align 1
  %38 = lshr i8 %37, 4
  %39 = zext i8 %38 to i32
  %state = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp66.not = icmp eq i32 %41, %39
  br i1 %cmp66.not, label %land.lhs.true63.if.end81_crit_edge, label %if.then68

land.lhs.true63.if.end81_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then68:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %state, align 4
  %Flags = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 1, i32 1
  %call76 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags) #10
  %workq = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %workq) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then68, %land.lhs.true63.if.end81_crit_edge, %if.then59.if.end81_crit_edge
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buffer, align 1
  %46 = and i8 %45, 1
  %arrayidx86 = getelementptr [8 x i8], ptr @rx_int_complete.eof, i32 0, i32 %conv28
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp87 = icmp sgt i32 %21, 2
  br i1 %cmp87, label %if.then89, label %if.end81.if.end109_crit_edge

if.end81.if.end109_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.usb_fifo, ptr %1, i32 0, i32 8, i32 2
  %48 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual_length, align 4
  %sub = add i32 %49, -2
  %conv91 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv91)
  %cmp92 = icmp ult i32 %21, %conv91
  %conv96 = zext i8 %46 to i32
  %spec.select = select i1 %cmp92, i32 %conv96, i32 0
  tail call fastcc void @hfcsusb_rx_frame(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %spec.select)
  br label %if.end109

if.else:                                          ; preds = %if.end54
  %50 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual_length, align 4
  %conv99 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv99)
  %cmp100 = icmp slt i32 %21, %conv99
  br i1 %cmp100, label %cond.true102, label %if.else.cond.end107_crit_edge

if.else.cond.end107_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end107

cond.true102:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx104 = getelementptr [8 x i8], ptr @rx_int_complete.eof, i32 0, i32 %conv28
  %52 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %53 to i32
  br label %cond.end107

cond.end107:                                      ; preds = %cond.true102, %if.else.cond.end107_crit_edge
  %cond108 = phi i32 [ %conv105, %cond.true102 ], [ 0, %if.else.cond.end107_crit_edge ]
  tail call fastcc void @hfcsusb_rx_frame(ptr noundef %1, ptr noundef %buffer, i32 noundef %51, i32 noundef %cond108)
  br label %if.end109

if.end109:                                        ; preds = %cond.end107, %if.then89, %if.end81.if.end109_crit_edge
  %54 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %actual_length, align 4
  %56 = ptrtoint ptr %last_urblen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_urblen, align 4
  %call112 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end109.cleanup_crit_edge, label %if.then114

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then114:                                       ; preds = %if.end109
  %57 = load i32, ptr @debug, align 4
  %and115 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then114.cleanup_crit_edge, label %do.end120

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end120:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  %name122 = getelementptr inbounds %struct.hfcsusb, ptr %3, i32 0, i32 32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name122, ptr noundef nonnull @.str.87) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %if.then114.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end24, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcsusb_rx_frame(ptr nocapture noundef readonly %fifo, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %finish) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %dch = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 12
  %5 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dch, align 4
  %bch = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 13
  %7 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bch, align 4
  %ech = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 14
  %9 = ptrtoint ptr %ech to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ech, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name, ptr noundef nonnull @.str.101, i32 noundef %3, i32 noundef %len, ptr noundef %6, ptr noundef %8, ptr noundef %10) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not = icmp eq i32 %len, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dch5 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 12
  %11 = ptrtoint ptr %dch5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dch5, align 4
  %tobool6 = icmp ne ptr %12, null
  %lnot.ext = zext i1 %tobool6 to i32
  %bch8 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 13
  %13 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bch8, align 4
  %tobool9 = icmp ne ptr %14, null
  %lnot.ext13 = zext i1 %tobool9 to i32
  %add = add nuw nsw i32 %lnot.ext13, %lnot.ext
  %ech14 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 14
  %15 = ptrtoint ptr %ech14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ech14, align 4
  %tobool15 = icmp ne ptr %16, null
  %lnot.ext19 = zext i1 %tobool15 to i32
  %add20 = add nuw nsw i32 %add, %lnot.ext19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add20)
  %cmp.not = icmp eq i32 %add20, 1
  br i1 %cmp.not, label %do.body31, label %do.end24

do.end24:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %name26 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name26, ptr noundef nonnull @.str.101) #13
  br label %cleanup

do.body31:                                        ; preds = %if.end4
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %17 = ptrtoint ptr %dch5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dch5, align 4
  %tobool41.not = icmp eq ptr %18, null
  br i1 %tobool41.not, label %do.body31.if.end47_crit_edge, label %if.then42

do.body31.if.end47_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %rx_skb44 = getelementptr inbounds %struct.dchannel, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %rx_skb44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb44, align 4
  %maxlen46 = getelementptr inbounds %struct.dchannel, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %maxlen46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxlen46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body31.if.end47_crit_edge
  %hdlc.0 = phi i32 [ 1, %if.then42 ], [ 0, %do.body31.if.end47_crit_edge ]
  %maxlen.0 = phi i32 [ %22, %if.then42 ], [ 0, %do.body31.if.end47_crit_edge ]
  %rx_skb.0 = phi ptr [ %20, %if.then42 ], [ null, %do.body31.if.end47_crit_edge ]
  %23 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bch8, align 4
  %tobool49.not = icmp eq ptr %24, null
  br i1 %tobool49.not, label %if.end47.if.end85_crit_edge, label %if.then50

if.end47.if.end85_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then50:                                        ; preds = %if.end47
  %Flags = getelementptr inbounds %struct.bchannel, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %Flags, align 4
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool53.not = icmp eq i32 %27, 0
  br i1 %tobool53.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %24, i32 0, i32 25
  %28 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dropcnt, align 4
  %add56 = add i32 %29, %len
  store i32 %add56, ptr %dropcnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  br label %cleanup

if.end58:                                         ; preds = %if.then50
  %call60 = tail call i32 @bchannel_get_rxbuf(ptr noundef nonnull %24, i32 noundef %len) #10
  %30 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bch8, align 4
  %rx_skb62 = getelementptr inbounds %struct.bchannel, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %rx_skb62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_skb62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp63 = icmp slt i32 %call60, 0
  br i1 %cmp63, label %if.then65, label %if.end78

if.then65:                                        ; preds = %if.end58
  %tobool66.not = icmp eq ptr %33, null
  br i1 %tobool66.not, label %if.then65.do.end71_crit_edge, label %if.then67

if.then65.do.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %33, i32 noundef 0) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %if.then65.do.end71_crit_edge
  %name73 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %34 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bch8, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name73, i32 noundef %37, i32 noundef %len) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %maxlen80 = getelementptr inbounds %struct.bchannel, ptr %31, i32 0, i32 10
  %38 = ptrtoint ptr %maxlen80 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %maxlen80, align 4
  %conv81 = zext i16 %39 to i32
  %Flags83 = getelementptr inbounds %struct.bchannel, ptr %31, i32 0, i32 2
  %40 = ptrtoint ptr %Flags83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %Flags83, align 4
  %shr.i338 = lshr i32 %41, 13
  %and1.i339 = and i32 %shr.i338, 1
  br label %if.end85

if.end85:                                         ; preds = %if.end78, %if.end47.if.end85_crit_edge
  %hdlc.1 = phi i32 [ %and1.i339, %if.end78 ], [ %hdlc.0, %if.end47.if.end85_crit_edge ]
  %maxlen.1 = phi i32 [ %conv81, %if.end78 ], [ %maxlen.0, %if.end47.if.end85_crit_edge ]
  %rx_skb.1 = phi ptr [ %33, %if.end78 ], [ %rx_skb.0, %if.end47.if.end85_crit_edge ]
  %42 = ptrtoint ptr %ech14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ech14, align 4
  %tobool87.not = icmp eq ptr %43, null
  br i1 %tobool87.not, label %if.end93, label %if.end93.thread

if.end93:                                         ; preds = %if.end85
  %44 = ptrtoint ptr %dch5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dch5, align 4
  %tobool95.not = icmp eq ptr %45, null
  br i1 %tobool95.not, label %if.end93.if.end140_crit_edge, label %if.end93.if.then98_crit_edge

if.end93.if.then98_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.end93.if.end140_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end93.thread:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %rx_skb90 = getelementptr inbounds %struct.dchannel, ptr %43, i32 0, i32 9
  %46 = ptrtoint ptr %rx_skb90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_skb90, align 4
  %maxlen92 = getelementptr inbounds %struct.dchannel, ptr %43, i32 0, i32 10
  %48 = ptrtoint ptr %maxlen92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %maxlen92, align 8
  br label %if.then98

if.then98:                                        ; preds = %if.end93.thread, %if.end93.if.then98_crit_edge
  %rx_skb.2349 = phi ptr [ %rx_skb.1, %if.end93.if.then98_crit_edge ], [ %47, %if.end93.thread ]
  %maxlen.2347 = phi i32 [ %maxlen.1, %if.end93.if.then98_crit_edge ], [ %49, %if.end93.thread ]
  %hdlc.2345 = phi i32 [ %hdlc.1, %if.end93.if.then98_crit_edge ], [ 1, %if.end93.thread ]
  %tobool99.not = icmp eq ptr %rx_skb.2349, null
  br i1 %tobool99.not, label %if.then100, label %if.then98.if.end125_crit_edge

if.then98.if.end125_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then100:                                       ; preds = %if.then98
  %add.i = add i32 %maxlen.2347, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end118, label %if.then103, !prof !528

if.then103:                                       ; preds = %if.then100
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %54 = ptrtoint ptr %dch5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dch5, align 4
  %tobool105.not = icmp eq ptr %55, null
  br i1 %tobool105.not, label %if.then103.if.end109_crit_edge, label %if.then106

if.then103.if.end109_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %rx_skb108 = getelementptr inbounds %struct.dchannel, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %rx_skb108 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i, ptr %rx_skb108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.then103.if.end109_crit_edge
  %57 = ptrtoint ptr %ech14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ech14, align 4
  %tobool111.not = icmp eq ptr %58, null
  br i1 %tobool111.not, label %if.end109.if.end115_crit_edge, label %if.then112

if.end109.if.end115_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %rx_skb114 = getelementptr inbounds %struct.dchannel, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %rx_skb114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %rx_skb114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end109.if.end115_crit_edge
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %if.end125

do.end118:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %name120 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name120, ptr noundef nonnull @.str.101) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  br label %cleanup

if.end125:                                        ; preds = %if.end115, %if.then98.if.end125_crit_edge
  %rx_skb.3 = phi ptr [ %rx_skb.2349, %if.then98.if.end125_crit_edge ], [ %call.i.i, %if.end115 ]
  %len126 = getelementptr inbounds %struct.sk_buff, ptr %rx_skb.3, i32 0, i32 6
  %60 = ptrtoint ptr %len126 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len126, align 4
  %add127 = add i32 %61, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 299, i32 %add127)
  %cmp128 = icmp ugt i32 %add127, 299
  br i1 %cmp128, label %do.end133, label %if.end125.if.end140_crit_edge

if.end125.if.end140_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

do.end133:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %name135 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name135, ptr noundef nonnull @.str.101, i32 noundef %3) #13
  tail call void @skb_trim(ptr noundef nonnull %rx_skb.3, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  br label %cleanup

if.end140:                                        ; preds = %if.end125.if.end140_crit_edge, %if.end93.if.end140_crit_edge
  %hdlc.2344 = phi i32 [ %hdlc.2345, %if.end125.if.end140_crit_edge ], [ %hdlc.1, %if.end93.if.end140_crit_edge ]
  %rx_skb.4 = phi ptr [ %rx_skb.3, %if.end125.if.end140_crit_edge ], [ %rx_skb.1, %if.end93.if.end140_crit_edge ]
  %call.i = tail call ptr @skb_put(ptr noundef %rx_skb.4, i32 noundef %len) #10
  %62 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdlc.2344)
  %tobool142.not = icmp eq i32 %hdlc.2344, 0
  br i1 %tobool142.not, label %if.else234, label %if.then143

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %finish)
  %tobool144.not = icmp eq i32 %finish, 0
  br i1 %tobool144.not, label %if.then143.if.end236_crit_edge, label %if.then145

if.then143.if.end236_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then145:                                       ; preds = %if.then143
  %len146 = getelementptr inbounds %struct.sk_buff, ptr %rx_skb.4, i32 0, i32 6
  %63 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp147 = icmp ugt i32 %64, 3
  br i1 %cmp147, label %land.lhs.true, label %if.then145.if.else199_crit_edge

if.then145.if.else199_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else199

land.lhs.true:                                    ; preds = %if.then145
  %data149 = getelementptr inbounds %struct.sk_buff, ptr %rx_skb.4, i32 0, i32 19
  %65 = ptrtoint ptr %data149 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data149, align 4
  %sub = add i32 %64, -1
  %arrayidx = getelementptr i8, ptr %66, i32 %sub
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool151.not = icmp eq i8 %68, 0
  br i1 %tobool151.not, label %if.then152, label %land.lhs.true.if.else199_crit_edge

land.lhs.true.if.else199_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else199

if.then152:                                       ; preds = %land.lhs.true
  %69 = load i32, ptr @debug, align 4
  %and153 = and i32 %69, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.then152.if.end180_crit_edge, label %do.end158

if.then152.if.end180_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

do.end158:                                        ; preds = %if.then152
  %name160 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name160, ptr noundef nonnull @.str.101, i32 noundef %3, i32 noundef %64) #13
  %70 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp165356.not = icmp eq i32 %71, 0
  br i1 %cmp165356.not, label %do.end158.do.end177_crit_edge, label %do.end158.do.end169_crit_edge

do.end158.do.end169_crit_edge:                    ; preds = %do.end158
  br label %do.end169

do.end158.do.end177_crit_edge:                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177

do.end169:                                        ; preds = %do.end169.do.end169_crit_edge, %do.end158.do.end169_crit_edge
  %i.0357 = phi i32 [ %inc, %do.end169.do.end169_crit_edge ], [ 0, %do.end158.do.end169_crit_edge ]
  %72 = ptrtoint ptr %data149 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data149, align 4
  %inc = add nuw i32 %i.0357, 1
  %arrayidx172 = getelementptr i8, ptr %73, i32 %i.0357
  %74 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %75 to i32
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv173) #13
  %76 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len146, align 4
  %cmp165 = icmp ult i32 %inc, %77
  br i1 %cmp165, label %do.end169.do.end169_crit_edge, label %do.end169.do.end177_crit_edge

do.end169.do.end177_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177

do.end169.do.end169_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

do.end177:                                        ; preds = %do.end169.do.end177_crit_edge, %do.end158.do.end177_crit_edge
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %if.end180

if.end180:                                        ; preds = %do.end177, %if.then152.if.end180_crit_edge
  %78 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len146, align 4
  %sub182 = add i32 %79, -3
  tail call void @skb_trim(ptr noundef %rx_skb.4, i32 noundef %sub182) #10
  %80 = ptrtoint ptr %dch5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dch5, align 4
  %tobool184.not = icmp eq ptr %81, null
  br i1 %tobool184.not, label %if.end180.if.end187_crit_edge, label %if.then185

if.end180.if.end187_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @recv_Dchannel(ptr noundef nonnull %81) #10
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.end180.if.end187_crit_edge
  %82 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bch8, align 4
  %tobool189.not = icmp eq ptr %83, null
  br i1 %tobool189.not, label %if.end187.if.end192_crit_edge, label %if.then190

if.end187.if.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then190:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @recv_Bchannel(ptr noundef nonnull %83, i32 noundef 65535, i1 noundef zeroext false) #10
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end187.if.end192_crit_edge
  %84 = ptrtoint ptr %ech14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ech14, align 4
  %tobool194.not = icmp eq ptr %85, null
  br i1 %tobool194.not, label %if.end192.if.end236_crit_edge, label %if.then195

if.end192.if.end236_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %dch197 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 1
  tail call void @recv_Echannel(ptr noundef nonnull %85, ptr noundef %dch197) #10
  br label %if.end236

if.else199:                                       ; preds = %land.lhs.true.if.else199_crit_edge, %if.then145.if.else199_crit_edge
  %86 = load i32, ptr @debug, align 4
  %and200 = and i32 %86, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.else199.if.end231_crit_edge, label %do.end205

if.else199.if.end231_crit_edge:                   ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

do.end205:                                        ; preds = %if.else199
  %name207 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name207, i32 noundef %3, i32 noundef %64) #13
  %87 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp213354.not = icmp eq i32 %88, 0
  br i1 %cmp213354.not, label %do.end205.do.end228_crit_edge, label %do.end218.lr.ph

do.end205.do.end228_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end228

do.end218.lr.ph:                                  ; preds = %do.end205
  %data220 = getelementptr inbounds %struct.sk_buff, ptr %rx_skb.4, i32 0, i32 19
  br label %do.end218

do.end218:                                        ; preds = %do.end218.do.end218_crit_edge, %do.end218.lr.ph
  %i.1355 = phi i32 [ 0, %do.end218.lr.ph ], [ %inc221, %do.end218.do.end218_crit_edge ]
  %89 = ptrtoint ptr %data220 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data220, align 4
  %inc221 = add nuw i32 %i.1355, 1
  %arrayidx222 = getelementptr i8, ptr %90, i32 %i.1355
  %91 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %92 to i32
  %call224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv223) #13
  %93 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len146, align 4
  %cmp213 = icmp ult i32 %inc221, %94
  br i1 %cmp213, label %do.end218.do.end218_crit_edge, label %do.end218.do.end228_crit_edge

do.end218.do.end228_crit_edge:                    ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end228

do.end218.do.end218_crit_edge:                    ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end218

do.end228:                                        ; preds = %do.end218.do.end228_crit_edge, %do.end205.do.end228_crit_edge
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #13
  br label %if.end231

if.end231:                                        ; preds = %do.end228, %if.else199.if.end231_crit_edge
  tail call void @skb_trim(ptr noundef %rx_skb.4, i32 noundef 0) #10
  br label %if.end236

if.else234:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %bch8 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bch8, align 4
  tail call void @recv_Bchannel(ptr noundef %96, i32 noundef 65535, i1 noundef zeroext false) #10
  br label %if.end236

if.end236:                                        ; preds = %if.else234, %if.end231, %if.then195, %if.end192.if.end236_crit_edge, %if.then143.if.end236_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %do.end133, %do.end118, %do.end71, %if.then54, %do.end24, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Dchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Echannel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_dframe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_iso_gracefull(ptr nocapture noundef %fifo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %stop_gracefull = getelementptr inbounds %struct.usb_fifo, ptr %fifo, i32 0, i32 16
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef %name, ptr noundef nonnull @.str.219, i32 noundef %4, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %do.end9, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %stop_gracefull, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %call4.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %do.end9.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

do.end9.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo, align 4
  %call11.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef %name, ptr noundef nonnull @.str.219, i32 noundef %8, i32 noundef 1) #13
  br label %if.end.1

if.end.1:                                         ; preds = %do.end9.1, %if.end.if.end.1_crit_edge
  %9 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stop_gracefull, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.1) #10
  %10 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not54 = icmp eq i8 %11, 0
  br i1 %tobool19.not54, label %if.end.1.for.inc36.1_crit_edge, label %while.body

if.end.1.for.inc36.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.1

while.body:                                       ; preds = %if.end.1
  %call21 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %12 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %while.body.while.end_crit_edge, label %while.body.173

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.173:                                   ; preds = %while.body
  %call21.169 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %14 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not.170 = icmp eq i8 %15, 0
  br i1 %tobool19.not.170, label %while.body.173.while.end_crit_edge, label %while.body.2

while.body.173.while.end_crit_edge:               ; preds = %while.body.173
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.2:                                     ; preds = %while.body.173
  call void @__sanitizer_cov_trace_pc() #12
  %call21.2 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %16 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not.2 = icmp eq i8 %17, 0
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.173.while.end_crit_edge, %while.body.while.end_crit_edge
  %tobool19.not.lcssa = phi i1 [ %tobool19.not, %while.body.while.end_crit_edge ], [ %tobool19.not.170, %while.body.173.while.end_crit_edge ], [ %tobool19.not.2, %while.body.2 ]
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  %brmerge = select i1 %tobool22.not, i1 true, i1 %tobool19.not.lcssa
  br i1 %brmerge, label %while.end.for.inc36_crit_edge, label %do.end29

while.end.for.inc36_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

do.end29:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %name, ptr noundef nonnull @.str.219, i32 noundef %20, i32 noundef 0) #13
  br label %for.inc36

for.inc36:                                        ; preds = %do.end29, %while.end.for.inc36_crit_edge
  %21 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool19.not54.1 = icmp eq i8 %.pr, 0
  br i1 %tobool19.not54.1, label %for.inc36.for.inc36.1_crit_edge, label %while.body.1

for.inc36.for.inc36.1_crit_edge:                  ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.1

while.body.1:                                     ; preds = %for.inc36
  %call21.1 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %22 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not.1 = icmp eq i8 %23, 0
  br i1 %tobool19.not.1, label %while.body.1.while.end.1_crit_edge, label %while.body.1.1

while.body.1.while.end.1_crit_edge:               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.1

while.body.1.1:                                   ; preds = %while.body.1
  %call21.1.1 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %24 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not.1.1 = icmp eq i8 %25, 0
  br i1 %tobool19.not.1.1, label %while.body.1.1.while.end.1_crit_edge, label %while.body.1.2

while.body.1.1.while.end.1_crit_edge:             ; preds = %while.body.1.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.1

while.body.1.2:                                   ; preds = %while.body.1.1
  call void @__sanitizer_cov_trace_pc() #12
  %call21.1.2 = tail call i32 @schedule_timeout_interruptible(i32 noundef 0) #10
  %26 = ptrtoint ptr %stop_gracefull to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stop_gracefull, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not.1.2 = icmp eq i8 %27, 0
  br label %while.end.1

while.end.1:                                      ; preds = %while.body.1.2, %while.body.1.1.while.end.1_crit_edge, %while.body.1.while.end.1_crit_edge
  %tobool19.not.1.lcssa = phi i1 [ %tobool19.not.1, %while.body.1.while.end.1_crit_edge ], [ %tobool19.not.1.1, %while.body.1.1.while.end.1_crit_edge ], [ %tobool19.not.1.2, %while.body.1.2 ]
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not.1 = icmp eq i32 %28, 0
  %brmerge.1 = select i1 %tobool22.not.1, i1 true, i1 %tobool19.not.1.lcssa
  br i1 %brmerge.1, label %while.end.1.for.inc36.1_crit_edge, label %do.end29.1

while.end.1.for.inc36.1_crit_edge:                ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.1

do.end29.1:                                       ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifo, align 4
  %call34.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %name, ptr noundef nonnull @.str.219, i32 noundef %30, i32 noundef 1) #13
  br label %for.inc36.1

for.inc36.1:                                      ; preds = %do.end29.1, %while.end.1.for.inc36.1_crit_edge, %for.inc36.for.inc36.1_crit_edge, %if.end.1.for.inc36.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfcsusb_setup_bch(ptr noundef %bch, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %state = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name, ptr noundef nonnull @.str.233, i32 noundef %4, i32 noundef %protocol, i32 noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp = icmp sgt i32 %protocol, 0
  %spec.store.select = select i1 %cmp, i8 8, i8 0
  %7 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %protocol, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %if.end.sw.bb5_crit_edge
    i32 33, label %sw.bb12
    i32 34, label %if.end.if.then32.sink.split_crit_edge
  ]

if.end.if.then32.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.sink.split

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %state4 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %8 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %state4, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %if.end.sw.bb5_crit_edge
  %state6 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %9 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = or i8 %spec.store.select, 2
  br label %if.then32.sink.split

sw.default:                                       ; preds = %if.end
  %12 = load i32, ptr @debug, align 4
  %and19 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.default.cleanup_crit_edge, label %do.end24

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %name26 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name26, ptr noundef nonnull @.str.233, i32 noundef %protocol) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5
  %13 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state6, align 4
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %Flags) #10
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %protocol)
  %cmp30 = icmp sgt i32 %protocol, -1
  br i1 %cmp30, label %sw.epilog.if.then32_crit_edge, label %sw.epilog.if.end93_crit_edge

sw.epilog.if.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

sw.epilog.if.then32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32.sink.split:                             ; preds = %sw.bb12, %if.end.if.then32.sink.split_crit_edge
  %.sink = phi i32 [ 12, %sw.bb12 ], [ 13, %if.end.if.then32.sink.split_crit_edge ]
  %conhdlc.0146.ph = phi i8 [ %11, %sw.bb12 ], [ %spec.store.select, %if.end.if.then32.sink.split_crit_edge ]
  %state14 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %14 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %protocol, ptr %state14, align 4
  %Flags15 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %Flags15) #10
  br label %if.then32

if.then32:                                        ; preds = %if.then32.sink.split, %sw.epilog.if.then32_crit_edge
  %conhdlc.0146 = phi i8 [ %spec.store.select, %sw.epilog.if.then32_crit_edge ], [ %conhdlc.0146.ph, %if.then32.sink.split ]
  %nr33 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %15 = ptrtoint ptr %nr33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp34 = icmp eq i32 %16, 1
  %conv36 = select i1 %cmp34, i8 0, i8 2
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext %conv36)
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext -6, i8 noundef zeroext %conhdlc.0146)
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 2)
  %17 = ptrtoint ptr %nr33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp41 = icmp eq i32 %18, 1
  %conv44 = select i1 %cmp41, i8 1, i8 3
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext %conv44)
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext -6, i8 noundef zeroext %conhdlc.0146)
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 2)
  %protocol48 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %protocol48 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp50 = icmp eq i8 %20, 1
  %conv53 = select i1 %cmp50, i8 64, i8 68
  %Flags55 = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %Flags55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %Flags55, align 4
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 6
  %25 = and i8 %24, 1
  %spec.select = or i8 %conv53, %25
  %Flags68 = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 2, i32 1, i32 2
  %26 = ptrtoint ptr %Flags68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %Flags68, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool70.not = icmp eq i32 %28, 0
  %29 = or i8 %spec.select, 2
  %30 = or i8 %24, 2
  %sctrl.1 = select i1 %tobool70.not, i8 %spec.select, i8 %29
  %sctrl_r.1 = select i1 %tobool70.not, i8 %25, i8 %30
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 49, i8 noundef zeroext %sctrl.1)
  tail call fastcc void @write_reg(ptr noundef %1, i8 noundef zeroext 51, i8 noundef zeroext %sctrl_r.1)
  %31 = ptrtoint ptr %nr33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp85 = icmp eq i32 %32, 1
  %cond87 = select i1 %cmp85, i32 5, i32 8
  %cond91 = select i1 %cmp85, i32 6, i32 9
  %cond87.sink = select i1 %cmp, i32 %cond87, i32 %cond91
  tail call fastcc void @handle_led(ptr noundef %1, i32 noundef %cond87.sink)
  br label %if.end93

if.end93:                                         ; preds = %if.then32, %sw.epilog.if.end93_crit_edge
  %call94 = tail call fastcc i32 @hfcsusb_ph_info(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %do.end24, %sw.default.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call94, %if.end93 ], [ 0, %sw.bb5.cleanup_crit_edge ], [ -92, %do.end24 ], [ -92, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deactivate_bchannel(ptr noundef %bch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %debug = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 21
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %name, ptr noundef nonnull @.str.238, i32 noundef %5) #13
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 24
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call void @mISDN_clear_bchannel(ptr noundef %bch) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  %call12 = tail call fastcc i32 @hfcsusb_setup_bch(ptr noundef %bch, i32 noundef 0)
  %nr13 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %6 = ptrtoint ptr %nr13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr13, align 4
  %sub = add i32 %7, -1
  tail call fastcc void @hfcsusb_stop_endpoint(ptr noundef %1, i32 noundef %sub)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctrl_complete(ptr nocapture noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.251) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev1, align 4
  %ctrl_cnt = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %ctrl_cnt, align 8
  %ctrl_out_idx = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %ctrl_out_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_out_idx, align 4
  %inc = add i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc)
  %cmp = icmp sgt i32 %inc, 63
  %spec.select = select i1 %cmp, i32 0, i32 %inc
  %11 = ptrtoint ptr %ctrl_out_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %ctrl_out_idx, align 4
  %12 = load i32, ptr @debug, align 4
  %and.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %do.end.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, ptr noundef nonnull @.str.44) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then3.if.end.i_crit_edge
  %13 = ptrtoint ptr %ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctrl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end8_crit_edge, label %if.then2.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_out_pipe.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %ctrl_out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_out_pipe.i, align 8
  %ctrl_urb.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %ctrl_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_urb.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %pipe.i, align 4
  %ctrl_write.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 18
  %20 = load ptr, ptr %ctrl_urb.i, align 4
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ctrl_write.i, ptr %setup_packet.i, align 4
  %22 = load ptr, ptr %ctrl_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %transfer_buffer.i, align 4
  %24 = load ptr, ptr %ctrl_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %26 = ptrtoint ptr %ctrl_out_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_out_idx, align 4
  %arrayidx.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 13, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %29 to i16
  %30 = shl nuw i16 %conv.i, 8
  %wIndex.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 18, i32 3
  %31 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %wIndex.i, align 4
  %reg_val.i = getelementptr %struct.hfcsusb, ptr %1, i32 0, i32 13, i32 %27, i32 1
  %32 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg_val.i, align 1
  %conv10.i = zext i8 %33 to i16
  %34 = shl nuw i16 %conv10.i, 8
  %wValue.i = getelementptr inbounds %struct.hfcsusb, ptr %1, i32 0, i32 18, i32 2
  %35 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %wValue.i, align 2
  %36 = load ptr, ptr %ctrl_urb.i, align 4
  %call13.i = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then2.i, %if.end.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 276)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !241, !242, !244, !245, !246, !248, !249, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !347, !348, !349, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !399, !400, !401, !402, !404, !405, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !437, !439, !440, !441, !443, !444, !445, !446, !448, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !479, !480, !482, !484, !485, !486, !487, !489, !490, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517}
!llvm.module.flags = !{!519, !520, !521, !522, !523, !524, !525, !526}
!llvm.ident = !{!527}

!0 = !{ptr @__UNIQUE_ID_author462, !1, !"__UNIQUE_ID_author462", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file463, !3, !"__UNIQUE_ID_file463", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_license464, !3, !"__UNIQUE_ID_license464", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype465, !6, !"__UNIQUE_ID_debugtype465", i1 false, i1 false}
!8 = !{ptr @__param_poll, !9, !"__param_poll", i1 false, i1 false}
!9 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 36, i32 1}
!10 = !{ptr @__UNIQUE_ID_polltype466, !9, !"__UNIQUE_ID_polltype466", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_hfcsusb__467_2144_hfcsusb_drv_init6, !12, !"__initcall__kmod_hfcsusb__467_2144_hfcsusb_drv_init6", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2144, i32 1}
!13 = !{ptr @__exitcall_hfcsusb_drv_exit, !12, !"__exitcall_hfcsusb_drv_exit", i1 false, i1 false}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 26, i32 21}
!16 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!17 = !{ptr @__param_str_poll, !9, !"__param_str_poll", i1 false, i1 false}
!18 = !{ptr @poll, !19, !"poll", i1 false, i1 false}
!19 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 27, i32 12}
!20 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2137, i32 10}
!23 = !{ptr @hfcsusb_drv, !24, !"hfcsusb_drv", i1 false, i1 false}
!24 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2136, i32 26}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1931, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hfcsusb_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @hfcsusb_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1937, i32 3}
!33 = !{ptr @hfcsusb_probe._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hfcsusb_probe._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2019, i32 42}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2097, i32 3}
!39 = !{ptr @hfcsusb_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hfcsusb_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2103, i32 2}
!43 = !{ptr @hfcsusb_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hfcsusb_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @validconf, !46, !"validconf", i1 false, i1 false}
!46 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 183, i32 1}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 203, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 204, i32 2}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 205, i32 2}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 206, i32 2}
!55 = !{ptr @conf_str, !56, !"conf_str", i1 false, i1 false}
!56 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 202, i32 14}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1839, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @setup_instance._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @setup_instance._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @setup_instance.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1841, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @setup_instance.__key.22, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1842, i32 2}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1883, i32 42}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1885, i32 2}
!72 = !{ptr @setup_instance._entry.25, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @setup_instance._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 617, i32 4}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ph_state_nt._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ph_state_nt._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 622, i32 4}
!81 = !{ptr @ph_state_nt._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ph_state_nt._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 333, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 334, i32 2}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 335, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 336, i32 2}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 337, i32 2}
!93 = !{ptr @HFC_NT_LAYER1_STATES, !94, !"HFC_NT_LAYER1_STATES", i1 false, i1 false}
!94 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 332, i32 20}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 184, i32 4}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @handle_led._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @handle_led._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 756, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @hfcsusb_ph_command._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @hfcsusb_ph_command._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 81, i32 3}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @write_reg._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @write_reg._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 56, i32 3}
!112 = !{ptr @ctrl_start_transfer._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ctrl_start_transfer._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 576, i32 4}
!116 = !{ptr @ph_state_te._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ph_state_te._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 579, i32 4}
!120 = !{ptr @ph_state_te._entry.46, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ph_state_te._entry_ptr.48, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 321, i32 2}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 322, i32 2}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 323, i32 2}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 324, i32 2}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 325, i32 2}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 326, i32 2}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 327, i32 2}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 328, i32 2}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 329, i32 2}
!140 = !{ptr @HFC_TE_LAYER1_STATES, !141, !"HFC_TE_LAYER1_STATES", i1 false, i1 false}
!141 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 320, i32 20}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 286, i32 4}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @hfcusb_l2l1D._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @hfcusb_l2l1D._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 300, i32 4}
!149 = !{ptr @hfcusb_l2l1D._entry.60, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @hfcusb_l2l1D._entry_ptr.62, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 324, i32 4}
!155 = !{ptr @hfcusb_l2l1D._entry.65, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @hfcusb_l2l1D._entry_ptr.67, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 526, i32 3}
!159 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @hfc_dctrl._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @hfc_dctrl._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 542, i32 4}
!164 = !{ptr @hfc_dctrl._entry.70, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @hfc_dctrl._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 559, i32 4}
!168 = !{ptr @hfc_dctrl._entry.73, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @hfc_dctrl._entry_ptr.75, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 417, i32 3}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @open_dchannel._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @open_dchannel._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 459, i32 3}
!177 = !{ptr @open_dchannel._entry.78, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @open_dchannel._entry_ptr.80, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1498, i32 3}
!181 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @start_int_fifo._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @start_int_fifo._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1513, i32 3}
!186 = !{ptr @start_int_fifo._entry.83, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @start_int_fifo._entry_ptr.85, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @rx_int_complete.eof, !189, !"eof", i1 false, i1 false}
!189 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1086, i32 14}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1101, i32 4}
!192 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rx_int_complete._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @rx_int_complete._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1114, i32 3}
!197 = !{ptr @rx_int_complete._entry.88, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @rx_int_complete._entry_ptr.90, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1117, i32 4}
!201 = !{ptr @rx_int_complete._entry.91, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @rx_int_complete._entry_ptr.93, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1118, i32 3}
!205 = !{ptr @rx_int_complete._entry.94, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @rx_int_complete._entry_ptr.96, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1146, i32 4}
!209 = !{ptr @rx_int_complete._entry.97, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @rx_int_complete._entry_ptr.99, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 811, i32 3}
!213 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @hfcsusb_rx_frame._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @hfcsusb_rx_frame._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 820, i32 3}
!218 = !{ptr @hfcsusb_rx_frame._entry.102, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @hfcsusb_rx_frame._entry_ptr.104, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 842, i32 4}
!222 = !{ptr @hfcsusb_rx_frame._entry.105, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @hfcsusb_rx_frame._entry_ptr.107, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 866, i32 5}
!226 = !{ptr @hfcsusb_rx_frame._entry.108, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @hfcsusb_rx_frame._entry_ptr.110, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 874, i32 4}
!230 = !{ptr @hfcsusb_rx_frame._entry.111, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @hfcsusb_rx_frame._entry_ptr.113, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 891, i32 6}
!234 = !{ptr @hfcsusb_rx_frame._entry.114, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @hfcsusb_rx_frame._entry_ptr.116, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @hfcsusb_rx_frame._entry.117, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 897, i32 7}
!238 = !{ptr @hfcsusb_rx_frame._entry_ptr.118, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @hfcsusb_rx_frame._entry.119, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 899, i32 6}
!241 = !{ptr @hfcsusb_rx_frame._entry_ptr.120, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 915, i32 6}
!244 = !{ptr @hfcsusb_rx_frame._entry.121, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @hfcsusb_rx_frame._entry_ptr.123, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @hfcsusb_rx_frame._entry.124, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 921, i32 7}
!248 = !{ptr @hfcsusb_rx_frame._entry_ptr.125, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @hfcsusb_rx_frame._entry.126, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 923, i32 6}
!251 = !{ptr @hfcsusb_rx_frame._entry_ptr.127, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1383, i32 3}
!254 = !{ptr @.str.129, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @start_isoc_chain._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @start_isoc_chain._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1392, i32 5}
!259 = !{ptr @start_isoc_chain._entry.130, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @start_isoc_chain._entry_ptr.132, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.134, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1423, i32 5}
!263 = !{ptr @start_isoc_chain._entry.133, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @start_isoc_chain._entry_ptr.135, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1434, i32 4}
!267 = !{ptr @start_isoc_chain._entry.136, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @start_isoc_chain._entry_ptr.138, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.139, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 154, i32 9}
!271 = !{ptr @.str.140, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 130, i32 12}
!273 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 131, i32 12}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 132, i32 12}
!277 = !{ptr @.str.143, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 133, i32 11}
!279 = !{ptr @.str.144, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 134, i32 12}
!281 = !{ptr @.str.145, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 135, i32 11}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 136, i32 11}
!285 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 137, i32 11}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 138, i32 11}
!289 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 139, i32 15}
!291 = !{ptr @.str.150, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 140, i32 12}
!293 = !{ptr @.str.151, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 141, i32 12}
!295 = !{ptr @.str.152, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 142, i32 15}
!297 = !{ptr @.str.153, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 143, i32 15}
!299 = !{ptr @urb_errlist, !300, !"urb_errlist", i1 false, i1 false}
!300 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 129, i32 36}
!301 = !{ptr @rx_iso_complete.eof, !302, !"eof", i1 false, i1 false}
!302 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 967, i32 14}
!303 = !{ptr @.str.154, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 989, i32 4}
!305 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @rx_iso_complete._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @rx_iso_complete._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.157, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1009, i32 5}
!310 = !{ptr @rx_iso_complete._entry.156, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @rx_iso_complete._entry_ptr.158, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.160, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1017, i32 5}
!314 = !{ptr @rx_iso_complete._entry.159, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @rx_iso_complete._entry_ptr.161, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.163, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1023, i32 6}
!318 = !{ptr @rx_iso_complete._entry.162, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @rx_iso_complete._entry_ptr.164, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @rx_iso_complete._entry.165, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1024, i32 5}
!322 = !{ptr @rx_iso_complete._entry_ptr.166, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.168, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1066, i32 5}
!325 = !{ptr @rx_iso_complete._entry.167, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @rx_iso_complete._entry_ptr.169, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.171, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1072, i32 4}
!329 = !{ptr @rx_iso_complete._entry.170, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @rx_iso_complete._entry_ptr.172, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @iso_packets, !332, !"iso_packets", i1 false, i1 false}
!332 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 93, i32 12}
!333 = !{ptr @.str.173, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1186, i32 3}
!335 = !{ptr @.str.174, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @tx_iso_complete._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @tx_iso_complete._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.176, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1203, i32 4}
!340 = !{ptr @tx_iso_complete._entry.175, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @tx_iso_complete._entry_ptr.177, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @tx_iso_complete._entry.178, !343, !"_entry", i1 false, i1 false}
!343 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1234, i32 6}
!344 = !{ptr @tx_iso_complete._entry_ptr.179, !343, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.181, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1290, i32 6}
!347 = !{ptr @tx_iso_complete._entry.180, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @tx_iso_complete._entry_ptr.182, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @tx_iso_complete._entry.183, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1301, i32 7}
!351 = !{ptr @tx_iso_complete._entry_ptr.184, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.186, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1304, i32 6}
!354 = !{ptr @tx_iso_complete._entry.185, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @tx_iso_complete._entry_ptr.187, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.189, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1322, i32 6}
!358 = !{ptr @tx_iso_complete._entry.188, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @tx_iso_complete._entry_ptr.190, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @tx_iso_complete._entry.191, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1328, i32 7}
!362 = !{ptr @tx_iso_complete._entry_ptr.192, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @tx_iso_complete._entry.193, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1330, i32 6}
!365 = !{ptr @tx_iso_complete._entry_ptr.194, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.196, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1345, i32 5}
!368 = !{ptr @tx_iso_complete._entry.195, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @tx_iso_complete._entry_ptr.197, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.199, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1363, i32 4}
!372 = !{ptr @tx_iso_complete._entry.198, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @tx_iso_complete._entry_ptr.200, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.201, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 368, i32 3}
!376 = !{ptr @.str.202, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @hfc_l1callback._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @hfc_l1callback._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.204, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 403, i32 4}
!381 = !{ptr @hfc_l1callback._entry.203, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @hfc_l1callback._entry_ptr.205, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.206, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1523, i32 3}
!385 = !{ptr @.str.207, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @setPortMode._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @setPortMode._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.208, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 475, i32 3}
!390 = !{ptr @.str.209, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @open_bchannel._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @open_bchannel._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.211, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 485, i32 3}
!395 = !{ptr @open_bchannel._entry.210, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @open_bchannel._entry_ptr.212, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.213, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1477, i32 3}
!399 = !{ptr @.str.214, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @stop_int_gracefull._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @stop_int_gracefull._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.216, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1486, i32 3}
!404 = !{ptr @stop_int_gracefull._entry.215, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @stop_int_gracefull._entry_ptr.217, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.218, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1452, i32 4}
!408 = !{ptr @.str.219, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @stop_iso_gracefull._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @stop_iso_gracefull._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.221, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1463, i32 4}
!413 = !{ptr @stop_iso_gracefull._entry.220, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @stop_iso_gracefull._entry_ptr.222, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.223, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 496, i32 3}
!417 = !{ptr @.str.224, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @channel_ctrl._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @channel_ctrl._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.226, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 505, i32 3}
!422 = !{ptr @channel_ctrl._entry.225, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @channel_ctrl._entry_ptr.227, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.228, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 205, i32 3}
!426 = !{ptr @hfcusb_l2l1B._entry, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @hfcusb_l2l1B._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.230, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 213, i32 4}
!430 = !{ptr @hfcusb_l2l1B._entry.229, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @hfcusb_l2l1B._entry_ptr.231, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.232, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 686, i32 3}
!434 = !{ptr @.str.233, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @hfcsusb_setup_bch._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @hfcsusb_setup_bch._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.235, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 717, i32 4}
!439 = !{ptr @hfcsusb_setup_bch._entry.234, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @hfcsusb_setup_bch._entry_ptr.236, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.237, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1785, i32 3}
!443 = !{ptr @.str.238, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @deactivate_bchannel._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @deactivate_bchannel._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.239, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1805, i32 3}
!448 = !{ptr @.str.240, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @hfc_bctrl._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @hfc_bctrl._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.242, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1826, i32 3}
!453 = !{ptr @hfc_bctrl._entry.241, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @hfc_bctrl._entry_ptr.243, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.244, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1699, i32 3}
!457 = !{ptr @setup_hfcsusb._entry, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @setup_hfcsusb._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.246, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1711, i32 3}
!461 = !{ptr @setup_hfcsusb._entry.245, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @setup_hfcsusb._entry_ptr.247, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.249, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1716, i32 3}
!465 = !{ptr @setup_hfcsusb._entry.248, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @setup_hfcsusb._entry_ptr.250, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.251, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 108, i32 3}
!469 = !{ptr @ctrl_complete._entry, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @ctrl_complete._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.252, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1548, i32 3}
!473 = !{ptr @reset_hfcsusb._entry, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @reset_hfcsusb._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @hfcsusb_cnt, !476, !"hfcsusb_cnt", i1 false, i1 false}
!476 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 38, i32 12}
!477 = !{ptr @.str.253, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 30, i32 8}
!479 = !{ptr @HFClock, !478, !"HFClock", i1 false, i1 false}
!480 = !{ptr @HFClist, !481, !"HFClist", i1 false, i1 false}
!481 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 29, i32 8}
!482 = !{ptr @.str.254, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 2123, i32 2}
!484 = !{ptr @.str.255, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @hfcsusb_disconnect._entry, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @hfcsusb_disconnect._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.256, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.c", i32 1745, i32 3}
!489 = !{ptr @release_hw._entry, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @release_hw._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.257, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 346, i32 6}
!493 = !{ptr @.str.258, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 352, i32 6}
!495 = !{ptr @.str.260, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 358, i32 6}
!497 = !{ptr @.str.262, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 364, i32 6}
!499 = !{ptr @.str.264, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 370, i32 6}
!501 = !{ptr @.str.266, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 376, i32 6}
!503 = !{ptr @.str.268, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 382, i32 6}
!505 = !{ptr @.str.270, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 388, i32 6}
!507 = !{ptr @.str.272, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 394, i32 6}
!509 = !{ptr @.str.274, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 400, i32 6}
!511 = !{ptr @.str.276, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 406, i32 6}
!513 = !{ptr @.str.278, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 412, i32 6}
!515 = !{ptr @.str.280, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 418, i32 6}
!517 = !{ptr @hfcsusb_idtab, !518, !"hfcsusb_idtab", i1 false, i1 false}
!518 = !{!"../drivers/isdn/hardware/mISDN/hfcsusb.h", i32 341, i32 35}
!519 = !{i32 1, !"wchar_size", i32 2}
!520 = !{i32 1, !"min_enum_size", i32 4}
!521 = !{i32 8, !"branch-target-enforcement", i32 0}
!522 = !{i32 8, !"sign-return-address", i32 0}
!523 = !{i32 8, !"sign-return-address-all", i32 0}
!524 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!525 = !{i32 7, !"uwtable", i32 1}
!526 = !{i32 7, !"frame-pointer", i32 2}
!527 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!528 = !{!"branch_weights", i32 1, i32 2000}
