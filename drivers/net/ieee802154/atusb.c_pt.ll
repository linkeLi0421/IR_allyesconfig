; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/atusb.c_pt.bc'
source_filename = "../drivers/net/ieee802154/atusb.c"
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
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atusb_chip_data = type { i16, i32, ptr, ptr }
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
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.atusb = type { ptr, ptr, ptr, i32, i32, %struct.delayed_work, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_ctrlrequest, ptr, ptr, i8, i8, i8, i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
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
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }

@__initcall__kmod_atusb__360_1172_atusb_driver_init6 = internal global ptr @atusb_driver_init, section ".initcall6.init", align 4
@atusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @atusb_probe, ptr @atusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atusb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_atusb_driver_exit = internal global ptr @atusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author361 = internal constant [52 x i8] c"atusb.author=Alexander Aring <alex.aring@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author362 = internal constant [58 x i8] c"atusb.author=Richard Sharpe <realrichardsharpe@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author363 = internal constant [56 x i8] c"atusb.author=Stefan Schmidt <stefan@datenfreihafen.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author364 = internal constant [57 x i8] c"atusb.author=Werner Almesberger <werner@almesberger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author365 = internal constant [50 x i8] c"atusb.author=Josef Filzmaier <j.filzmaier@gmx.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [45 x i8] c"atusb.description=ATUSB IEEE 802.15.4 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [40 x i8] c"atusb.file=drivers/net/ieee802154/atusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [18 x i8] c"atusb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atusb\00", [26 x i8] zeroinitializer }, align 32
@atusb_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 8375, i16 5440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@atusb_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @atusb_start, ptr @atusb_stop, ptr null, ptr @atusb_xmit, ptr @atusb_ed, ptr @atusb_channel, ptr @atusb_set_hw_addr_filt, ptr @atusb_txpower, ptr @hulusb_set_lbt, ptr @atusb_set_cca_mode, ptr @atusb_set_cca_ed_level, ptr @atusb_set_csma_params, ptr @atusb_set_frame_retries, ptr @atusb_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@atusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&atusb->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@atusb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&atusb->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@atusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1067, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: initialization failed, error = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atusb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ieee802154/atusb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atusb_probe._entry_ptr = internal global ptr @atusb_probe._entry, section ".printk_index", align 4
@atusb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1115, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: setup failed, error = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atusb_probe._entry_ptr.11 = internal global ptr @atusb_probe._entry.9, section ".printk_index", align 4
@atusb_start.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atusb_start\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atusb_stop.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.6, ptr @.str.13, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atusb_stop\00", [21 x i8] zeroinitializer }, align 32
@atusb_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atusb_xmit\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s (%d)\0A\00", [23 x i8] zeroinitializer }, align 32
@atusb_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.6, ptr @.str.17, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s done (%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@atusb_xmit_complete.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atusb_xmit_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atusb_xmit urb completed\00", [39 x i8] zeroinitializer }, align 32
@atusb_write_subreg.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.6, ptr @.str.21, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atusb_write_subreg\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: 0x%02x <- 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@atusb_read_reg.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atusb_read_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: reg = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atusb_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 102, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: req 0x%02x val 0x%x idx 0x%x, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atusb_control_msg\00", [46 x i8] zeroinitializer }, align 32
@atusb_control_msg._entry_ptr = internal global ptr @atusb_control_msg._entry, section ".printk_index", align 4
@atusb_work_urbs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.atusb_work_urbs = private unnamed_addr constant [16 x i8] c"atusb_work_urbs\00", align 1
@atusb_work_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.atusb_work_urbs, ptr @.str.6, i32 254, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"atusb_in: can't allocate/submit URB (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atusb_work_urbs._entry_ptr = internal global ptr @atusb_work_urbs._entry, section ".printk_index", align 4
@atusb_submit_rx_urb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.atusb_submit_rx_urb = private unnamed_addr constant [20 x i8] c"atusb_submit_rx_urb\00", align 1
@atusb_submit_rx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.atusb_submit_rx_urb, ptr @.str.6, i32 214, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atusb_in: can't allocate skb\0A\00", [34 x i8] zeroinitializer }, align 32
@atusb_submit_rx_urb._entry_ptr = internal global ptr @atusb_submit_rx_urb._entry, section ".printk_index", align 4
@atusb_in.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atusb_in\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: status %d len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@atusb_in.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.32, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: URB error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@atusb_in_good.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atusb_in_good\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atusb_in: zero-sized URB ?\0A\00", [36 x i8] zeroinitializer }, align 32
@atusb_in_good.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.35, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atusb_in: frame len %d+1 > URB %u-1\0A\00", [59 x i8] zeroinitializer }, align 32
@atusb_in_good.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.36, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atusb_in: frame corrupted\0A\00", [37 x i8] zeroinitializer }, align 32
@atusb_in_good.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.6, ptr @.str.37, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atusb_in: rx len %d lqi 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@atusb_tx_done.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atusb_tx_done\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s (0x%02x/0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@atusb_command.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atusb_command\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cmd = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@atusb_get_and_conf_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 912, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"non-Atmel transceiver xxxx%02x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atusb_get_and_conf_chip\00", [40 x i8] zeroinitializer }, align 32
@atusb_get_and_conf_chip._entry_ptr = internal global ptr @atusb_get_and_conf_chip._entry, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT86RF230\00", [22 x i8] zeroinitializer }, align 32
@atusb_powers = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 300, i32 280, i32 230, i32 180, i32 130, i32 70, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -500, i32 -700, i32 -900, i32 -1200, i32 -1700], [32 x i8] zeroinitializer }, align 32
@atusb_ed_levels = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -9100, i32 -8900, i32 -8700, i32 -8500, i32 -8300, i32 -8100, i32 -7900, i32 -7700, i32 -7500, i32 -7300, i32 -7100, i32 -6900, i32 -6700, i32 -6500, i32 -6300, i32 -6100], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT86RF231\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT86RF212\00", [22 x i8] zeroinitializer }, align 32
@at86rf212_powers = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 500, i32 400, i32 300, i32 200, i32 100, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -500, i32 -600, i32 -700, i32 -800, i32 -900, i32 -1000, i32 -1100, i32 -1200, i32 -1300, i32 -1400, i32 -1500, i32 -1600, i32 -1700, i32 -1800, i32 -1900, i32 -2000, i32 -2100, i32 -2200, i32 -2300, i32 -2400, i32 -2500, i32 -2600], [32 x i8] zeroinitializer }, align 32
@at86rf212_ed_levels_100 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -10000, i32 -9800, i32 -9600, i32 -9400, i32 -9200, i32 -9000, i32 -8800, i32 -8600, i32 -8400, i32 -8200, i32 -8000, i32 -7800, i32 -7600, i32 -7400, i32 -7200, i32 -7000], [32 x i8] zeroinitializer }, align 32
@atusb_get_and_conf_chip._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.6, i32 953, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unexpected transceiver, part 0x%02x version 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@atusb_get_and_conf_chip._entry_ptr.52 = internal global ptr @atusb_get_and_conf_chip._entry.50, section ".printk_index", align 4
@atusb_get_and_conf_chip._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.6, i32 960, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ATUSB: %s version %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atusb_get_and_conf_chip._entry_ptr.56 = internal global ptr @atusb_get_and_conf_chip._entry.53, section ".printk_index", align 4
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATUSB\00", [26 x i8] zeroinitializer }, align 32
@atusb_chip_data = internal global { %struct.atusb_chip_data, [16 x i8] } { %struct.atusb_chip_data { i16 1, i32 -91, ptr @atusb_set_channel, ptr @atusb_set_txpower }, [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RZUSB\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HULUSB\00", [25 x i8] zeroinitializer }, align 32
@hulusb_chip_data = internal global { %struct.atusb_chip_data, [16 x i8] } { %struct.atusb_chip_data { i16 11, i32 -100, ptr @hulusb_set_channel, ptr @hulusb_set_txpower }, [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@atusb_get_and_show_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 843, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware: major: %u, minor: %u, hardware type: %s (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atusb_get_and_show_revision\00", [36 x i8] zeroinitializer }, align 32
@atusb_get_and_show_revision._entry_ptr = internal global ptr @atusb_get_and_show_revision._entry, section ".printk_index", align 4
@atusb_get_and_show_revision._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.6, i32 848, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Firmware version (%u.%u) predates our first public release.\00", [36 x i8] zeroinitializer }, align 32
@atusb_get_and_show_revision._entry_ptr.65 = internal global ptr @atusb_get_and_show_revision._entry.63, section ".printk_index", align 4
@atusb_get_and_show_revision._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.6, i32 849, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Please update to version 0.2 or newer\00", [58 x i8] zeroinitializer }, align 32
@atusb_get_and_show_revision._entry_ptr.68 = internal global ptr @atusb_get_and_show_revision._entry.66, section ".printk_index", align 4
@at86rf212_ed_levels_98 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -9800, i32 -9600, i32 -9400, i32 -9200, i32 -9000, i32 -8800, i32 -8600, i32 -8400, i32 -8200, i32 -8000, i32 -7800, i32 -7600, i32 -7400, i32 -7200, i32 -7000, i32 -6800], [32 x i8] zeroinitializer }, align 32
@atusb_get_and_show_build._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 871, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Firmware: build %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atusb_get_and_show_build\00", [39 x i8] zeroinitializer }, align 32
@atusb_get_and_show_build._entry_ptr = internal global ptr @atusb_get_and_show_build._entry, section ".printk_index", align 4
@atusb_set_extended_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 994, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to fetch extended address, random address set\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atusb_set_extended_addr\00", [40 x i8] zeroinitializer }, align 32
@atusb_set_extended_addr._entry_ptr = internal global ptr @atusb_set_extended_addr._entry, section ".printk_index", align 4
@atusb_set_extended_addr._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.6, i32 1003, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"no permanent extended address found, random address set\0A\00", [39 x i8] zeroinitializer }, align 32
@atusb_set_extended_addr._entry_ptr.75 = internal global ptr @atusb_set_extended_addr._entry.73, section ".printk_index", align 4
@atusb_set_extended_addr._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.6, i32 1009, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Read permanent extended address %8phC from device\0A\00", [45 x i8] zeroinitializer }, align 32
@atusb_set_extended_addr._entry_ptr.78 = internal global ptr @atusb_set_extended_addr._entry.76, section ".printk_index", align 4
@atusb_write_reg.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.6, ptr @.str.21, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atusb_write_reg\00", [16 x i8] zeroinitializer }, align 32
@atusb_disconnect.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.6, ptr @.str.13, i8 1, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atusb_disconnect\00", [47 x i8] zeroinitializer }, align 32
@atusb_disconnect.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.6, ptr @.str.81, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s done\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"atusb_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1166, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1172, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"atusb_device_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1153, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"atusb_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 779, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1037, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1065, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1113, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 460, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 474, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 389, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 400, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 380, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 159, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 137, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 100, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 253, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 213, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 326, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 334, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 290, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 302, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 308, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 313, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 266, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1367, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1368, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 111, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 910, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 918, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"atusb_powers\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 481, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"atusb_ed_levels\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 525, i32 18 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 928, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 938, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"at86rf212_powers\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 531, i32 18 }
@___asan_gen_.278 = private unnamed_addr constant [24 x i8] c"at86rf212_ed_levels_100\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 538, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 951, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 960, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 822, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"atusb_chip_data\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 765, i32 31 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 826, i32 14 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 830, i32 14 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"hulusb_chip_data\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 772, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 834, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 840, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 846, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 849, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"at86rf212_ed_levels_98\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 543, i32 18 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 871, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 994, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1003, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1008, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 120, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1131, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private constant [34 x i8] c"../drivers/net/ieee802154/atusb.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1149, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_author363, ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__exitcall_atusb_driver_exit, ptr @__initcall__kmod_atusb__360_1172_atusb_driver_init6, ptr @atusb_control_msg._entry, ptr @atusb_control_msg._entry_ptr, ptr @atusb_driver_exit, ptr @atusb_get_and_conf_chip._entry, ptr @atusb_get_and_conf_chip._entry.50, ptr @atusb_get_and_conf_chip._entry.53, ptr @atusb_get_and_conf_chip._entry_ptr, ptr @atusb_get_and_conf_chip._entry_ptr.52, ptr @atusb_get_and_conf_chip._entry_ptr.56, ptr @atusb_get_and_show_build._entry, ptr @atusb_get_and_show_build._entry_ptr, ptr @atusb_get_and_show_revision._entry, ptr @atusb_get_and_show_revision._entry.63, ptr @atusb_get_and_show_revision._entry.66, ptr @atusb_get_and_show_revision._entry_ptr, ptr @atusb_get_and_show_revision._entry_ptr.65, ptr @atusb_get_and_show_revision._entry_ptr.68, ptr @atusb_probe._entry, ptr @atusb_probe._entry.9, ptr @atusb_probe._entry_ptr, ptr @atusb_probe._entry_ptr.11, ptr @atusb_set_extended_addr._entry, ptr @atusb_set_extended_addr._entry.73, ptr @atusb_set_extended_addr._entry.76, ptr @atusb_set_extended_addr._entry_ptr, ptr @atusb_set_extended_addr._entry_ptr.75, ptr @atusb_set_extended_addr._entry_ptr.78, ptr @atusb_submit_rx_urb._entry, ptr @atusb_submit_rx_urb._entry_ptr, ptr @atusb_work_urbs._entry, ptr @atusb_work_urbs._entry_ptr, ptr @atusb_driver, ptr @.str, ptr @atusb_device_table, ptr @atusb_ops, ptr @atusb_probe.__key, ptr @.str.1, ptr @atusb_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @atusb_work_urbs._rs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @atusb_submit_rx_urb._rs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @init_usb_anchor.__key, ptr @.str.40, ptr @init_usb_anchor.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @atusb_powers, ptr @atusb_ed_levels, ptr @.str.48, ptr @.str.49, ptr @at86rf212_powers, ptr @at86rf212_ed_levels_100, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @atusb_chip_data, ptr @.str.58, ptr @.str.59, ptr @hulusb_chip_data, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @at86rf212_ed_levels_98, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_work_urbs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_work_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_submit_rx_urb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_submit_rx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_conf_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_powers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_ed_levels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_powers to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_ed_levels_100 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_conf_chip._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_conf_chip._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hulusb_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_show_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_show_revision._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_show_revision._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_ed_levels_98 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_get_and_show_build._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_set_extended_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_set_extended_addr._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atusb_set_extended_addr._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @atusb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @atusb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_probe(ptr nocapture noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @ieee802154_alloc_hw(i32 noundef 364, ptr noundef nonnull @atusb_ops) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %3, align 4
  %call3 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %usb_dev4 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %usb_dev4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %driver_data.i.i, align 4
  %shutdown = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %shutdown, align 4
  %err = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err, align 4
  %work = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @atusb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry13 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @atusb_work_urbs, ptr %func, align 4
  %timer = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @atusb_probe.__key.2) #7
  %idle_urbs = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 6
  %13 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 6, i32 1
  %14 = call ptr @memset(ptr %13, i32 0, i32 104)
  %15 = ptrtoint ptr %idle_urbs to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %idle_urbs, ptr %idle_urbs, align 4
  %prev.i.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %idle_urbs, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %13, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key.41, i16 noundef signext 3) #7
  %rx_urbs = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 7
  %17 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 7, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 104)
  %19 = ptrtoint ptr %rx_urbs to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %rx_urbs, ptr %rx_urbs, align 4
  %prev.i.i127 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i127 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx_urbs, ptr %prev.i.i127, align 4
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i129 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i129, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key.41, i16 noundef signext 3) #7
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.if.then.i_crit_edge, label %if.end.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.2.i.if.then.i_crit_edge, %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call3.i.i = tail call ptr @usb_get_from_anchor(ptr noundef %idle_urbs) #7
  %tobool.not4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not4.i.i, label %if.then.i.fail_crit_edge, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  br label %if.end.i.i

if.then.i.fail_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %call5.i.i = phi ptr [ %call.i.i, %if.end.i.i.if.end.i.i_crit_edge ], [ %call3.i.i, %if.then.i.if.end.i.i_crit_edge ]
  %context.i.i = getelementptr inbounds %struct.urb, ptr %call5.i.i, i32 0, i32 27
  %21 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call5.i.i) #7
  %call.i.i = tail call ptr @usb_get_from_anchor(ptr noundef %idle_urbs) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.fail_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i.fail_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end.i:                                         ; preds = %if.end
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %idle_urbs) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #7
  %call.1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool1.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool1.not.1.i, label %if.end.i.if.then.i_crit_edge, label %if.end.1.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.1.i, ptr noundef %idle_urbs) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call.1.i) #7
  %call.2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool1.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool1.not.2.i, label %if.end.1.i.if.then.i_crit_edge, label %if.end.2.i

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.2.i, ptr noundef %idle_urbs) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call.2.i) #7
  %call.3.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool1.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool1.not.3.i, label %if.end.2.i.if.then.i_crit_edge, label %if.end25

if.end.2.i.if.then.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end25:                                         ; preds = %if.end.2.i
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.3.i, ptr noundef %idle_urbs) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call.3.i) #7
  %tx_dr = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %tx_dr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %tx_dr, align 4
  %bRequest = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 65, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %wValue to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %wValue, align 2
  %call28 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tx_urb = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call28, ptr %tx_urb, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end25.fail_crit_edge, label %if.end32

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end32:                                         ; preds = %if.end25
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call1, i32 0, i32 2
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %parent, align 4
  %28 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_dev4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_command.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_probe, %if.then.i130)) #7
          to label %do.end.i [label %if.then.i130], !srcloc !212

if.then.i130:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_command.__UNIQUE_ID_ddebug342, ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 16) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i130, %if.end32
  %30 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_dev4, align 4
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i131 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i131, label %if.end.i.i133, label %do.end.i.atusb_command.exit_crit_edge

do.end.i.atusb_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exit

if.end.i.i133:                                    ; preds = %do.end.i
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call.i.i132 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp.i.i = icmp slt i32 %call.i.i132, 0
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i133.atusb_command.exit_crit_edge

if.end.i.i133.atusb_command.exit_crit_edge:       ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exit

if.then4.i.i:                                     ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i.i132, ptr %err, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef %call.i.i132) #10
  br label %atusb_command.exit

atusb_command.exit:                               ; preds = %if.then4.i.i, %if.end.i.i133.atusb_command.exit_crit_edge, %do.end.i.atusb_command.exit_crit_edge
  %37 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_dev4, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %call.i135 = tail call fastcc i32 @atusb_read_reg(ptr noundef %3, i8 noundef zeroext 30) #7
  %call3.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %3, i8 noundef zeroext 31) #7
  %call5.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %3, i8 noundef zeroext 28) #7
  %call7.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %3, i8 noundef zeroext 29) #7
  %41 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.end.i137, label %atusb_command.exit.atusb_get_and_conf_chip.exit_crit_edge

atusb_command.exit.atusb_get_and_conf_chip.exit_crit_edge: ; preds = %atusb_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_get_and_conf_chip.exit

if.end.i137:                                      ; preds = %atusb_command.exit
  %flags.i = getelementptr inbounds %struct.ieee802154_hw, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 53, ptr %flags.i, align 4
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %40, i32 0, i32 4
  %44 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy.i, align 4
  %flags10.i = getelementptr inbounds %struct.wpan_phy, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 14, ptr %flags10.i, align 4
  %47 = load ptr, ptr %phy.i, align 4
  %cca_modes.i = getelementptr inbounds %struct.wpan_phy, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %cca_modes.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 14, ptr %cca_modes.i, align 4
  %49 = load ptr, ptr %phy.i, align 4
  %cca_opts.i = getelementptr inbounds %struct.wpan_phy, ptr %49, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %cca_opts.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %cca_opts.i, align 4
  %51 = load ptr, ptr %phy.i, align 4
  %cca.i = getelementptr inbounds %struct.wpan_phy, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %cca.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %cca.i, align 8
  %53 = load ptr, ptr %phy.i, align 4
  %current_page.i = getelementptr inbounds %struct.wpan_phy, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %current_page.i, align 1
  %conv16.i = and i32 %call3.i, 255
  %shl.i = shl nuw nsw i32 %conv16.i, 8
  %conv17.i = and i32 %call.i135, 255
  %or.i136 = or i32 %shl.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %or.i136)
  %cmp.not.i = icmp eq i32 %or.i136, 31
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i139

do.end.i139:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i138 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i138, ptr noundef nonnull @.str.45, i32 noundef %conv16.i, i32 noundef %conv17.i) #10
  br label %fail.i

if.end22.i:                                       ; preds = %if.end.i137
  %trunc.i = trunc i32 %call5.i to i8
  %55 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %do.end108.i [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb41.i
    i8 7, label %sw.bb67.i
  ]

sw.bb.i:                                          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %phy25.i = getelementptr inbounds %struct.ieee802154_hw, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %phy25.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy25.i, align 4
  %supported26.i = getelementptr inbounds %struct.wpan_phy, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %supported26.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 134215680, ptr %supported26.i, align 4
  %61 = load ptr, ptr %3, align 4
  %phy28.i = getelementptr inbounds %struct.ieee802154_hw, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %phy28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy28.i, align 4
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 11, ptr %current_channel.i, align 8
  %65 = load ptr, ptr %3, align 4
  %phy30.i = getelementptr inbounds %struct.ieee802154_hw, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %phy30.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy30.i, align 4
  %symbol_duration.i = getelementptr inbounds %struct.wpan_phy, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %symbol_duration.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %symbol_duration.i, align 4
  %69 = load ptr, ptr %3, align 4
  %phy32.i = getelementptr inbounds %struct.ieee802154_hw, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %phy32.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %phy32.i, align 4
  %tx_powers.i = getelementptr inbounds %struct.wpan_phy, ptr %71, i32 0, i32 4, i32 15
  %72 = ptrtoint ptr %tx_powers.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @atusb_powers, ptr %tx_powers.i, align 4
  %73 = load ptr, ptr %3, align 4
  %phy35.i = getelementptr inbounds %struct.ieee802154_hw, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %phy35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy35.i, align 4
  %tx_powers_size.i = getelementptr inbounds %struct.wpan_phy, ptr %75, i32 0, i32 4, i32 13
  %76 = ptrtoint ptr %tx_powers_size.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 16, ptr %tx_powers_size.i, align 4
  %77 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %78, i32 0, i32 4, i32 16
  %79 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @atusb_ed_levels, ptr %cca_ed_levels.i, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %3, align 4
  %phy43.i = getelementptr inbounds %struct.ieee802154_hw, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %phy43.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy43.i, align 4
  %supported44.i = getelementptr inbounds %struct.wpan_phy, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %supported44.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 134215680, ptr %supported44.i, align 4
  %85 = load ptr, ptr %3, align 4
  %phy48.i = getelementptr inbounds %struct.ieee802154_hw, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %phy48.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy48.i, align 4
  %current_channel49.i = getelementptr inbounds %struct.wpan_phy, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %current_channel49.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 11, ptr %current_channel49.i, align 8
  %89 = load ptr, ptr %3, align 4
  %phy51.i = getelementptr inbounds %struct.ieee802154_hw, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %phy51.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy51.i, align 4
  %symbol_duration52.i = getelementptr inbounds %struct.wpan_phy, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %symbol_duration52.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %symbol_duration52.i, align 4
  %93 = load ptr, ptr %3, align 4
  %phy54.i = getelementptr inbounds %struct.ieee802154_hw, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %phy54.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phy54.i, align 4
  %tx_powers56.i = getelementptr inbounds %struct.wpan_phy, ptr %95, i32 0, i32 4, i32 15
  %96 = ptrtoint ptr %tx_powers56.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @atusb_powers, ptr %tx_powers56.i, align 4
  %97 = load ptr, ptr %3, align 4
  %phy58.i = getelementptr inbounds %struct.ieee802154_hw, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %phy58.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy58.i, align 4
  %tx_powers_size60.i = getelementptr inbounds %struct.wpan_phy, ptr %99, i32 0, i32 4, i32 13
  %100 = ptrtoint ptr %tx_powers_size60.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 16, ptr %tx_powers_size60.i, align 4
  %101 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels63.i = getelementptr inbounds %struct.wpan_phy, ptr %102, i32 0, i32 4, i32 16
  %103 = ptrtoint ptr %cca_ed_levels63.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @atusb_ed_levels, ptr %cca_ed_levels63.i, align 4
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 4
  %flags69.i = getelementptr inbounds %struct.ieee802154_hw, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %flags69.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags69.i, align 4
  %or70.i = or i32 %107, 2
  store i32 %or70.i, ptr %flags69.i, align 4
  %108 = load ptr, ptr %3, align 4
  %phy72.i = getelementptr inbounds %struct.ieee802154_hw, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %phy72.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phy72.i, align 4
  %supported73.i = getelementptr inbounds %struct.wpan_phy, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %supported73.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2047, ptr %supported73.i, align 4
  %112 = load ptr, ptr %3, align 4
  %phy77.i = getelementptr inbounds %struct.ieee802154_hw, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %phy77.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %phy77.i, align 4
  %arrayidx80.i = getelementptr %struct.wpan_phy, ptr %114, i32 0, i32 4, i32 0, i32 2
  %115 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2047, ptr %arrayidx80.i, align 4
  %116 = load ptr, ptr %3, align 4
  %phy82.i = getelementptr inbounds %struct.ieee802154_hw, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %phy82.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %phy82.i, align 4
  %current_channel83.i = getelementptr inbounds %struct.wpan_phy, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %current_channel83.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 5, ptr %current_channel83.i, align 8
  %120 = load ptr, ptr %3, align 4
  %phy85.i = getelementptr inbounds %struct.ieee802154_hw, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %phy85.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %phy85.i, align 4
  %symbol_duration86.i = getelementptr inbounds %struct.wpan_phy, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %symbol_duration86.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 25, ptr %symbol_duration86.i, align 4
  %124 = load ptr, ptr %3, align 4
  %phy88.i = getelementptr inbounds %struct.ieee802154_hw, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %phy88.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %phy88.i, align 4
  %lbt.i = getelementptr inbounds %struct.wpan_phy, ptr %126, i32 0, i32 4, i32 4
  %127 = ptrtoint ptr %lbt.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 3, ptr %lbt.i, align 4
  %128 = load ptr, ptr %3, align 4
  %phy91.i = getelementptr inbounds %struct.ieee802154_hw, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %phy91.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %phy91.i, align 4
  %tx_powers93.i = getelementptr inbounds %struct.wpan_phy, ptr %130, i32 0, i32 4, i32 15
  %131 = ptrtoint ptr %tx_powers93.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @at86rf212_powers, ptr %tx_powers93.i, align 4
  %132 = load ptr, ptr %3, align 4
  %phy95.i = getelementptr inbounds %struct.ieee802154_hw, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %phy95.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %phy95.i, align 4
  %tx_powers_size97.i = getelementptr inbounds %struct.wpan_phy, ptr %134, i32 0, i32 4, i32 13
  %135 = ptrtoint ptr %tx_powers_size97.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 32, ptr %tx_powers_size97.i, align 4
  %136 = load ptr, ptr %3, align 4
  %phy99.i = getelementptr inbounds %struct.ieee802154_hw, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %phy99.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %phy99.i, align 4
  %cca_ed_levels101.i = getelementptr inbounds %struct.wpan_phy, ptr %138, i32 0, i32 4, i32 16
  %139 = ptrtoint ptr %cca_ed_levels101.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @at86rf212_ed_levels_100, ptr %cca_ed_levels101.i, align 4
  %140 = load ptr, ptr %3, align 4
  %phy103.i = getelementptr inbounds %struct.ieee802154_hw, ptr %140, i32 0, i32 4
  br label %sw.epilog.i

do.end108.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.i = and i32 %call5.i, 255
  %dev109.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %conv111.i = and i32 %call7.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109.i, ptr noundef nonnull @.str.51, i32 noundef %conv23.i, i32 noundef %conv111.i) #10
  br label %fail.i

sw.epilog.i:                                      ; preds = %sw.bb67.i, %sw.bb41.i, %sw.bb.i
  %phy103.sink.i = phi ptr [ %phy103.i, %sw.bb67.i ], [ %phy.i, %sw.bb41.i ], [ %phy.i, %sw.bb.i ]
  %chip.0.i = phi ptr [ @.str.49, %sw.bb67.i ], [ @.str.48, %sw.bb41.i ], [ @.str.47, %sw.bb.i ]
  %141 = ptrtoint ptr %phy103.sink.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %phy103.sink.i, align 4
  %cca_ed_levels_size105.i = getelementptr inbounds %struct.wpan_phy, ptr %142, i32 0, i32 4, i32 14
  %143 = ptrtoint ptr %cca_ed_levels_size105.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 16, ptr %cca_ed_levels_size105.i, align 4
  %144 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phy.i, align 4
  %tx_powers114.i = getelementptr inbounds %struct.wpan_phy, ptr %145, i32 0, i32 4, i32 15
  %146 = ptrtoint ptr %tx_powers114.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tx_powers114.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %transmit_power.i = getelementptr inbounds %struct.wpan_phy, ptr %145, i32 0, i32 5
  %150 = ptrtoint ptr %transmit_power.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %transmit_power.i, align 4
  %151 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels119.i = getelementptr inbounds %struct.wpan_phy, ptr %151, i32 0, i32 4, i32 16
  %152 = ptrtoint ptr %cca_ed_levels119.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cca_ed_levels119.i, align 4
  %arrayidx120.i = getelementptr i32, ptr %153, i32 7
  %154 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx120.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %151, i32 0, i32 8
  %156 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %cca_ed_level.i, align 8
  %dev125.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %conv126.i = and i32 %call7.i, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev125.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %chip.0.i, i32 noundef %conv126.i) #10
  br label %atusb_get_and_conf_chip.exit

fail.i:                                           ; preds = %do.end108.i, %do.end.i139
  %157 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -19, ptr %err, align 4
  br label %atusb_get_and_conf_chip.exit

atusb_get_and_conf_chip.exit:                     ; preds = %fail.i, %sw.epilog.i, %atusb_command.exit.atusb_get_and_conf_chip.exit_crit_edge
  %158 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %usb_dev4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %160 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %160, i32 noundef 3264, i32 noundef 3) #11
  %tobool.not.i141 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i141, label %atusb_get_and_conf_chip.exit.atusb_get_and_show_revision.exit_crit_edge, label %if.end.i144

atusb_get_and_conf_chip.exit.atusb_get_and_show_revision.exit_crit_edge: ; preds = %atusb_get_and_conf_chip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_get_and_show_revision.exit

if.end.i144:                                      ; preds = %atusb_get_and_conf_chip.exit
  %161 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %usb_dev4, align 4
  %163 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i143 = icmp eq i32 %164, 0
  br i1 %tobool.not.i.i143, label %if.end.i.i148, label %atusb_control_msg.exit.i

if.end.i.i148:                                    ; preds = %if.end.i144
  %165 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %159, align 8
  %shl.i.i145 = shl i32 %166, 8
  %or3.i = or i32 %shl.i.i145, -2147483520
  %call.i.i146 = tail call i32 @usb_control_msg(ptr noundef %162, i32 noundef %or3.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i146)
  %cmp.i.i147 = icmp slt i32 %call.i.i146, 3
  br i1 %cmp.i.i147, label %atusb_control_msg.exit.thread3.i, label %if.end.i.i148.if.then5.i_crit_edge

if.end.i.i148.if.then5.i_crit_edge:               ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

atusb_control_msg.exit.thread3.i:                 ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %cmp5.i.i = icmp slt i32 %call.i.i146, 0
  %spec.select.i.i = select i1 %cmp5.i.i, i32 %call.i.i146, i32 -61
  %167 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %spec.select.i.i, ptr %err, align 4
  %dev.i.i149 = getelementptr inbounds %struct.usb_device, ptr %162, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i149, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %spec.select.i.i) #10
  br label %if.end19.i

atusb_control_msg.exit.i:                         ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %164)
  %cmp.i = icmp sgt i32 %164, -1
  br i1 %cmp.i, label %atusb_control_msg.exit.i.if.then5.i_crit_edge, label %atusb_control_msg.exit.i.if.end19.i_crit_edge

atusb_control_msg.exit.i.if.end19.i_crit_edge:    ; preds = %atusb_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

atusb_control_msg.exit.i.if.then5.i_crit_edge:    ; preds = %atusb_control_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then5.i:                                       ; preds = %atusb_control_msg.exit.i.if.then5.i_crit_edge, %if.end.i.i148.if.then5.i_crit_edge
  %168 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %call7.i.i, align 8
  %fw_ver_maj.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 12
  %170 = ptrtoint ptr %fw_ver_maj.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %fw_ver_maj.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %171 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx6.i, align 1
  %fw_ver_min.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 13
  %173 = ptrtoint ptr %fw_ver_min.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %fw_ver_min.i, align 2
  %arrayidx7.i = getelementptr i8, ptr %call7.i.i, i32 2
  %174 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx7.i, align 2
  %fw_hw_type.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 14
  %176 = ptrtoint ptr %fw_hw_type.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %fw_hw_type.i, align 1
  %177 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %175, label %sw.default.i [
    i8 0, label %if.then5.i.sw.bb.i150_crit_edge
    i8 1, label %if.then5.i.sw.bb.i150_crit_edge196
    i8 2, label %if.then5.i.sw.bb.i150_crit_edge197
    i8 3, label %sw.bb9.i
    i8 4, label %sw.bb11.i
  ]

if.then5.i.sw.bb.i150_crit_edge197:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i150

if.then5.i.sw.bb.i150_crit_edge196:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i150

if.then5.i.sw.bb.i150_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i150

sw.bb.i150:                                       ; preds = %if.then5.i.sw.bb.i150_crit_edge, %if.then5.i.sw.bb.i150_crit_edge196, %if.then5.i.sw.bb.i150_crit_edge197
  %data.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 2
  %178 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @atusb_chip_data, ptr %data.i, align 4
  br label %do.end.i153

sw.bb9.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %data10.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 2
  %179 = ptrtoint ptr %data10.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @atusb_chip_data, ptr %data10.i, align 4
  br label %do.end.i153

sw.bb11.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %data12.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 2
  %180 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @hulusb_chip_data, ptr %data12.i, align 4
  br label %do.end.i153

sw.default.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -524, ptr %err, align 4
  br label %do.end.i153

do.end.i153:                                      ; preds = %sw.default.i, %sw.bb11.i, %sw.bb9.i, %sw.bb.i150
  %hw_name.0.i = phi ptr [ @.str.60, %sw.default.i ], [ @.str.59, %sw.bb11.i ], [ @.str.58, %sw.bb9.i ], [ @.str.57, %sw.bb.i150 ]
  %dev.i151 = getelementptr inbounds %struct.usb_device, ptr %159, i32 0, i32 15
  %conv14.i = zext i8 %169 to i32
  %conv16.i152 = zext i8 %172 to i32
  %conv18.i = zext i8 %175 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i151, ptr noundef nonnull @.str.61, i32 noundef %conv14.i, i32 noundef %conv16.i152, ptr noundef nonnull %hw_name.0.i, i32 noundef %conv18.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i153, %atusb_control_msg.exit.i.if.end19.i_crit_edge, %atusb_control_msg.exit.thread3.i
  %fw_ver_maj20.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 12
  %182 = ptrtoint ptr %fw_ver_maj20.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %fw_ver_maj20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp22.i = icmp eq i8 %183, 0
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end19.i.if.end41.i_crit_edge

if.end19.i.if.end41.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %fw_ver_min24.i = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 13
  %184 = ptrtoint ptr %fw_ver_min24.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %fw_ver_min24.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %185)
  %cmp26.i = icmp ult i8 %185, 2
  br i1 %cmp26.i, label %do.end31.i, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

do.end31.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %185 to i32
  %dev32.i = getelementptr inbounds %struct.usb_device, ptr %159, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.i, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %conv25.i) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.i, ptr noundef nonnull @.str.67) #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end31.i, %land.lhs.true.i.if.end41.i_crit_edge, %if.end19.i.if.end41.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %atusb_get_and_show_revision.exit

atusb_get_and_show_revision.exit:                 ; preds = %if.end41.i, %atusb_get_and_conf_chip.exit.atusb_get_and_show_revision.exit_crit_edge
  %186 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %usb_dev4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %188 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3264, i32 noundef 257) #11
  %tobool.not.i156 = icmp eq ptr %call7.i.i155, null
  br i1 %tobool.not.i156, label %atusb_get_and_show_revision.exit.atusb_get_and_show_build.exit_crit_edge, label %if.end.i160

atusb_get_and_show_revision.exit.atusb_get_and_show_build.exit_crit_edge: ; preds = %atusb_get_and_show_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_get_and_show_build.exit

if.end.i160:                                      ; preds = %atusb_get_and_show_revision.exit
  %189 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_dev4, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %187, align 8
  %shl.i.i157 = shl i32 %192, 8
  %or4.i = or i32 %shl.i.i157, -2147483520
  %call5.i158 = tail call i32 @usb_control_msg(ptr noundef %190, i32 noundef %or4.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i155, i16 noundef zeroext 256, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i158)
  %cmp.i159 = icmp sgt i32 %call5.i158, -1
  br i1 %cmp.i159, label %if.then6.i, label %if.end.i160.if.end7.i_crit_edge

if.end.i160.if.end7.i_crit_edge:                  ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %call7.i.i155, i32 %call5.i158
  %193 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %arrayidx.i, align 1
  %dev.i161 = getelementptr inbounds %struct.usb_device, ptr %187, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i161, ptr noundef nonnull @.str.69, ptr noundef nonnull %call7.i.i155) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i160.if.end7.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i155) #7
  br label %atusb_get_and_show_build.exit

atusb_get_and_show_build.exit:                    ; preds = %if.end7.i, %atusb_get_and_show_revision.exit.atusb_get_and_show_build.exit_crit_edge
  %194 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %usb_dev4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i) #7
  %196 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 -1, ptr %addr.i, align 8, !annotation !213
  %fw_ver_maj.i163 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 12
  %197 = ptrtoint ptr %fw_ver_maj.i163 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %fw_ver_maj.i163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp.i164 = icmp eq i8 %198, 0
  br i1 %cmp.i164, label %land.lhs.true.i166, label %atusb_get_and_show_build.exit.if.end.i171_crit_edge

atusb_get_and_show_build.exit.if.end.i171_crit_edge: ; preds = %atusb_get_and_show_build.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i171

land.lhs.true.i166:                               ; preds = %atusb_get_and_show_build.exit
  %fw_ver_min.i165 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 13
  %199 = ptrtoint ptr %fw_ver_min.i165 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %fw_ver_min.i165, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %200)
  %cmp4.i = icmp ult i8 %200, 3
  br i1 %cmp4.i, label %if.then.i168, label %land.lhs.true.i166.if.end.i171_crit_edge

land.lhs.true.i166.if.end.i171_crit_edge:         ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i171

if.then.i168:                                     ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %3, align 4
  %phy.i167 = getelementptr inbounds %struct.ieee802154_hw, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %phy.i167 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %phy.i167, align 4
  %perm_extended_addr.i = getelementptr inbounds %struct.wpan_phy, ptr %204, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr.i, i32 noundef 8) #7
  %arrayidx.i.i = getelementptr i8, ptr %perm_extended_addr.i, i32 7
  %205 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.i.i, align 1
  %207 = and i8 %206, -4
  %208 = or i8 %207, 2
  store i8 %208, ptr %arrayidx.i.i, align 1
  br label %atusb_set_extended_addr.exit

if.end.i171:                                      ; preds = %land.lhs.true.i166.if.end.i171_crit_edge, %atusb_get_and_show_build.exit.if.end.i171_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %209 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i169 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %209, i32 noundef 3264, i32 noundef 8) #11
  %tobool.not.i170 = icmp eq ptr %call7.i.i169, null
  br i1 %tobool.not.i170, label %if.end.i171.atusb_set_extended_addr.exit_crit_edge, label %if.end7.i174

if.end.i171.atusb_set_extended_addr.exit_crit_edge: ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_set_extended_addr.exit

if.end7.i174:                                     ; preds = %if.end.i171
  %210 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %usb_dev4, align 4
  %212 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i.i173 = icmp eq i32 %213, 0
  br i1 %tobool.not.i.i173, label %if.end.i.i178, label %atusb_control_msg.exit.i182

if.end.i.i178:                                    ; preds = %if.end7.i174
  %214 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %195, align 8
  %shl.i.i175 = shl i32 %215, 8
  %or9.i = or i32 %shl.i.i175, -2147483520
  %call.i.i176 = tail call i32 @usb_control_msg(ptr noundef %211, i32 noundef %or9.i, i8 noundef zeroext 81, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i169, i16 noundef zeroext 8, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i176)
  %cmp.i.i177 = icmp slt i32 %call.i.i176, 8
  br i1 %cmp.i.i177, label %atusb_control_msg.exit.thread.i, label %if.end.i.i178.if.end17.i_crit_edge

if.end.i.i178.if.end17.i_crit_edge:               ; preds = %if.end.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

atusb_control_msg.exit.thread.i:                  ; preds = %if.end.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %cmp5.i.i179 = icmp slt i32 %call.i.i176, 0
  %spec.select.i.i180 = select i1 %cmp5.i.i179, i32 %call.i.i176, i32 -61
  %216 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %spec.select.i.i180, ptr %err, align 4
  %dev.i.i181 = getelementptr inbounds %struct.usb_device, ptr %211, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i181, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 81, i32 noundef 0, i32 noundef 0, i32 noundef %spec.select.i.i180) #10
  br label %do.end.i184

atusb_control_msg.exit.i182:                      ; preds = %if.end7.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp11.i = icmp slt i32 %213, 0
  br i1 %cmp11.i, label %atusb_control_msg.exit.i182.do.end.i184_crit_edge, label %atusb_control_msg.exit.i182.if.end17.i_crit_edge

atusb_control_msg.exit.i182.if.end17.i_crit_edge: ; preds = %atusb_control_msg.exit.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

atusb_control_msg.exit.i182.do.end.i184_crit_edge: ; preds = %atusb_control_msg.exit.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i184

do.end.i184:                                      ; preds = %atusb_control_msg.exit.i182.do.end.i184_crit_edge, %atusb_control_msg.exit.thread.i
  %dev.i183 = getelementptr inbounds %struct.usb_device, ptr %195, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i183, ptr noundef nonnull @.str.71) #10
  %217 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %3, align 4
  %phy15.i = getelementptr inbounds %struct.ieee802154_hw, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %phy15.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %phy15.i, align 4
  %perm_extended_addr16.i = getelementptr inbounds %struct.wpan_phy, ptr %220, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr16.i, i32 noundef 8) #7
  %arrayidx.i1.i = getelementptr i8, ptr %perm_extended_addr16.i, i32 7
  %221 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i1.i, align 1
  %223 = and i8 %222, -4
  %224 = or i8 %223, 2
  store i8 %224, ptr %arrayidx.i1.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i169) #7
  br label %atusb_set_extended_addr.exit

if.end17.i:                                       ; preds = %atusb_control_msg.exit.i182.if.end17.i_crit_edge, %if.end.i.i178.if.end17.i_crit_edge
  %225 = ptrtoint ptr %call7.i.i169 to i32
  call void @__asan_load8_noabort(i32 %225)
  %extended_addr.0.copyload.i = load i64, ptr %call7.i.i169, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %extended_addr.0.copyload.i)
  %cmp.not.i.i = icmp ne i64 %extended_addr.0.copyload.i, 0
  %and.i.i = and i64 %extended_addr.0.copyload.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i2.i = icmp eq i64 %and.i.i, 0
  %226 = and i1 %cmp.not.i.i, %tobool.not.i2.i
  br i1 %226, label %if.else.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev23.i = getelementptr inbounds %struct.usb_device, ptr %195, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23.i, ptr noundef nonnull @.str.74) #10
  %227 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %3, align 4
  %phy25.i185 = getelementptr inbounds %struct.ieee802154_hw, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %phy25.i185 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %phy25.i185, align 4
  %perm_extended_addr26.i = getelementptr inbounds %struct.wpan_phy, ptr %230, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr26.i, i32 noundef 8) #7
  %arrayidx.i3.i = getelementptr i8, ptr %perm_extended_addr26.i, i32 7
  %231 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i3.i, align 1
  %233 = and i8 %232, -4
  %234 = or i8 %233, 2
  store i8 %234, ptr %arrayidx.i3.i, align 1
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %235 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %3, align 4
  %phy28.i186 = getelementptr inbounds %struct.ieee802154_hw, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %phy28.i186 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %phy28.i186, align 4
  %perm_extended_addr29.i = getelementptr inbounds %struct.wpan_phy, ptr %238, i32 0, i32 7
  %239 = ptrtoint ptr %perm_extended_addr29.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %extended_addr.0.copyload.i, ptr %perm_extended_addr29.i, align 32
  %240 = load ptr, ptr %3, align 4
  %phy31.i = getelementptr inbounds %struct.ieee802154_hw, ptr %240, i32 0, i32 4
  %241 = ptrtoint ptr %phy31.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %phy31.i, align 4
  %perm_extended_addr32.i = getelementptr inbounds %struct.wpan_phy, ptr %242, i32 0, i32 7
  %243 = ptrtoint ptr %perm_extended_addr32.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %perm_extended_addr32.i, align 32
  %245 = tail call i64 @llvm.bswap.i64(i64 %244) #7
  %246 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %addr.i, align 8
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %195, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36.i, ptr noundef nonnull @.str.77, ptr noundef nonnull %addr.i) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %do.end22.i
  call void @kfree(ptr noundef nonnull %call7.i.i169) #7
  br label %atusb_set_extended_addr.exit

atusb_set_extended_addr.exit:                     ; preds = %if.end37.i, %do.end.i184, %if.end.i171.atusb_set_extended_addr.exit_crit_edge, %if.then.i168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #7
  %247 = ptrtoint ptr %fw_ver_maj.i163 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %fw_ver_maj.i163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp = icmp eq i8 %248, 0
  br i1 %cmp, label %land.lhs.true, label %atusb_set_extended_addr.exit.if.then46_crit_edge

atusb_set_extended_addr.exit.if.then46_crit_edge: ; preds = %atusb_set_extended_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

land.lhs.true:                                    ; preds = %atusb_set_extended_addr.exit
  %fw_ver_min = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 13
  %249 = ptrtoint ptr %fw_ver_min to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %fw_ver_min, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %250)
  %cmp40 = icmp ugt i8 %250, 2
  br i1 %cmp40, label %land.lhs.true.if.then46_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then46:                                        ; preds = %land.lhs.true.if.then46_crit_edge, %atusb_set_extended_addr.exit.if.then46_crit_edge
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %call1, i32 0, i32 1
  %251 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %flags, align 4
  %or = or i32 %252, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true.if.end47_crit_edge
  %253 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %err, align 4
  store i32 0, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool49.not = icmp eq i32 %254, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %usb_dev4, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %256, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %254) #10
  br label %fail

if.end56:                                         ; preds = %if.end47
  %call57 = call i32 @ieee802154_register_hw(ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.fail_crit_edge

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end60:                                         ; preds = %if.end56
  %call61 = call fastcc i32 @atusb_write_reg(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 3)
  call void @msleep(i32 noundef 1) #7
  %call62 = call fastcc i32 @atusb_write_reg(ptr noundef %3, i8 noundef zeroext 14, i8 noundef zeroext -1)
  %257 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %err, align 4
  store i32 0, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool64.not = icmp eq i32 %258, 0
  br i1 %tobool64.not, label %if.end60.cleanup_crit_edge, label %do.end69

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %259 = ptrtoint ptr %usb_dev4 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %usb_dev4, align 4
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %260, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %258) #10
  call void @ieee802154_unregister_hw(ptr noundef nonnull %call1) #7
  br label %fail

fail:                                             ; preds = %do.end69, %if.end56.fail_crit_edge, %do.end53, %if.end25.fail_crit_edge, %if.end.i.i.fail_crit_edge, %if.then.i.fail_crit_edge
  %ret.0 = phi i32 [ %254, %do.end53 ], [ %call57, %if.end56.fail_crit_edge ], [ %258, %do.end69 ], [ -12, %if.end25.fail_crit_edge ], [ -12, %if.then.i.fail_crit_edge ], [ -12, %if.end.i.i.fail_crit_edge ]
  %call3.i189 = call ptr @usb_get_from_anchor(ptr noundef %idle_urbs) #7
  %tobool.not4.i = icmp eq ptr %call3.i189, null
  br i1 %tobool.not4.i, label %fail.atusb_free_urbs.exit_crit_edge, label %fail.if.end.i193_crit_edge

fail.if.end.i193_crit_edge:                       ; preds = %fail
  br label %if.end.i193

fail.atusb_free_urbs.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_free_urbs.exit

if.end.i193:                                      ; preds = %if.end.i193.if.end.i193_crit_edge, %fail.if.end.i193_crit_edge
  %call5.i190 = phi ptr [ %call.i191, %if.end.i193.if.end.i193_crit_edge ], [ %call3.i189, %fail.if.end.i193_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %call5.i190, i32 0, i32 27
  %261 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %context.i, align 4
  call void @kfree_skb_reason(ptr noundef %262, i32 noundef 0) #7
  call void @usb_free_urb(ptr noundef nonnull %call5.i190) #7
  %call.i191 = call ptr @usb_get_from_anchor(ptr noundef %idle_urbs) #7
  %tobool.not.i192 = icmp eq ptr %call.i191, null
  br i1 %tobool.not.i192, label %if.end.i193.atusb_free_urbs.exit_crit_edge, label %if.end.i193.if.end.i193_crit_edge

if.end.i193.if.end.i193_crit_edge:                ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i193

if.end.i193.atusb_free_urbs.exit_crit_edge:       ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_free_urbs.exit

atusb_free_urbs.exit:                             ; preds = %if.end.i193.atusb_free_urbs.exit_crit_edge, %fail.atusb_free_urbs.exit_crit_edge
  %tx_urb72 = getelementptr inbounds %struct.atusb, ptr %3, i32 0, i32 9
  %263 = ptrtoint ptr %tx_urb72 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %tx_urb72, align 4
  call void @usb_kill_urb(ptr noundef %264) #7
  %265 = ptrtoint ptr %tx_urb72 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %tx_urb72, align 4
  call void @usb_free_urb(ptr noundef %266) #7
  call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  call void @ieee802154_free_hw(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %atusb_free_urbs.exit, %if.end60.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %atusb_free_urbs.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atusb_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_disconnect.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_disconnect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_dev = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_disconnect.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.80) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shutdown = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %shutdown, align 4
  %work = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 5
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  %rx_urbs = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_urbs) #7
  %idle_urbs.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 6
  %call3.i = tail call ptr @usb_get_from_anchor(ptr noundef %idle_urbs.i) #7
  %tobool.not4.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not4.i, label %do.end.atusb_free_urbs.exit_crit_edge, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  br label %if.end.i

do.end.atusb_free_urbs.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_free_urbs.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  %call5.i = phi ptr [ %call.i, %if.end.i.if.end.i_crit_edge ], [ %call3.i, %do.end.if.end.i_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 27
  %5 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call5.i) #7
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %idle_urbs.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.atusb_free_urbs.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.atusb_free_urbs.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_free_urbs.exit

atusb_free_urbs.exit:                             ; preds = %if.end.i.atusb_free_urbs.exit_crit_edge, %do.end.atusb_free_urbs.exit_crit_edge
  %tx_urb = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #7
  %9 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %10) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %12) #7
  %usb_dev6 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %usb_dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_dev6, align 4
  tail call void @usb_put_dev(ptr noundef %14) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @ieee802154_free_hw(ptr noundef %16) #7
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_disconnect.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_disconnect, %if.then20)) #7
          to label %do.end23 [label %if.then20], !srcloc !212

if.then20:                                        ; preds = %atusb_free_urbs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atusb_disconnect.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %atusb_free_urbs.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atusb_work_urbs(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %usb_dev1 = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev1, align 4
  %shutdown = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %idle_urbs = getelementptr i8, ptr %work, i32 100
  %rx_urbs.i = getelementptr i8, ptr %work, i32 212
  br label %do.body

do.body:                                          ; preds = %if.end12.i.do.body_crit_edge, %do.body.preheader
  %call2 = tail call ptr @usb_get_from_anchor(ptr noundef %idle_urbs) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.end5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %4 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_dev1, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %6 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end5.if.end12.i_crit_edge

if.end5.if.end12.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end5
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 131, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %if.then.i
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @atusb_submit_rx_urb._rs, ptr noundef nonnull @__func__.atusb_submit_rx_urb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.end_crit_edge, label %do.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #10
  br label %do.end

if.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 131) #7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %cb.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end10.i, %if.end5.if.end12.i_crit_edge
  %skb.0.i = phi ptr [ %7, %if.end5.if.end12.i_crit_edge ], [ %call.i.i, %if.end10.i ]
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %10, 8
  %or14.i = or i32 %shl.i.i, -1073708928
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %14 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or14.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @atusb_in, ptr %complete.i.i, align 4
  %18 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %skb.0.i, ptr %context.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %rx_urbs.i) #7
  %call15.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 3264) #7
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end12.i.do.body_crit_edge, label %if.then17.i

if.end12.i.do.body_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call2) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0.i, i32 noundef 0) #7
  %19 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %context.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then17.i, %do.end.i, %do.body.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call15.i, %if.then17.i ], [ -12, %do.body.i.do.end_crit_edge ], [ -12, %do.end.i ]
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %idle_urbs) #7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @atusb_work_urbs._rs, ptr noundef nonnull @__func__.atusb_work_urbs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end.do.end18_crit_edge, label %do.end15

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end15, %do.end.do.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atusb_write_reg(ptr nocapture noundef %atusb, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev1 = getelementptr inbounds %struct.atusb, ptr %atusb, i32 0, i32 1
  %0 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_reg.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_write_reg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i8 %reg to i32
  %conv4 = zext i8 %value to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_reg.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1, align 4
  %err.i = getelementptr inbounds %struct.atusb, ptr %atusb, i32 0, i32 4
  %4 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.atusb_control_msg.exit_crit_edge

do.end.atusb_control_msg.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_control_msg.exit

if.end.i:                                         ; preds = %do.end
  %conv7 = zext i8 %reg to i16
  %conv6 = zext i8 %value to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext %conv6, i16 noundef zeroext %conv7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.atusb_control_msg.exit_crit_edge

if.end.i.atusb_control_msg.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_control_msg.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %err.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %conv9.i = zext i8 %value to i32
  %conv10.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 32, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %atusb_control_msg.exit

atusb_control_msg.exit:                           ; preds = %if.then4.i, %if.end.i.atusb_control_msg.exit_crit_edge, %do.end.atusb_control_msg.exit_crit_edge
  %retval.0.i13 = phi i32 [ %5, %do.end.atusb_control_msg.exit_crit_edge ], [ %call.i, %if.then4.i ], [ %call.i, %if.end.i.atusb_control_msg.exit_crit_edge ]
  ret i32 %retval.0.i13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_start.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_start.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %work = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 0) #7
  %5 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_command.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_start, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_command.__UNIQUE_ID_ddebug342, ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 64) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %7 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_dev1, align 4
  %err.i.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.atusb_command.exit_crit_edge

do.end.i.atusb_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exit

if.end.i.i:                                       ; preds = %do.end.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call.i.i14 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 64, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp.i.i = icmp slt i32 %call.i.i14, 0
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.atusb_command.exitthread-pre-split_crit_edge

if.end.i.i.atusb_command.exitthread-pre-split_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exitthread-pre-split

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i14, ptr %err.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 64, i32 noundef 1, i32 noundef 0, i32 noundef %call.i.i14) #10
  br label %atusb_command.exitthread-pre-split

atusb_command.exitthread-pre-split:               ; preds = %if.then4.i.i, %if.end.i.i.atusb_command.exitthread-pre-split_crit_edge
  %14 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %err.i.i, align 4
  br label %atusb_command.exit

atusb_command.exit:                               ; preds = %atusb_command.exitthread-pre-split, %do.end.i.atusb_command.exit_crit_edge
  %15 = phi i32 [ %.pr, %atusb_command.exitthread-pre-split ], [ %10, %do.end.i.atusb_command.exit_crit_edge ]
  %16 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then7, label %atusb_command.exit.if.end8_crit_edge

atusb_command.exit.if.end8_crit_edge:             ; preds = %atusb_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %atusb_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  %idle_urbs = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %idle_urbs) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %atusb_command.exit.if.end8_crit_edge
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atusb_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_stop.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_stop.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %idle_urbs = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %idle_urbs) #7
  %4 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_command.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_stop, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_command.__UNIQUE_ID_ddebug342, ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 64) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %6 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev1, align 4
  %err.i.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.atusb_command.exit_crit_edge

do.end.i.atusb_command.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exit

if.end.i.i:                                       ; preds = %do.end.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 64, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.atusb_command.exit_crit_edge

if.end.i.i.atusb_command.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_command.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i.i, ptr %err.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef %call.i.i) #10
  br label %atusb_command.exit

atusb_command.exit:                               ; preds = %if.then4.i.i, %if.end.i.i.atusb_command.exit_crit_edge, %do.end.i.atusb_command.exit_crit_edge
  %13 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %err.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_xmit(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_xmit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_xmit.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %tx_skb, align 4
  %tx_ack_seq = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %tx_ack_seq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_ack_seq, align 4
  %inc = add i8 %8, 1
  store i8 %inc, ptr %tx_ack_seq, align 4
  %conv = zext i8 %inc to i16
  %9 = shl nuw i16 %conv, 8
  %tx_dr = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 8
  %wIndex = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %wIndex to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %wIndex, align 4
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len5, align 4
  %conv6 = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %wLength = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %wLength, align 2
  %tx_urb = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_urb, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 8
  %shl.i = shl i32 %18, 8
  %or = or i32 %shl.i, -2147483648
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len5, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 21
  %25 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_dr, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @atusb_xmit_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %29 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %context5.i, align 4
  %30 = load ptr, ptr %tx_urb, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_xmit, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !212

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_xmit.__UNIQUE_ID_ddebug355, ptr noundef %dev26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call12) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.end
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_ed(ptr nocapture noundef readnone %hw, ptr noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %level, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 406, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -66, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_channel(ptr noundef %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_channel = getelementptr inbounds %struct.atusb_chip_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %set_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_channel, align 4
  %call = tail call i32 %5(ptr noundef %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %conv = zext i16 %9 to i32
  tail call void @msleep(i32 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -524, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_hw_addr_filt(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %2 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %short_addr, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = trunc i16 %4 to i8
  %call = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext %conv)
  %5 = lshr i16 %4, 8
  %conv3 = trunc i16 %5 to i8
  %call4 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 33, i8 noundef zeroext %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %filt, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv8 = trunc i16 %8 to i8
  %call9 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 34, i8 noundef zeroext %conv8)
  %9 = lshr i16 %8, 8
  %conv12 = trunc i16 %9 to i8
  %call13 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 35, i8 noundef zeroext %conv12)
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %and15 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %if.then17

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %10 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ieee_addr, align 8
  %addr18.sroa.0.0.extract.shift = lshr i64 %11, 56
  %addr18.sroa.0.0.extract.trunc = trunc i64 %addr18.sroa.0.0.extract.shift to i8
  %addr18.sroa.5.0.extract.shift = lshr i64 %11, 48
  %addr18.sroa.5.0.extract.trunc = trunc i64 %addr18.sroa.5.0.extract.shift to i8
  %addr18.sroa.7.0.extract.shift = lshr i64 %11, 40
  %addr18.sroa.7.0.extract.trunc = trunc i64 %addr18.sroa.7.0.extract.shift to i8
  %addr18.sroa.9.0.extract.shift = lshr i64 %11, 32
  %addr18.sroa.9.0.extract.trunc = trunc i64 %addr18.sroa.9.0.extract.shift to i8
  %addr18.sroa.11.0.extract.shift = lshr i64 %11, 24
  %addr18.sroa.11.0.extract.trunc = trunc i64 %addr18.sroa.11.0.extract.shift to i8
  %addr18.sroa.13.0.extract.shift = lshr i64 %11, 16
  %addr18.sroa.13.0.extract.trunc = trunc i64 %addr18.sroa.13.0.extract.shift to i8
  %addr18.sroa.15.0.extract.shift = lshr i64 %11, 8
  %addr18.sroa.15.0.extract.trunc = trunc i64 %addr18.sroa.15.0.extract.shift to i8
  %addr18.sroa.17.0.extract.trunc = trunc i64 %11 to i8
  %call23 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 36, i8 noundef zeroext %addr18.sroa.0.0.extract.trunc)
  %call23.1 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 37, i8 noundef zeroext %addr18.sroa.5.0.extract.trunc)
  %call23.2 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 38, i8 noundef zeroext %addr18.sroa.7.0.extract.trunc)
  %call23.3 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 39, i8 noundef zeroext %addr18.sroa.9.0.extract.trunc)
  %call23.4 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 40, i8 noundef zeroext %addr18.sroa.11.0.extract.trunc)
  %call23.5 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 41, i8 noundef zeroext %addr18.sroa.13.0.extract.trunc)
  %call23.6 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 42, i8 noundef zeroext %addr18.sroa.15.0.extract.trunc)
  %call23.7 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 43, i8 noundef zeroext %addr18.sroa.17.0.extract.trunc)
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end14.if.end24_crit_edge
  %and25 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end33_crit_edge, label %if.then27

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %12 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pan_coord, align 8, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  %usb_dev1.i54 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %usb_dev1.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_dev1.i54, align 4
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_hw_addr_filt, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then29
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 46) #7
  %or.i = or i32 %call6.i, 8
  %16 = xor i32 %or.i, %call6.i
  %17 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %do.end.i.if.end33_crit_edge, label %if.then20.i

do.end.i.if.end33_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_hw_addr_filt, %if.then.i56)) #7
          to label %do.end.i60 [label %if.then.i56], !srcloc !212

if.then.i56:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i55 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i55, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 0) #7
  br label %do.end.i60

do.end.i60:                                       ; preds = %if.then.i56, %if.else
  %call6.i57 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 46) #7
  %18 = and i32 %call6.i57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i59 = icmp eq i32 %18, 0
  br i1 %cmp.not.i59, label %do.end.i60.if.end33_crit_edge, label %if.then20.i63

do.end.i60.if.end33_crit_edge:                    ; preds = %do.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then20.i63:                                    ; preds = %do.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  %19 = trunc i32 %call6.i57 to i8
  %conv16.i61 = and i8 %19, -9
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then20.i63, %if.then20.i
  %conv16.i61.sink = phi i8 [ %conv16.i61, %if.then20.i63 ], [ %conv16.i, %if.then20.i ]
  %call21.i62 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 46, i8 noundef zeroext %conv16.i61.sink) #7
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %do.end.i60.if.end33_crit_edge, %do.end.i.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %err1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %err1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %err1.i, align 4
  store i32 0, ptr %err1.i, align 4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_txpower(ptr noundef %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_txpower = getelementptr inbounds %struct.atusb_chip_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_txpower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_txpower, align 4
  %call = tail call i32 %5(ptr noundef %hw, i32 noundef %mbm) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hulusb_set_lbt(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_lbt, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %conv5.i = zext i1 %on to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 23, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 23) #7
  %and.i = and i32 %call6.i, -65
  %shl.i = select i1 %on, i32 64, i32 0
  %or.i = or i32 %and.i, %shl.i
  %4 = xor i32 %or.i, %call6.i
  %5 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %do.end.i.atusb_write_subreg.exit_crit_edge, label %if.then20.i

do.end.i.atusb_write_subreg.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_write_subreg.exit

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext %conv16.i) #7
  br label %atusb_write_subreg.exit

atusb_write_subreg.exit:                          ; preds = %if.then20.i, %do.end.i.atusb_write_subreg.exit_crit_edge
  %ret.0.i = phi i32 [ %call21.i, %if.then20.i ], [ 0, %do.end.i.atusb_write_subreg.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_cca_mode(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cca) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog6_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.bb2:                                           ; preds = %entry
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %6, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb2.sw.epilog6_crit_edge
    i32 1, label %sw.bb4
  ]

sw.bb2.sw.epilog6_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb4, %sw.bb2.sw.epilog6_crit_edge, %sw.bb1, %entry.sw.epilog6_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb4 ], [ 2, %sw.bb1 ], [ %3, %entry.sw.epilog6_crit_edge ], [ 3, %sw.bb2.sw.epilog6_crit_edge ]
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_cca_mode, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 8, i32 noundef %val.0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.epilog6
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 8) #7
  %and.i = and i32 %call6.i, -97
  %shl.i = shl nuw nsw i32 %val.0, 5
  %or.i = or i32 %and.i, %shl.i
  %10 = xor i32 %or.i, %call6.i
  %11 = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %if.then20.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %conv16.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i, %do.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call21.i, %if.then20.i ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %cca_ed_levels_size = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cca_ed_levels_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cca_ed_levels = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 16
  %6 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cca_ed_levels, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbm)
  %cmp3 = icmp eq i32 %9, %mbm
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_cca_ed_level, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %conv5.i = and i32 %i.012, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 9, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 9) #7
  %and.i = and i32 %call6.i, -16
  %and14.i = and i32 %i.012, 15
  %or.i = or i32 %and.i, %and14.i
  %12 = xor i32 %or.i, %call6.i
  %13 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %if.then20.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %conv16.i) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21.i, %if.then20.i ], [ 0, %do.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_csma_params(ptr nocapture noundef readonly %hw, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_csma_params, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %conv5.i = zext i8 %min_be to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 47, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 47) #7
  %and.i = and i32 %call6.i, -16
  %4 = and i8 %min_be, 15
  %and14.i = zext i8 %4 to i32
  %or.i = or i32 %and.i, %and14.i
  %5 = xor i32 %or.i, %call6.i
  %6 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %do.end.i.if.end_crit_edge, label %atusb_write_subreg.exit

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atusb_write_subreg.exit:                          ; preds = %do.end.i
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 47, i8 noundef zeroext %conv16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not = icmp eq i32 %call21.i, 0
  br i1 %tobool.not, label %atusb_write_subreg.exit.if.end_crit_edge, label %atusb_write_subreg.exit.cleanup_crit_edge

atusb_write_subreg.exit.cleanup_crit_edge:        ; preds = %atusb_write_subreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atusb_write_subreg.exit.if.end_crit_edge:         ; preds = %atusb_write_subreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %atusb_write_subreg.exit.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %7 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_csma_params, %if.then.i15)) #7
          to label %do.end.i22 [label %if.then.i15], !srcloc !212

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i13 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %conv5.i14 = zext i8 %max_be to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i13, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 47, i32 noundef %conv5.i14) #7
  br label %do.end.i22

do.end.i22:                                       ; preds = %if.then.i15, %if.end
  %call6.i16 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 47) #7
  %and.i17 = and i32 %call6.i16, -241
  %conv11.i18 = zext i8 %max_be to i32
  %shl.i = shl nuw nsw i32 %conv11.i18, 4
  %and14.i19 = and i32 %shl.i, 240
  %or.i20 = or i32 %and.i17, %and14.i19
  %9 = xor i32 %or.i20, %call6.i16
  %10 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i21 = icmp eq i32 %10, 0
  br i1 %cmp.not.i21, label %do.end.i22.if.end4_crit_edge, label %atusb_write_subreg.exit27

do.end.i22.if.end4_crit_edge:                     ; preds = %do.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

atusb_write_subreg.exit27:                        ; preds = %do.end.i22
  %conv16.i23 = trunc i32 %or.i20 to i8
  %call21.i24 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 47, i8 noundef zeroext %conv16.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i24)
  %tobool2.not = icmp eq i32 %call21.i24, 0
  br i1 %tobool2.not, label %atusb_write_subreg.exit27.if.end4_crit_edge, label %atusb_write_subreg.exit27.cleanup_crit_edge

atusb_write_subreg.exit27.cleanup_crit_edge:      ; preds = %atusb_write_subreg.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atusb_write_subreg.exit27.if.end4_crit_edge:      ; preds = %atusb_write_subreg.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %atusb_write_subreg.exit27.if.end4_crit_edge, %do.end.i22.if.end4_crit_edge
  %11 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_csma_params, %if.then.i31)) #7
          to label %do.end.i39 [label %if.then.i31], !srcloc !212

if.then.i31:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i29 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %conv5.i30 = zext i8 %retries to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i29, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 44, i32 noundef %conv5.i30) #7
  br label %do.end.i39

do.end.i39:                                       ; preds = %if.then.i31, %if.end4
  %call6.i32 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 44) #7
  %and.i33 = and i32 %call6.i32, -15
  %conv11.i34 = zext i8 %retries to i32
  %shl.i35 = shl nuw nsw i32 %conv11.i34, 1
  %and14.i36 = and i32 %shl.i35, 14
  %or.i37 = or i32 %and.i33, %and14.i36
  %13 = xor i32 %or.i37, %call6.i32
  %14 = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i38 = icmp eq i32 %14, 0
  br i1 %cmp.not.i38, label %do.end.i39.cleanup_crit_edge, label %if.then20.i42

do.end.i39.cleanup_crit_edge:                     ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i42:                                    ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i40 = trunc i32 %or.i37 to i8
  %call21.i41 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext %conv16.i40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i42, %do.end.i39.cleanup_crit_edge, %atusb_write_subreg.exit27.cleanup_crit_edge, %atusb_write_subreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21.i, %atusb_write_subreg.exit.cleanup_crit_edge ], [ %call21.i24, %atusb_write_subreg.exit27.cleanup_crit_edge ], [ %call21.i41, %if.then20.i42 ], [ 0, %do.end.i39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_frame_retries(ptr nocapture noundef readonly %hw, i8 noundef signext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_frame_retries, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %conv5.i = zext i8 %retries to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 44, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 44) #7
  %and.i = and i32 %call6.i, -241
  %conv11.i = zext i8 %retries to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 4
  %and14.i = and i32 %shl.i, 240
  %or.i = or i32 %and.i, %and14.i
  %4 = xor i32 %or.i, %call6.i
  %5 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %do.end.i.atusb_write_subreg.exit_crit_edge, label %if.then20.i

do.end.i.atusb_write_subreg.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_write_subreg.exit

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 44, i8 noundef zeroext %conv16.i) #7
  br label %atusb_write_subreg.exit

atusb_write_subreg.exit:                          ; preds = %if.then20.i, %do.end.i.atusb_write_subreg.exit_crit_edge
  %ret.0.i = phi i32 [ %call21.i, %if.then20.i ], [ 0, %do.end.i.atusb_write_subreg.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_promiscuous_mode, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 46) #7
  %or.i = or i32 %call6.i, 16
  %4 = xor i32 %or.i, %call6.i
  %5 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %do.end.i.if.end_crit_edge, label %atusb_write_subreg.exit

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atusb_write_subreg.exit:                          ; preds = %do.end.i
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 46, i8 noundef zeroext %conv16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp = icmp slt i32 %call21.i, 0
  br i1 %cmp, label %atusb_write_subreg.exit.cleanup_crit_edge, label %atusb_write_subreg.exit.if.end_crit_edge

atusb_write_subreg.exit.if.end_crit_edge:         ; preds = %atusb_write_subreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atusb_write_subreg.exit.cleanup_crit_edge:        ; preds = %atusb_write_subreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %atusb_write_subreg.exit.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %6 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_promiscuous_mode, %if.then.i28)) #7
          to label %do.end.i33 [label %if.then.i28], !srcloc !212

if.then.i28:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i27 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i27, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 23, i32 noundef 1) #7
  br label %do.end.i33

do.end.i33:                                       ; preds = %if.then.i28, %if.end
  %call6.i29 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 23) #7
  %or.i31 = or i32 %call6.i29, 2
  %8 = xor i32 %or.i31, %call6.i29
  %9 = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i32 = icmp eq i32 %9, 0
  br i1 %cmp.not.i32, label %do.end.i33.if.end14_crit_edge, label %atusb_write_subreg.exit38

do.end.i33.if.end14_crit_edge:                    ; preds = %do.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

atusb_write_subreg.exit38:                        ; preds = %do.end.i33
  %conv16.i34 = trunc i32 %or.i31 to i8
  %call21.i35 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext %conv16.i34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i35)
  %cmp3 = icmp slt i32 %call21.i35, 0
  br i1 %cmp3, label %atusb_write_subreg.exit38.cleanup_crit_edge, label %atusb_write_subreg.exit38.if.end14_crit_edge

atusb_write_subreg.exit38.if.end14_crit_edge:     ; preds = %atusb_write_subreg.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

atusb_write_subreg.exit38.cleanup_crit_edge:      ; preds = %atusb_write_subreg.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_promiscuous_mode, %if.then.i41)) #7
          to label %do.end.i45 [label %if.then.i41], !srcloc !212

if.then.i41:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i40 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i40, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 23, i32 noundef 0) #7
  br label %do.end.i45

do.end.i45:                                       ; preds = %if.then.i41, %if.else
  %call6.i42 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 23) #7
  %10 = and i32 %call6.i42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i44 = icmp eq i32 %10, 0
  br i1 %cmp.not.i44, label %do.end.i45.if.end9_crit_edge, label %atusb_write_subreg.exit50

do.end.i45.if.end9_crit_edge:                     ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

atusb_write_subreg.exit50:                        ; preds = %do.end.i45
  %11 = trunc i32 %call6.i42 to i8
  %conv16.i46 = and i8 %11, -3
  %call21.i47 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext %conv16.i46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i47)
  %cmp7 = icmp slt i32 %call21.i47, 0
  br i1 %cmp7, label %atusb_write_subreg.exit50.cleanup_crit_edge, label %atusb_write_subreg.exit50.if.end9_crit_edge

atusb_write_subreg.exit50.if.end9_crit_edge:      ; preds = %atusb_write_subreg.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

atusb_write_subreg.exit50.cleanup_crit_edge:      ; preds = %atusb_write_subreg.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %atusb_write_subreg.exit50.if.end9_crit_edge, %do.end.i45.if.end9_crit_edge
  %12 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_promiscuous_mode, %if.then.i53)) #7
          to label %do.end.i57 [label %if.then.i53], !srcloc !212

if.then.i53:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i52 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i52, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 0) #7
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then.i53, %if.end9
  %call6.i54 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 46) #7
  %14 = and i32 %call6.i54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i56 = icmp eq i32 %14, 0
  br i1 %cmp.not.i56, label %do.end.i57.if.end14_crit_edge, label %atusb_write_subreg.exit62

do.end.i57.if.end14_crit_edge:                    ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

atusb_write_subreg.exit62:                        ; preds = %do.end.i57
  %15 = trunc i32 %call6.i54 to i8
  %conv16.i58 = and i8 %15, -17
  %call21.i59 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 46, i8 noundef zeroext %conv16.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i59)
  %cmp11 = icmp slt i32 %call21.i59, 0
  br i1 %cmp11, label %atusb_write_subreg.exit62.cleanup_crit_edge, label %atusb_write_subreg.exit62.if.end14_crit_edge

atusb_write_subreg.exit62.if.end14_crit_edge:     ; preds = %atusb_write_subreg.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

atusb_write_subreg.exit62.cleanup_crit_edge:      ; preds = %atusb_write_subreg.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %atusb_write_subreg.exit62.if.end14_crit_edge, %do.end.i57.if.end14_crit_edge, %atusb_write_subreg.exit38.if.end14_crit_edge, %do.end.i33.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %atusb_write_subreg.exit62.cleanup_crit_edge, %atusb_write_subreg.exit50.cleanup_crit_edge, %atusb_write_subreg.exit38.cleanup_crit_edge, %atusb_write_subreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call21.i, %atusb_write_subreg.exit.cleanup_crit_edge ], [ %call21.i35, %atusb_write_subreg.exit38.cleanup_crit_edge ], [ %call21.i47, %atusb_write_subreg.exit50.cleanup_crit_edge ], [ %call21.i59, %atusb_write_subreg.exit62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atusb_xmit_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_xmit_complete.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_xmit_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_xmit_complete.__UNIQUE_ID_ddebug353, ptr noundef %dev3, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atusb_read_reg(ptr nocapture noundef %atusb, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev1 = getelementptr inbounds %struct.atusb, ptr %atusb, i32 0, i32 1
  %0 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_read_reg.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_read_reg, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !212

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_read_reg.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %3 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_dev1, align 4
  %err.i = getelementptr inbounds %struct.atusb, ptr %atusb, i32 0, i32 4
  %5 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %atusb_control_msg.exit

if.end.i:                                         ; preds = %do.end
  %conv10 = zext i8 %reg to i16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %shl.i = shl i32 %8, 8
  %or9 = or i32 %shl.i, -2147483520
  %call.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or9, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv10, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %atusb_control_msg.exit.thread30, label %if.end.i.if.then13_crit_edge

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

atusb_control_msg.exit.thread30:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i.not = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp5.i.not, i32 -61, i32 %call.i
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %err.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %conv10.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 33, i32 noundef 0, i32 noundef %conv10.i, i32 noundef %spec.select.i) #10
  br label %if.else

atusb_control_msg.exit:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp sgt i32 %6, -1
  br i1 %cmp, label %atusb_control_msg.exit.if.then13_crit_edge, label %atusb_control_msg.exit.if.else_crit_edge

atusb_control_msg.exit.if.else_crit_edge:         ; preds = %atusb_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

atusb_control_msg.exit.if.then13_crit_edge:       ; preds = %atusb_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %atusb_control_msg.exit.if.then13_crit_edge, %if.end.i.if.then13_crit_edge
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %conv14 = zext i8 %11 to i32
  br label %cleanup

if.else:                                          ; preds = %atusb_control_msg.exit.if.else_crit_edge, %atusb_control_msg.exit.thread30
  %retval.0.i2633 = phi i32 [ %spec.select.i, %atusb_control_msg.exit.thread30 ], [ %6, %atusb_control_msg.exit.if.else_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv14, %if.then13 ], [ %retval.0.i2633, %if.else ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atusb_in(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in.__UNIQUE_ID_ddebug351, ptr noundef %dev3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %7, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status4, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %11, label %do.body11 [
    i32 0, label %if.else
    i32 -2, label %if.then8
  ]

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %13 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %context, align 4
  br label %cleanup

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in, %if.then23)) #7
          to label %if.end29 [label %if.then23], !srcloc !212

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in.__UNIQUE_ID_ddebug352, ptr noundef %dev24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %15) #7
  br label %if.end29

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @atusb_in_good(ptr noundef %urb)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23, %do.body11
  %idle_urbs = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 6
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %idle_urbs) #7
  %shutdown = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atusb_in_good(ptr nocapture noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 8
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in_good.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in_good, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !212

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in_good.__UNIQUE_ID_ddebug347, ptr noundef %dev5, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_dev1.i, align 4
  %tx_ack_seq.i = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %tx_ack_seq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_ack_seq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_tx_done.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in_good, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %conv.i = zext i8 %11 to i32
  %conv4.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_tx_done.__UNIQUE_ID_ddebug346, ptr noundef %dev.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef %conv4.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %11)
  %cmp.i = icmp eq i8 %15, %11
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  br i1 %cmp.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb.i = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skb.i, align 4
  tail call void @ieee802154_xmit_complete(ptr noundef %17, ptr noundef %19, i1 noundef zeroext false) #7
  br label %cleanup

if.else.i:                                        ; preds = %do.end.i
  tail call void @ieee802154_wake_queue(ptr noundef %17) #7
  %tx_skb10.i = getelementptr inbounds %struct.atusb, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %tx_skb10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb10.i, align 4
  %tobool11.not.i = icmp eq ptr %21, null
  br i1 %tobool11.not.i, label %if.else.i.cleanup_crit_edge, label %if.then12.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %21, i32 noundef 1) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp11.not = icmp ugt i32 %sub, %conv
  br i1 %cmp11.not, label %if.end33, label %do.body14

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in_good.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in_good, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !212

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in_good.__UNIQUE_ID_ddebug348, ptr noundef %dev27, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %23) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp.i114 = icmp eq i8 %11, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %24 = icmp sgt i8 %11, 8
  %spec.select.i = or i1 %cmp.i114, %24
  br i1 %spec.select.i, label %if.end53, label %do.body36

do.body36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in_good.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in_good, %if.then48)) #7
          to label %cleanup [label %if.then48], !srcloc !212

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in_good.__UNIQUE_ID_ddebug349, ptr noundef %dev49, ptr noundef nonnull @.str.36) #7
  br label %cleanup

if.end53:                                         ; preds = %if.end33
  %arrayidx = getelementptr i8, ptr %9, i32 %add
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_in_good.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_in_good, %if.then69)) #7
          to label %do.end75 [label %if.then69], !srcloc !212

if.then69:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %dev70 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv72 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_in_good.__UNIQUE_ID_ddebug350, ptr noundef %dev70, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %conv72) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %if.end53
  %call76 = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 1) #7
  tail call void @skb_trim(ptr noundef %3, i32 noundef %conv) #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %28, ptr noundef %3, i8 noundef zeroext %26) #7
  %29 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.then48, %do.body36, %if.then26, %do.body14, %if.then12.i, %if.else.i.cleanup_crit_edge, %if.then8.i, %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_channel, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %conv5.i = zext i8 %channel to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 8, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 8) #7
  %and.i = and i32 %call6.i, -32
  %4 = and i8 %channel, 31
  %and14.i = zext i8 %4 to i32
  %or.i = or i32 %and.i, %and14.i
  %5 = xor i32 %or.i, %call6.i
  %6 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %do.end.i.atusb_write_subreg.exit.thread_crit_edge, label %atusb_write_subreg.exit

do.end.i.atusb_write_subreg.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atusb_write_subreg.exit.thread

atusb_write_subreg.exit:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %conv16.i) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call21.i, i32 0)
  br label %atusb_write_subreg.exit.thread

atusb_write_subreg.exit.thread:                   ; preds = %atusb_write_subreg.exit, %do.end.i.atusb_write_subreg.exit.thread_crit_edge
  %8 = phi i32 [ 0, %do.end.i.atusb_write_subreg.exit.thread_crit_edge ], [ %7, %atusb_write_subreg.exit ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atusb_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 15
  %6 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbm)
  %cmp3 = icmp eq i32 %9, %mbm
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atusb_set_txpower, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %conv5.i = and i32 %i.012, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 5, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 5) #7
  %and.i = and i32 %call6.i, -16
  %and14.i = and i32 %i.012, 15
  %or.i = or i32 %and.i, %and14.i
  %12 = xor i32 %or.i, %call6.i
  %13 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %if.then20.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %conv16.i) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21.i, %if.then20.i ], [ 0, %do.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hulusb_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel)
  %cmp = icmp eq i8 %channel, 0
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev1.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_channel, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 12, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 12) #7
  %4 = and i32 %call6.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %do.end.i.if.end6_crit_edge, label %if.then20.i

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = trunc i32 %call6.i to i8
  %conv16.i = and i8 %5, -5
  br label %if.end

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_channel, %if.then.i94)) #7
          to label %do.end.i98 [label %if.then.i94], !srcloc !212

if.then.i94:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i93 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i93, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 12, i32 noundef 1) #7
  br label %do.end.i98

do.end.i98:                                       ; preds = %if.then.i94, %if.else
  %call6.i95 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 12) #7
  %or.i = or i32 %call6.i95, 4
  %6 = xor i32 %or.i, %call6.i95
  %7 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i97 = icmp eq i32 %7, 0
  br i1 %cmp.not.i97, label %do.end.i98.if.end6_crit_edge, label %if.then20.i101

do.end.i98.if.end6_crit_edge:                     ; preds = %do.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then20.i101:                                   ; preds = %do.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i99 = trunc i32 %or.i to i8
  br label %if.end

if.end:                                           ; preds = %if.then20.i101, %if.then20.i
  %conv16.i99.sink = phi i8 [ %conv16.i99, %if.then20.i101 ], [ %conv16.i, %if.then20.i ]
  %call21.i100 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %conv16.i99.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i100)
  %cmp3 = icmp slt i32 %call21.i100, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %do.end.i98.if.end6_crit_edge, %do.end.i.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp8 = icmp eq i8 %page, 0
  %usb_dev1.i104 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %usb_dev1.i104 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_dev1.i104, align 4
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_channel, %if.then.i106)) #7
          to label %do.end.i110 [label %if.then.i106], !srcloc !212

if.then.i106:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i105 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i105, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 12, i32 noundef 0) #7
  br label %do.end.i110

do.end.i110:                                      ; preds = %if.then.i106, %if.then10
  %call6.i107 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 12) #7
  %10 = and i32 %call6.i107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i109 = icmp eq i32 %10, 0
  br i1 %cmp.not.i109, label %do.end.i110.hulusb_set_cca_ed_level.exit_crit_edge, label %if.end14

do.end.i110.hulusb_set_cca_ed_level.exit_crit_edge: ; preds = %do.end.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %hulusb_set_cca_ed_level.exit

if.else12:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_channel, %if.then.i118)) #7
          to label %do.end.i123 [label %if.then.i118], !srcloc !212

if.then.i118:                                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i117 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i117, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 12, i32 noundef 1) #7
  br label %do.end.i123

do.end.i123:                                      ; preds = %if.then.i118, %if.else12
  %call6.i119 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 12) #7
  %or.i121 = or i32 %call6.i119, 8
  %11 = xor i32 %or.i121, %call6.i119
  %12 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i122 = icmp eq i32 %12, 0
  br i1 %cmp.not.i122, label %do.end.i123.hulusb_set_cca_ed_level.exit.thread_crit_edge, label %if.end14.thread

do.end.i123.hulusb_set_cca_ed_level.exit.thread_crit_edge: ; preds = %do.end.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %hulusb_set_cca_ed_level.exit.thread

if.end14:                                         ; preds = %do.end.i110
  %13 = trunc i32 %call6.i107 to i8
  %conv16.i111 = and i8 %13, -9
  %call21.i112 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %conv16.i111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i112)
  %cmp15 = icmp slt i32 %call21.i112, 0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end14.hulusb_set_cca_ed_level.exit_crit_edge

if.end14.hulusb_set_cca_ed_level.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %hulusb_set_cca_ed_level.exit

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.thread:                                  ; preds = %do.end.i123
  %conv16.i124 = trunc i32 %or.i121 to i8
  %call21.i125 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %conv16.i124) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i125)
  %cmp15160 = icmp slt i32 %call21.i125, 0
  br i1 %cmp15160, label %if.end14.thread.cleanup_crit_edge, label %if.end14.thread.hulusb_set_cca_ed_level.exit.thread_crit_edge

if.end14.thread.hulusb_set_cca_ed_level.exit.thread_crit_edge: ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %hulusb_set_cca_ed_level.exit.thread

if.end14.thread.cleanup_crit_edge:                ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

hulusb_set_cca_ed_level.exit:                     ; preds = %if.end14.hulusb_set_cca_ed_level.exit_crit_edge, %do.end.i110.hulusb_set_cca_ed_level.exit_crit_edge
  %call.i.i155 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 9) #7
  %and.i.i156 = and i32 %call.i.i155, 15
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %phy8.i = getelementptr inbounds %struct.ieee802154_hw, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %phy8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy8.i, align 4
  %cca_ed_levels10.i = getelementptr inbounds %struct.wpan_phy, ptr %17, i32 0, i32 4, i32 16
  %18 = ptrtoint ptr %cca_ed_levels10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @at86rf212_ed_levels_100, ptr %cca_ed_levels10.i, align 4
  %19 = load ptr, ptr %1, align 4
  %phy12.i = getelementptr inbounds %struct.ieee802154_hw, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %phy12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy12.i, align 4
  %cca_ed_levels_size14.i = getelementptr inbounds %struct.wpan_phy, ptr %21, i32 0, i32 4, i32 14
  %22 = ptrtoint ptr %cca_ed_levels_size14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %cca_ed_levels_size14.i, align 4
  %arrayidx15.i = getelementptr [16 x i32], ptr @at86rf212_ed_levels_100, i32 0, i32 %and.i.i156
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15.i, align 4
  %25 = load ptr, ptr %1, align 4
  %phy17.i = getelementptr inbounds %struct.ieee802154_hw, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy17.i, align 4
  %cca_ed_level18.i = getelementptr inbounds %struct.wpan_phy, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %cca_ed_level18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %cca_ed_level18.i, align 8
  %. = select i1 %cmp, i8 50, i8 40
  br label %if.end51

hulusb_set_cca_ed_level.exit.thread:              ; preds = %if.end14.thread.hulusb_set_cca_ed_level.exit.thread_crit_edge, %do.end.i123.hulusb_set_cca_ed_level.exit.thread_crit_edge
  %call.i.i150 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 9) #7
  %and.i.i151 = and i32 %call.i.i150, 15
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 16
  %33 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @at86rf212_ed_levels_98, ptr %cca_ed_levels.i, align 4
  %34 = load ptr, ptr %1, align 4
  %phy2.i = getelementptr inbounds %struct.ieee802154_hw, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy2.i, align 4
  %cca_ed_levels_size.i = getelementptr inbounds %struct.wpan_phy, ptr %36, i32 0, i32 4, i32 14
  %37 = ptrtoint ptr %cca_ed_levels_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %cca_ed_levels_size.i, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @at86rf212_ed_levels_98, i32 0, i32 %and.i.i151
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %40 = load ptr, ptr %1, align 4
  %phy5.i = getelementptr inbounds %struct.ieee802154_hw, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %phy5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy5.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %cca_ed_level.i, align 8
  %spec.select = select i1 %cmp, i8 25, i8 16
  br label %if.end51

if.end51:                                         ; preds = %hulusb_set_cca_ed_level.exit.thread, %hulusb_set_cca_ed_level.exit
  %.sink = phi i8 [ %., %hulusb_set_cca_ed_level.exit ], [ %spec.select, %hulusb_set_cca_ed_level.exit.thread ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %phy44 = getelementptr inbounds %struct.ieee802154_hw, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %phy44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy44, align 4
  %symbol_duration45 = getelementptr inbounds %struct.wpan_phy, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %symbol_duration45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink, ptr %symbol_duration45, align 4
  %49 = load ptr, ptr %1, align 4
  %phy53 = getelementptr inbounds %struct.ieee802154_hw, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %phy53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy53, align 4
  %symbol_duration54 = getelementptr inbounds %struct.wpan_phy, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %symbol_duration54 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %symbol_duration54, align 4
  %conv55 = zext i8 %53 to i16
  %mul = mul nuw nsw i16 %conv55, 40
  %lifs_period = getelementptr inbounds %struct.wpan_phy, ptr %51, i32 0, i32 10
  %54 = ptrtoint ptr %lifs_period to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %mul, ptr %lifs_period, align 2
  %55 = load ptr, ptr %1, align 4
  %phy60 = getelementptr inbounds %struct.ieee802154_hw, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %phy60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy60, align 4
  %symbol_duration61 = getelementptr inbounds %struct.wpan_phy, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %symbol_duration61 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %symbol_duration61, align 4
  %conv62 = zext i8 %59 to i16
  %mul63 = mul nuw nsw i16 %conv62, 12
  %sifs_period = getelementptr inbounds %struct.wpan_phy, ptr %57, i32 0, i32 11
  %60 = ptrtoint ptr %sifs_period to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %mul63, ptr %sifs_period, align 16
  %usb_dev1.i130 = getelementptr inbounds %struct.atusb, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %usb_dev1.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_dev1.i130, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_channel, %if.then.i132)) #7
          to label %do.end.i137 [label %if.then.i132], !srcloc !212

if.then.i132:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i131 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %conv5.i = zext i8 %channel to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i131, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 8, i32 noundef %conv5.i) #7
  br label %do.end.i137

do.end.i137:                                      ; preds = %if.then.i132, %if.end51
  %call6.i133 = tail call fastcc i32 @atusb_read_reg(ptr noundef %1, i8 noundef zeroext 8) #7
  %and.i134 = and i32 %call6.i133, -32
  %63 = and i8 %channel, 31
  %and14.i = zext i8 %63 to i32
  %or.i135 = or i32 %and.i134, %and14.i
  %64 = xor i32 %or.i135, %call6.i133
  %65 = and i32 %64, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i136 = icmp eq i32 %65, 0
  br i1 %cmp.not.i136, label %do.end.i137.cleanup_crit_edge, label %if.then20.i140

do.end.i137.cleanup_crit_edge:                    ; preds = %do.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i140:                                   ; preds = %do.end.i137
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i138 = trunc i32 %or.i135 to i8
  %call21.i139 = tail call fastcc i32 @atusb_write_reg(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %conv16.i138) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i140, %do.end.i137.cleanup_crit_edge, %if.end14.thread.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21.i100, %if.end.cleanup_crit_edge ], [ %call21.i112, %if.end14.cleanup_crit_edge ], [ %call21.i139, %if.then20.i140 ], [ 0, %do.end.i137.cleanup_crit_edge ], [ %call21.i125, %if.end14.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hulusb_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %1, i32 0, i32 4, i32 13
  %2 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %1, i32 0, i32 4, i32 15
  %4 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mbm)
  %cmp3 = icmp eq i32 %7, %mbm
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %usb_dev1.i = getelementptr inbounds %struct.atusb, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %usb_dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hulusb_set_txpower, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %conv5.i = and i32 %i.011, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atusb_write_subreg.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 5, i32 noundef %conv5.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call6.i = tail call fastcc i32 @atusb_read_reg(ptr noundef %9, i8 noundef zeroext 5) #7
  %and.i = and i32 %call6.i, -32
  %and14.i = and i32 %i.011, 31
  %or.i = or i32 %and.i, %and14.i
  %12 = xor i32 %or.i, %call6.i
  %13 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %if.then20.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = trunc i32 %or.i to i8
  %call21.i = tail call fastcc i32 @atusb_write_reg(ptr noundef %9, i8 noundef zeroext 5, i8 noundef zeroext %conv16.i) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21.i, %if.then20.i ], [ 0, %do.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !128, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__initcall__kmod_atusb__360_1172_atusb_driver_init6, !1, !"__initcall__kmod_atusb__360_1172_atusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/atusb.c", i32 1172, i32 1}
!2 = !{ptr @__exitcall_atusb_driver_exit, !1, !"__exitcall_atusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author361, !4, !"__UNIQUE_ID_author361", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/atusb.c", i32 1174, i32 1}
!5 = !{ptr @__UNIQUE_ID_author362, !6, !"__UNIQUE_ID_author362", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/atusb.c", i32 1175, i32 1}
!7 = !{ptr @__UNIQUE_ID_author363, !8, !"__UNIQUE_ID_author363", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/atusb.c", i32 1176, i32 1}
!9 = !{ptr @__UNIQUE_ID_author364, !10, !"__UNIQUE_ID_author364", i1 false, i1 false}
!10 = !{!"../drivers/net/ieee802154/atusb.c", i32 1177, i32 1}
!11 = !{ptr @__UNIQUE_ID_author365, !12, !"__UNIQUE_ID_author365", i1 false, i1 false}
!12 = !{!"../drivers/net/ieee802154/atusb.c", i32 1178, i32 1}
!13 = !{ptr @__UNIQUE_ID_description366, !14, !"__UNIQUE_ID_description366", i1 false, i1 false}
!14 = !{!"../drivers/net/ieee802154/atusb.c", i32 1179, i32 1}
!15 = !{ptr @__UNIQUE_ID_file367, !16, !"__UNIQUE_ID_file367", i1 false, i1 false}
!16 = !{!"../drivers/net/ieee802154/atusb.c", i32 1180, i32 1}
!17 = !{ptr @__UNIQUE_ID_license368, !16, !"__UNIQUE_ID_license368", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @atusb_driver, !20, !"atusb_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ieee802154/atusb.c", i32 1166, i32 26}
!21 = !{ptr @atusb_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ieee802154/atusb.c", i32 1037, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atusb_probe.__key.2, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ieee802154/atusb.c", i32 1065, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @atusb_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @atusb_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ieee802154/atusb.c", i32 1113, i32 2}
!36 = !{ptr @atusb_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @atusb_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @atusb_ops, !39, !"atusb_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ieee802154/atusb.c", i32 779, i32 36}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ieee802154/atusb.c", i32 460, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atusb_start.__UNIQUE_ID_ddebug356, !41, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ieee802154/atusb.c", i32 474, i32 2}
!46 = !{ptr @atusb_stop.__UNIQUE_ID_ddebug357, !45, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ieee802154/atusb.c", i32 389, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @atusb_xmit.__UNIQUE_ID_ddebug354, !48, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ieee802154/atusb.c", i32 400, i32 2}
!53 = !{ptr @atusb_xmit.__UNIQUE_ID_ddebug355, !52, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ieee802154/atusb.c", i32 380, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @atusb_xmit_complete.__UNIQUE_ID_ddebug353, !55, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ieee802154/atusb.c", i32 159, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @atusb_write_subreg.__UNIQUE_ID_ddebug345, !59, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ieee802154/atusb.c", i32 137, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @atusb_read_reg.__UNIQUE_ID_ddebug344, !63, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ieee802154/atusb.c", i32 100, i32 3}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atusb_control_msg._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @atusb_control_msg._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ieee802154/atusb.c", i32 253, i32 2}
!73 = !{ptr @atusb_work_urbs._rs, !72, !"_rs", i1 false, i1 false}
!74 = !{ptr @__func__.atusb_work_urbs, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @atusb_work_urbs._entry, !72, !"_entry", i1 false, i1 false}
!78 = !{ptr @atusb_work_urbs._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @atusb_submit_rx_urb._rs, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../drivers/net/ieee802154/atusb.c", i32 213, i32 4}
!81 = !{ptr @__func__.atusb_submit_rx_urb, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @atusb_submit_rx_urb._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @atusb_submit_rx_urb._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ieee802154/atusb.c", i32 326, i32 2}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @atusb_in.__UNIQUE_ID_ddebug351, !86, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ieee802154/atusb.c", i32 334, i32 3}
!91 = !{ptr @atusb_in.__UNIQUE_ID_ddebug352, !90, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ieee802154/atusb.c", i32 290, i32 3}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @atusb_in_good.__UNIQUE_ID_ddebug347, !93, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ieee802154/atusb.c", i32 302, i32 3}
!98 = !{ptr @atusb_in_good.__UNIQUE_ID_ddebug348, !97, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ieee802154/atusb.c", i32 308, i32 3}
!101 = !{ptr @atusb_in_good.__UNIQUE_ID_ddebug349, !100, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ieee802154/atusb.c", i32 313, i32 2}
!104 = !{ptr @atusb_in_good.__UNIQUE_ID_ddebug350, !103, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ieee802154/atusb.c", i32 266, i32 2}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @atusb_tx_done.__UNIQUE_ID_ddebug346, !106, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!109 = !{ptr @init_usb_anchor.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!111 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @init_usb_anchor.__key.41, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ieee802154/atusb.c", i32 111, i32 2}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @atusb_command.__UNIQUE_ID_ddebug342, !116, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ieee802154/atusb.c", i32 910, i32 3}
!121 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @atusb_get_and_conf_chip._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @atusb_get_and_conf_chip._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ieee802154/atusb.c", i32 918, i32 10}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ieee802154/atusb.c", i32 928, i32 10}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ieee802154/atusb.c", i32 938, i32 10}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ieee802154/atusb.c", i32 951, i32 3}
!132 = !{ptr @atusb_get_and_conf_chip._entry.50, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @atusb_get_and_conf_chip._entry_ptr.52, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ieee802154/atusb.c", i32 960, i32 2}
!136 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @atusb_get_and_conf_chip._entry.53, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @atusb_get_and_conf_chip._entry_ptr.56, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @atusb_powers, !140, !"atusb_powers", i1 false, i1 false}
!140 = !{!"../drivers/net/ieee802154/atusb.c", i32 481, i32 18}
!141 = !{ptr @atusb_ed_levels, !142, !"atusb_ed_levels", i1 false, i1 false}
!142 = !{!"../drivers/net/ieee802154/atusb.c", i32 525, i32 18}
!143 = !{ptr @at86rf212_powers, !144, !"at86rf212_powers", i1 false, i1 false}
!144 = !{!"../drivers/net/ieee802154/atusb.c", i32 531, i32 18}
!145 = !{ptr @at86rf212_ed_levels_100, !146, !"at86rf212_ed_levels_100", i1 false, i1 false}
!146 = !{!"../drivers/net/ieee802154/atusb.c", i32 538, i32 18}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ieee802154/atusb.c", i32 822, i32 14}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ieee802154/atusb.c", i32 826, i32 14}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ieee802154/atusb.c", i32 830, i32 14}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ieee802154/atusb.c", i32 834, i32 14}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ieee802154/atusb.c", i32 840, i32 3}
!157 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @atusb_get_and_show_revision._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @atusb_get_and_show_revision._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ieee802154/atusb.c", i32 846, i32 3}
!162 = !{ptr @atusb_get_and_show_revision._entry.63, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @atusb_get_and_show_revision._entry_ptr.65, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ieee802154/atusb.c", i32 849, i32 3}
!166 = !{ptr @atusb_get_and_show_revision._entry.66, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @atusb_get_and_show_revision._entry_ptr.68, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @atusb_chip_data, !169, !"atusb_chip_data", i1 false, i1 false}
!169 = !{!"../drivers/net/ieee802154/atusb.c", i32 765, i32 31}
!170 = !{ptr @hulusb_chip_data, !171, !"hulusb_chip_data", i1 false, i1 false}
!171 = !{!"../drivers/net/ieee802154/atusb.c", i32 772, i32 31}
!172 = !{ptr @at86rf212_ed_levels_98, !173, !"at86rf212_ed_levels_98", i1 false, i1 false}
!173 = !{!"../drivers/net/ieee802154/atusb.c", i32 543, i32 18}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ieee802154/atusb.c", i32 871, i32 3}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @atusb_get_and_show_build._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @atusb_get_and_show_build._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ieee802154/atusb.c", i32 994, i32 3}
!181 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @atusb_set_extended_addr._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @atusb_set_extended_addr._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ieee802154/atusb.c", i32 1003, i32 3}
!186 = !{ptr @atusb_set_extended_addr._entry.73, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @atusb_set_extended_addr._entry_ptr.75, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ieee802154/atusb.c", i32 1008, i32 3}
!190 = !{ptr @atusb_set_extended_addr._entry.76, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @atusb_set_extended_addr._entry_ptr.78, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ieee802154/atusb.c", i32 120, i32 2}
!194 = !{ptr @atusb_write_reg.__UNIQUE_ID_ddebug343, !193, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ieee802154/atusb.c", i32 1131, i32 2}
!197 = !{ptr @atusb_disconnect.__UNIQUE_ID_ddebug358, !196, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ieee802154/atusb.c", i32 1149, i32 2}
!200 = !{ptr @atusb_disconnect.__UNIQUE_ID_ddebug359, !199, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!201 = !{ptr @atusb_device_table, !202, !"atusb_device_table", i1 false, i1 false}
!202 = !{!"../drivers/net/ieee802154/atusb.c", i32 1153, i32 35}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2148721228, i64 2148721233, i64 2148721246, i64 2148721290, i64 2148721324, i64 2148721345}
!213 = !{!"auto-init"}
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i8 0, i8 2}
