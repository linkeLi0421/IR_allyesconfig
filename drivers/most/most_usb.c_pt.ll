; ModuleID = '/llk/IR_all_yes/drivers/most/most_usb.c_pt.bc'
source_filename = "../drivers/most/most_usb.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.regs = type { ptr, i16 }
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
%struct.most_dev = type { %struct.device, ptr, %struct.most_interface, ptr, ptr, ptr, ptr, [80 x i8], [30 x [10 x i8]], [30 x %struct.spinlock], [30 x i8], [30 x i8], [30 x %struct.clear_hold_work], ptr, %struct.mutex, %struct.timer_list, %struct.work_struct, ptr }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clear_hold_work = type { %struct.work_struct, ptr, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.most_channel_capability = type { i16, i16, i16, i16, i16, i16, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.most_dci_obj = type { %struct.device, ptr, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_most_usb__346_1168_hdm_usb_init6 = internal global ptr @hdm_usb_init, section ".initcall6.init", align 4
@hdm_usb = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @hdm_probe, ptr @hdm_disconnect, ptr null, ptr @hdm_suspend, ptr @hdm_resume, ptr null, ptr null, ptr null, ptr @usbid, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_hdm_usb_exit = internal global ptr @hdm_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file347 = internal constant [36 x i8] c"most_usb.file=drivers/most/most_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [21 x i8] c"most_usb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author349 = internal constant [64 x i8] c"most_usb.author=Christian Gromm <christian.gromm@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description350 = internal constant [31 x i8] c"most_usb.description=HDM_4_USB\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"most_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdm_usb\00", [24 x i8] zeroinitializer }, align 32
@usbid = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 -12520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 -12519, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 -12496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hdm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mdev->io_mutex\00", [16 x i8] zeroinitializer }, align 32
@hdm_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&mdev->poll_work_obj)\00", [56 x i8] zeroinitializer }, align 32
@hdm_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&mdev->link_stat_timer)\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d-%s:%d.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%02x\00", [25 x i8] zeroinitializer }, align 32
@hdm_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mdev->channel_lock[i]\00", [41 x i8] zeroinitializer }, align 32
@hdm_probe.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdm_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/most/most_usb.c\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@hdm_probe.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.14, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"device path: /sys/bus/usb/devices/%d-%s:%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dci\00", [28 x i8] zeroinitializer }, align 32
@dci_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dci_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wq_netinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.12, i32 692, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Vendor request 'hw_addr_hi' failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wq_netinfo\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wq_netinfo._entry_ptr = internal global ptr @wq_netinfo._entry, section ".printk_index", align 4
@wq_netinfo._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.12, i32 697, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vendor request 'hw_addr_mid' failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wq_netinfo._entry_ptr.22 = internal global ptr @wq_netinfo._entry.20, section ".printk_index", align 4
@wq_netinfo._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.12, i32 702, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vendor request 'hw_addr_low' failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wq_netinfo._entry_ptr.25 = internal global ptr @wq_netinfo._entry.23, section ".printk_index", align 4
@wq_netinfo._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.12, i32 707, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vendor request 'link status' failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wq_netinfo._entry_ptr.28 = internal global ptr @wq_netinfo._entry.26, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hdm_configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.12, i32 575, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad config pointer.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdm_configure_channel\00", [42 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr = internal global ptr @hdm_configure_channel._entry, section ".printk_index", align 4
@hdm_configure_channel._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.12, i32 579, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel ID out of range.\0A\00", [38 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr.33 = internal global ptr @hdm_configure_channel._entry.31, section ".printk_index", align 4
@hdm_configure_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&mdev->clear_work[channel].ws)\00", [47 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.12, i32 589, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Misconfig: buffer size or #buffers zero.\0A\00", [54 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr.37 = internal global ptr @hdm_configure_channel._entry.35, section ".printk_index", align 4
@hdm_configure_channel._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.12, i32 609, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Misconfig: frame size wrong\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr.41 = internal global ptr @hdm_configure_channel._entry.38, section ".printk_index", align 4
@hdm_configure_channel._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.30, ptr @.str.12, i32 620, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: fixed buffer size (%d -> %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr.44 = internal global ptr @hdm_configure_channel._entry.42, section ".printk_index", align 4
@hdm_configure_channel._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.30, ptr @.str.12, i32 632, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sync for ep%02x failed\00", [41 x i8] zeroinitializer }, align 32
@hdm_configure_channel._entry_ptr.47 = internal global ptr @hdm_configure_channel._entry.45, section ".printk_index", align 4
@wq_clear_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.12, i32 741, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset endpoint.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wq_clear_halt\00", [18 x i8] zeroinitializer }, align 32
@wq_clear_halt._entry_ptr = internal global ptr @wq_clear_halt._entry, section ".printk_index", align 4
@get_stream_frame_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.12, i32 200, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Misconfig: Subbuffer size zero.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_stream_frame_size\00", [42 x i8] zeroinitializer }, align 32
@get_stream_frame_size._entry_ptr = internal global ptr @get_stream_frame_size._entry, section ".printk_index", align 4
@get_stream_frame_size._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.12, i32 209, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Misconfig: Packets per XACT zero\0A\00", [62 x i8] zeroinitializer }, align 32
@get_stream_frame_size._entry_ptr.54 = internal global ptr @get_stream_frame_size._entry.52, section ".printk_index", align 4
@get_stream_frame_size._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.12, i32 218, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Query frame size of non-streaming channel\0A\00", [53 x i8] zeroinitializer }, align 32
@get_stream_frame_size._entry_ptr.57 = internal global ptr @get_stream_frame_size._entry.55, section ".printk_index", align 4
@hdm_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.12, i32 521, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"URB submit failed with error %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdm_enqueue\00", [20 x i8] zeroinitializer }, align 32
@hdm_enqueue._entry_ptr = internal global ptr @hdm_enqueue._entry, section ".printk_index", align 4
@hdm_add_padding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.12, i32 288, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missed minimal transfer unit.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdm_add_padding\00", [16 x i8] zeroinitializer }, align 32
@hdm_add_padding._entry_ptr = internal global ptr @hdm_add_padding._entry, section ".printk_index", align 4
@hdm_write_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.12, i32 362, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Broken pipe on ep%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdm_write_completion\00", [43 x i8] zeroinitializer }, align 32
@hdm_write_completion._entry_ptr = internal global ptr @hdm_write_completion._entry, section ".printk_index", align 4
@hdm_read_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.12, i32 419, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdm_read_completion\00", [44 x i8] zeroinitializer }, align 32
@hdm_read_completion._entry_ptr = internal global ptr @hdm_read_completion._entry, section ".printk_index", align 4
@hdm_read_completion._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.12, i32 430, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Babble on ep%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@hdm_read_completion._entry_ptr.67 = internal global ptr @hdm_read_completion._entry.65, section ".printk_index", align 4
@hdm_poison_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.68, ptr @.str.12, i32 243, ptr @.str.40, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdm_poison_channel\00", [45 x i8] zeroinitializer }, align 32
@hdm_poison_channel._entry_ptr = internal global ptr @hdm_poison_channel._entry, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@dci_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dci_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dci_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @dev_attr_ni_state, ptr @dev_attr_packet_bandwidth, ptr @dev_attr_node_address, ptr @dev_attr_node_position, ptr @dev_attr_sync_ep, ptr @dev_attr_mep_filter, ptr @dev_attr_mep_hash0, ptr @dev_attr_mep_hash1, ptr @dev_attr_mep_hash2, ptr @dev_attr_mep_hash3, ptr @dev_attr_mep_eui48_hi, ptr @dev_attr_mep_eui48_mi, ptr @dev_attr_mep_eui48_lo, ptr @dev_attr_arb_address, ptr @dev_attr_arb_value, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_ni_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_packet_bandwidth = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_node_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_node_position = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sync_ep = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_filter = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_hash0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_hash1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_hash2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_hash3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_eui48_hi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_eui48_mi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mep_eui48_lo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_arb_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_arb_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @value_show, ptr @value_store }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ni_state\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arb_address\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arb_value\00", [22 x i8] zeroinitializer }, align 32
@ro_regs = internal constant { [4 x %struct.regs], [32 x i8] } { [4 x %struct.regs] [%struct.regs { ptr @.str.72, i16 256 }, %struct.regs { ptr @.str.76, i16 257 }, %struct.regs { ptr @.str.77, i16 258 }, %struct.regs { ptr @.str.78, i16 259 }], [32 x i8] zeroinitializer }, align 32
@rw_regs = internal constant { [8 x %struct.regs], [32 x i8] } { [8 x %struct.regs] [%struct.regs { ptr @.str.79, i16 320 }, %struct.regs { ptr @.str.80, i16 321 }, %struct.regs { ptr @.str.81, i16 322 }, %struct.regs { ptr @.str.82, i16 323 }, %struct.regs { ptr @.str.83, i16 324 }, %struct.regs { ptr @.str.84, i16 325 }, %struct.regs { ptr @.str.85, i16 326 }, %struct.regs { ptr @.str.86, i16 327 }], [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"packet_bandwidth\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"node_address\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"node_position\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mep_filter\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mep_hash0\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mep_hash1\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mep_hash2\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mep_hash3\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mep_eui48_hi\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mep_eui48_mi\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mep_eui48_lo\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sync_ep\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 6351, i64 6607, i64 12495]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967277]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967221, i64 4294967225, i64 4294967264, i64 4294967277]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 32]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"hdm_usb\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1159, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1168, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1160, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"usbid\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 776, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 969, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 970, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 971, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 990, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1025, i32 49 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1041, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1043, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1049, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1071, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"dci_groups\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 692, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 697, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 702, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 707, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 575, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 579, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 586, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 589, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 609, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 619, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 632, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 741, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 200, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 209, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 218, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 520, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 287, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 360, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 418, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 429, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 243, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1367, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1368, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [10 x i8] c"dci_group\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 918, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [10 x i8] c"dci_attrs\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 899, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"dev_attr_ni_state\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [26 x i8] c"dev_attr_packet_bandwidth\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 884, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant [22 x i8] c"dev_attr_node_address\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 885, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant [23 x i8] c"dev_attr_node_position\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 886, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"dev_attr_sync_ep\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c"dev_attr_mep_filter\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 888, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant [19 x i8] c"dev_attr_mep_hash0\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 889, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"dev_attr_mep_hash1\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 890, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant [19 x i8] c"dev_attr_mep_hash2\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 891, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"dev_attr_mep_hash3\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 892, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant [22 x i8] c"dev_attr_mep_eui48_hi\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 893, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant [22 x i8] c"dev_attr_mep_eui48_mi\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 894, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant [22 x i8] c"dev_attr_mep_eui48_lo\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 895, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant [21 x i8] c"dev_attr_arb_address\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 896, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant [19 x i8] c"dev_attr_arb_value\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 897, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 883, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 833, i32 24 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 834, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 836, i32 24 }
@___asan_gen_.389 = private unnamed_addr constant [8 x i8] c"ro_regs\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 789, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant [8 x i8] c"rw_regs\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 796, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 791, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 792, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 793, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 797, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 798, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 799, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 800, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 801, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 802, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 803, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 804, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [27 x i8] c"../drivers/most/most_usb.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 887, i32 8 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__exitcall_hdm_usb_exit, ptr @__initcall__kmod_most_usb__346_1168_hdm_usb_init6, ptr @get_stream_frame_size._entry, ptr @get_stream_frame_size._entry.52, ptr @get_stream_frame_size._entry.55, ptr @get_stream_frame_size._entry_ptr, ptr @get_stream_frame_size._entry_ptr.54, ptr @get_stream_frame_size._entry_ptr.57, ptr @hdm_add_padding._entry, ptr @hdm_add_padding._entry_ptr, ptr @hdm_configure_channel._entry, ptr @hdm_configure_channel._entry.31, ptr @hdm_configure_channel._entry.35, ptr @hdm_configure_channel._entry.38, ptr @hdm_configure_channel._entry.42, ptr @hdm_configure_channel._entry.45, ptr @hdm_configure_channel._entry_ptr, ptr @hdm_configure_channel._entry_ptr.33, ptr @hdm_configure_channel._entry_ptr.37, ptr @hdm_configure_channel._entry_ptr.41, ptr @hdm_configure_channel._entry_ptr.44, ptr @hdm_configure_channel._entry_ptr.47, ptr @hdm_enqueue._entry, ptr @hdm_enqueue._entry_ptr, ptr @hdm_poison_channel._entry, ptr @hdm_poison_channel._entry_ptr, ptr @hdm_read_completion._entry, ptr @hdm_read_completion._entry.65, ptr @hdm_read_completion._entry_ptr, ptr @hdm_read_completion._entry_ptr.67, ptr @hdm_usb_exit, ptr @hdm_write_completion._entry, ptr @hdm_write_completion._entry_ptr, ptr @wq_clear_halt._entry, ptr @wq_clear_halt._entry_ptr, ptr @wq_netinfo._entry, ptr @wq_netinfo._entry.20, ptr @wq_netinfo._entry.23, ptr @wq_netinfo._entry.26, ptr @wq_netinfo._entry_ptr, ptr @wq_netinfo._entry_ptr.22, ptr @wq_netinfo._entry_ptr.25, ptr @wq_netinfo._entry_ptr.28, ptr @hdm_usb, ptr @.str, ptr @.str.1, ptr @usbid, ptr @hdm_probe.__key, ptr @.str.2, ptr @hdm_probe.__key.3, ptr @.str.4, ptr @hdm_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hdm_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dci_groups, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @hdm_configure_channel.__key, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @init_usb_anchor.__key, ptr @.str.69, ptr @init_usb_anchor.__key.70, ptr @.str.71, ptr @dci_group, ptr @dci_attrs, ptr @dev_attr_ni_state, ptr @dev_attr_packet_bandwidth, ptr @dev_attr_node_address, ptr @dev_attr_node_position, ptr @dev_attr_sync_ep, ptr @dev_attr_mep_filter, ptr @dev_attr_mep_hash0, ptr @dev_attr_mep_hash1, ptr @dev_attr_mep_hash2, ptr @dev_attr_mep_hash3, ptr @dev_attr_mep_eui48_hi, ptr @dev_attr_mep_eui48_mi, ptr @dev_attr_mep_eui48_lo, ptr @dev_attr_arb_address, ptr @dev_attr_arb_value, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @ro_regs, ptr @rw_regs, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_usb to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbid to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dci_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq_netinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq_netinfo._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq_netinfo._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq_netinfo._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_configure_channel._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq_clear_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_stream_frame_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_stream_frame_size._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_stream_frame_size._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_add_padding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_write_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_read_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_read_completion._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdm_poison_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dci_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dci_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ni_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_packet_bandwidth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_position to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sync_ep to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_filter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_hash0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_hash1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_hash2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_hash3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_eui48_hi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_eui48_mi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mep_eui48_lo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_arb_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_arb_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ro_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_usb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @hdm_usb, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdm_usb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @hdm_usb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4640) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %7)
  %cmp = icmp ugt i8 %7, 30
  br i1 %cmp, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %io_mutex = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @hdm_probe.__key) #10
  %poll_work_obj = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %poll_work_obj, i32 noundef 0) #10
  %8 = ptrtoint ptr %poll_work_obj to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %poll_work_obj, align 8
  %lockdep_map = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @hdm_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry10 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry10, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 16, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wq_netinfo, ptr %func, align 4
  %link_stat_timer = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %link_stat_timer, ptr noundef nonnull @link_stat_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @hdm_probe.__key.5) #10
  %usb_device = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %usb_device to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %usb_device, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 200
  %expires = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %expires, align 8
  %iface = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2
  %mod = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mod, align 4
  %16 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %iface, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %driver_dev = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %driver_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev21, ptr %driver_dev, align 8
  %interface24 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %interface24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %interface24, align 8
  %configure = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %configure to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hdm_configure_channel, ptr %configure, align 8
  %request_netinfo = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %request_netinfo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hdm_request_netinfo, ptr %request_netinfo, align 4
  %enqueue = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @hdm_enqueue, ptr %enqueue, align 4
  %poison_channel = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %poison_channel to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hdm_poison_channel, ptr %poison_channel, align 8
  %dma_alloc = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %dma_alloc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hdm_dma_alloc, ptr %dma_alloc, align 8
  %dma_free = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %dma_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hdm_dma_free, ptr %dma_free, align 4
  %description = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 7
  %description32 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %description32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %description, ptr %description32, align 4
  %num_channels = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %num_channels, align 8
  %bus = getelementptr i8, ptr %3, i32 -64
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %busnum, align 4
  %devpath = getelementptr i8, ptr %3, i32 -124
  %config = getelementptr i8, ptr %3, i32 952
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 8
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bConfigurationValue, align 1
  %conv38 = zext i8 %34 to i32
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bInterfaceNumber, align 2
  %conv40 = zext i8 %36 to i32
  %call41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %description, i32 noundef 80, ptr noundef nonnull @.str.7, i32 noundef %30, ptr noundef %devpath, i32 noundef %conv38, i32 noundef %conv40)
  %init_name = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %description, ptr %init_name, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev21, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %39 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @release_mdev, ptr %release, align 4
  %40 = mul nuw nsw i32 %conv, 20
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #14
  %conf485 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %conf485 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i.i, ptr %conf485, align 4
  %tobool50.not486 = icmp eq ptr %call8.i.i, null
  br i1 %tobool50.not486, label %do.body.err_free_mdev_crit_edge, label %kcalloc.exit367.thread

do.body.err_free_mdev_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mdev

kcalloc.exit367.thread:                           ; preds = %do.body
  %42 = shl nuw nsw i32 %conv, 4
  %call8.i.i364 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #14
  %cap506 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cap506 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i364, ptr %cap506, align 8
  %tobool55.not507 = icmp eq ptr %call8.i.i364, null
  br i1 %tobool55.not507, label %kcalloc.exit367.thread.err_free_conf_crit_edge, label %if.end57.thread508

kcalloc.exit367.thread.err_free_conf_crit_edge:   ; preds = %kcalloc.exit367.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_conf

if.end57.thread508:                               ; preds = %kcalloc.exit367.thread
  %channel_vector512 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %channel_vector512 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i364, ptr %channel_vector512, align 4
  %call8.i.i397 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #14
  %ep_address538 = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %ep_address538 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i.i397, ptr %ep_address538, align 4
  %tobool62.not539 = icmp eq ptr %call8.i.i397, null
  br i1 %tobool62.not539, label %if.end57.thread508.err_free_cap_crit_edge, label %if.end7.i.i431

if.end57.thread508.err_free_cap_crit_edge:        ; preds = %if.end57.thread508
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_cap

if.end7.i.i431:                                   ; preds = %if.end57.thread508
  %46 = mul nuw nsw i32 %conv, 112
  %call8.i.i430 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #14
  %busy_urbs = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i430, ptr %busy_urbs, align 8
  %tobool67.not = icmp eq ptr %call8.i.i430, null
  br i1 %tobool67.not, label %if.end7.i.i431.err_free_ep_address_crit_edge, label %if.end69

if.end7.i.i431.err_free_ep_address_crit_edge:     ; preds = %if.end7.i.i431
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_ep_address

if.end69:                                         ; preds = %if.end7.i.i431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp71476.not = icmp eq i8 %7, 0
  br i1 %cmp71476.not, label %if.end69.do.body99_crit_edge, label %for.body.lr.ph

if.end69.do.body99_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

for.body.lr.ph:                                   ; preds = %if.end69
  %48 = ptrtoint ptr %cap506 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cap506, align 8
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tmp_cap.0478 = phi ptr [ %49, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0477 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %50 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %51, i32 %i.0477, i32 0, i32 2
  %52 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEndpointAddress, align 1
  %54 = ptrtoint ptr %ep_address538 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep_address538, align 4
  %arrayidx75 = getelementptr i8, ptr %55, i32 %i.0477
  %56 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %53, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr %struct.most_dev, ptr %call7.i.i, i32 0, i32 10, i32 %i.0477
  %57 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr %struct.most_dev, ptr %call7.i.i, i32 0, i32 11, i32 %i.0477
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayidx77, align 1
  %arrayidx78 = getelementptr %struct.most_dev, ptr %call7.i.i, i32 0, i32 8, i32 %i.0477
  %59 = load ptr, ptr %ep_address538, align 4
  %arrayidx81 = getelementptr i8, ptr %59, i32 %i.0477
  %60 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %61 to i32
  %call83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx78, i32 noundef 10, ptr noundef nonnull @.str.8, i32 noundef %conv82)
  %name_suffix = getelementptr inbounds %struct.most_channel_capability, ptr %tmp_cap.0478, i32 0, i32 6
  %62 = ptrtoint ptr %name_suffix to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx78, ptr %name_suffix, align 4
  %num_buffers_packet = getelementptr inbounds %struct.most_channel_capability, ptr %tmp_cap.0478, i32 0, i32 2
  %data_type = getelementptr inbounds %struct.most_channel_capability, ptr %tmp_cap.0478, i32 0, i32 1
  %63 = ptrtoint ptr %num_buffers_packet to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 -1, ptr %num_buffers_packet, align 4
  %64 = ptrtoint ptr %data_type to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 39, ptr %data_type, align 2
  %65 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %tobool88.not = icmp sgt i8 %66, -1
  %. = select i1 %tobool88.not, i16 2, i16 1
  %67 = ptrtoint ptr %tmp_cap.0478 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %., ptr %tmp_cap.0478, align 4
  %incdec.ptr = getelementptr %struct.most_channel_capability, ptr %tmp_cap.0478, i32 1
  %68 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %busy_urbs, align 8
  %arrayidx93 = getelementptr %struct.usb_anchor, ptr %69, i32 %i.0477
  %70 = getelementptr inbounds i8, ptr %arrayidx93, i32 8
  %71 = call ptr @memset(ptr %70, i32 0, i32 104)
  %72 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx93, ptr %arrayidx93, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx93, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx93, ptr %prev.i.i, align 4
  %wait.i = getelementptr %struct.usb_anchor, ptr %69, i32 %i.0477, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i = getelementptr %struct.usb_anchor, ptr %69, i32 %i.0477, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_usb_anchor.__key.70, i16 noundef signext 3) #10
  %arrayidx95 = getelementptr %struct.most_dev, ptr %call7.i.i, i32 0, i32 9, i32 %i.0477
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx95, ptr noundef nonnull @.str.10, ptr noundef nonnull @hdm_probe.__key.9, i16 noundef signext 3) #10
  %inc = add nuw nsw i32 %i.0477, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.do.body99_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.do.body99_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

do.body99:                                        ; preds = %for.body.do.body99_crit_edge, %if.end69.do.body99_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdm_probe.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdm_probe, %if.then104)) #10
          to label %do.body113 [label %if.then104], !srcloc !222

if.then104:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %idVendor = getelementptr i8, ptr %3, i32 936
  %74 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %idVendor, align 8
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %conv105 = zext i16 %76 to i32
  %idProduct = getelementptr i8, ptr %3, i32 938
  %77 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %idProduct, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %conv107 = zext i16 %79 to i32
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 8
  %busnum109 = getelementptr inbounds %struct.usb_bus, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %busnum109 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %busnum109, align 4
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdm_probe.__UNIQUE_ID_ddebug344, ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %83, i32 noundef %85) #10
  br label %do.body113

do.body113:                                       ; preds = %if.then104, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdm_probe.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdm_probe, %if.then125)) #10
          to label %do.end139 [label %if.then125], !srcloc !222

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus, align 8
  %busnum127 = getelementptr inbounds %struct.usb_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %busnum127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %busnum127, align 4
  %90 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config, align 8
  %bConfigurationValue132 = getelementptr inbounds %struct.usb_config_descriptor, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %bConfigurationValue132 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bConfigurationValue132, align 1
  %conv133 = zext i8 %93 to i32
  %94 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bInterfaceNumber, align 2
  %conv136 = zext i8 %95 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdm_probe.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %89, ptr noundef %devpath, i32 noundef %conv133, i32 noundef %conv136) #10
  br label %do.end139

do.end139:                                        ; preds = %if.then125, %do.body113
  %call141 = tail call i32 @most_register_interface(ptr noundef %iface) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %do.end139.err_free_busy_urbs_crit_edge

do.end139.err_free_busy_urbs_crit_edge:           ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_busy_urbs

if.end144:                                        ; preds = %do.end139
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %idProduct147 = getelementptr i8, ptr %3, i32 938
  %96 = ptrtoint ptr %idProduct147 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %idProduct147, align 2
  %98 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i16 %97, label %if.end144.if.end195_crit_edge [
    i16 6351, label %if.end144.if.then162_crit_edge
    i16 6607, label %if.end144.if.then162_crit_edge554
    i16 12495, label %if.end144.if.then162_crit_edge555
  ]

if.end144.if.then162_crit_edge555:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then162

if.end144.if.then162_crit_edge554:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then162

if.end144.if.then162_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then162

if.end144.if.end195_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then162:                                       ; preds = %if.end144.if.then162_crit_edge, %if.end144.if.then162_crit_edge554, %if.end144.if.then162_crit_edge555
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i436 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3520, i32 noundef 936) #13
  %dci = getelementptr inbounds %struct.most_dev, ptr %call7.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %dci to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i436, ptr %dci, align 8
  %tobool165.not = icmp eq ptr %call7.i.i436, null
  br i1 %tobool165.not, label %if.then166, label %if.end169

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  tail call void @most_deregister_interface(ptr noundef %iface) #10
  br label %err_free_busy_urbs

if.end169:                                        ; preds = %if.then162
  %init_name172 = getelementptr inbounds %struct.device, ptr %call7.i.i436, i32 0, i32 3
  %101 = ptrtoint ptr %init_name172 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.15, ptr %init_name172, align 8
  %102 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iface, align 4
  %call175 = tail call ptr @get_device(ptr noundef %103) #10
  %104 = ptrtoint ptr %dci to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dci, align 8
  %parent178 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %parent178 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call175, ptr %parent178, align 8
  %107 = load ptr, ptr %dci, align 8
  %groups = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 34
  %108 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @dci_groups, ptr %groups, align 8
  %109 = load ptr, ptr %dci, align 8
  %release183 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 35
  %110 = ptrtoint ptr %release183 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @release_dci, ptr %release183, align 4
  %111 = load ptr, ptr %dci, align 8
  %call186 = tail call i32 @device_register(ptr noundef %111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end191, label %if.then188

if.then188:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  tail call void @most_deregister_interface(ptr noundef %iface) #10
  %112 = ptrtoint ptr %dci to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dci, align 8
  tail call void @put_device(ptr noundef %113) #10
  br label %err_free_busy_urbs

if.end191:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb_device, align 8
  %116 = ptrtoint ptr %dci to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dci, align 8
  %usb_device194 = getelementptr inbounds %struct.most_dci_obj, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %usb_device194 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %usb_device194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.end191, %if.end144.if.end195_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

err_free_busy_urbs:                               ; preds = %if.then188, %if.then166, %do.end139.err_free_busy_urbs_crit_edge
  %ret.0 = phi i32 [ %call141, %do.end139.err_free_busy_urbs_crit_edge ], [ -12, %if.then188 ], [ -12, %if.then166 ]
  %119 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %busy_urbs, align 8
  tail call void @kfree(ptr noundef %120) #10
  br label %err_free_ep_address

err_free_ep_address:                              ; preds = %err_free_busy_urbs, %if.end7.i.i431.err_free_ep_address_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_busy_urbs ], [ -12, %if.end7.i.i431.err_free_ep_address_crit_edge ]
  %121 = ptrtoint ptr %ep_address538 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ep_address538, align 4
  tail call void @kfree(ptr noundef %122) #10
  br label %err_free_cap

err_free_cap:                                     ; preds = %err_free_ep_address, %if.end57.thread508.err_free_cap_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_ep_address ], [ -12, %if.end57.thread508.err_free_cap_crit_edge ]
  %123 = ptrtoint ptr %cap506 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cap506, align 8
  tail call void @kfree(ptr noundef %124) #10
  br label %err_free_conf

err_free_conf:                                    ; preds = %err_free_cap, %kcalloc.exit367.thread.err_free_conf_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_cap ], [ -12, %kcalloc.exit367.thread.err_free_conf_crit_edge ]
  %125 = ptrtoint ptr %conf485 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %conf485, align 4
  tail call void @kfree(ptr noundef %126) #10
  br label %err_free_mdev

err_free_mdev:                                    ; preds = %err_free_conf, %do.body.err_free_mdev_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_conf ], [ -12, %do.body.err_free_mdev_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_mdev, %if.end195, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %ret.4, %err_free_mdev ], [ 0, %if.end195 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdm_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %usb_device = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %usb_device to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %usb_device, align 8
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %link_stat_timer = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 15
  %call2 = tail call i32 @del_timer_sync(ptr noundef %link_stat_timer) #10
  %poll_work_obj = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 16
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %poll_work_obj) #10
  %dci = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dci, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @device_unregister(ptr noundef nonnull %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iface = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2
  tail call void @most_deregister_interface(ptr noundef %iface) #10
  %busy_urbs = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %busy_urbs, align 8
  tail call void @kfree(ptr noundef %7) #10
  %cap = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cap, align 8
  tail call void @kfree(ptr noundef %9) #10
  %conf = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf, align 4
  tail call void @kfree(ptr noundef %11) #10
  %ep_address = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ep_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep_address, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %dci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dci, align 8
  tail call void @put_device(ptr noundef %15) #10
  tail call void @put_device(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %num_channels = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iface = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2
  %busy_urbs = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @most_stop_enqueue(ptr noundef %iface, i32 noundef %i.011) #10
  %4 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %busy_urbs, align 8
  %arrayidx = getelementptr %struct.usb_anchor, ptr %5, i32 %i.011
  tail call void @usb_kill_anchored_urbs(ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.011, 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %num_channels = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iface = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @most_resume_enqueue(ptr noundef %iface, i32 noundef %i.09) #10
  %inc = add nuw i32 %i.09, 1
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wq_netinfo(ptr noundef %wq_obj) #2 align 64 {
entry:
  %hw_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_device1 = getelementptr i8, ptr %wq_obj, i32 -3664
  %0 = ptrtoint ptr %usb_device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_device1, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hw_addr) #10
  %2 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %drci_rd_reg.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

drci_rd_reg.exit:                                 ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3.i, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 325, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 2, i32 noundef 5000) #10
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call7.i.i.i, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool.not = icmp sgt i32 %call4.i, -1
  br i1 %tobool.not, label %if.end, label %drci_rd_reg.exit.do.end_crit_edge

drci_rd_reg.exit.do.end_crit_edge:                ; preds = %drci_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %drci_rd_reg.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end:                                           ; preds = %drci_rd_reg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not.i62 = icmp eq ptr %call7.i.i.i61, null
  br i1 %tobool.not.i62, label %if.end.do.end8_crit_edge, label %drci_rd_reg.exit68

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

drci_rd_reg.exit68:                               ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %shl.i.i63 = shl i32 %15, 8
  %or3.i64 = or i32 %shl.i.i63, -2147483520
  %call4.i65 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3.i64, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 326, ptr noundef nonnull %call7.i.i.i61, i16 noundef zeroext 2, i32 noundef 5000) #10
  %16 = ptrtoint ptr %call7.i.i.i61 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call7.i.i.i61, align 8
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i65)
  %tobool4.not = icmp sgt i32 %call4.i65, -1
  br i1 %tobool4.not, label %if.end9, label %drci_rd_reg.exit68.do.end8_crit_edge

drci_rd_reg.exit68.do.end8_crit_edge:             ; preds = %drci_rd_reg.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end8:                                          ; preds = %drci_rd_reg.exit68.do.end8_crit_edge, %if.end.do.end8_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end9:                                          ; preds = %drci_rd_reg.exit68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not.i70 = icmp eq ptr %call7.i.i.i69, null
  br i1 %tobool.not.i70, label %if.end9.do.end15_crit_edge, label %drci_rd_reg.exit76

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

drci_rd_reg.exit76:                               ; preds = %if.end9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %shl.i.i71 = shl i32 %21, 8
  %or3.i72 = or i32 %shl.i.i71, -2147483520
  %call4.i73 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3.i72, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 327, ptr noundef nonnull %call7.i.i.i69, i16 noundef zeroext 2, i32 noundef 5000) #10
  %22 = ptrtoint ptr %call7.i.i.i69 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call7.i.i.i69, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i73)
  %tobool11.not = icmp sgt i32 %call4.i73, -1
  br i1 %tobool11.not, label %if.end16, label %drci_rd_reg.exit76.do.end15_crit_edge

drci_rd_reg.exit76.do.end15_crit_edge:            ; preds = %drci_rd_reg.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %drci_rd_reg.exit76.do.end15_crit_edge, %if.end9.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end16:                                         ; preds = %drci_rd_reg.exit76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i77 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not.i78 = icmp eq ptr %call7.i.i.i77, null
  br i1 %tobool.not.i78, label %if.end16.do.end22_crit_edge, label %drci_rd_reg.exit84

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

drci_rd_reg.exit84:                               ; preds = %if.end16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %shl.i.i79 = shl i32 %27, 8
  %or3.i80 = or i32 %shl.i.i79, -2147483520
  %call4.i81 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3.i80, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i.i77, i16 noundef zeroext 2, i32 noundef 5000) #10
  %28 = ptrtoint ptr %call7.i.i.i77 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call7.i.i.i77, align 8
  %30 = lshr i16 %29, 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i81)
  %tobool18.not = icmp sgt i32 %call4.i81, -1
  br i1 %tobool18.not, label %if.end23, label %drci_rd_reg.exit84.do.end22_crit_edge

drci_rd_reg.exit84.do.end22_crit_edge:            ; preds = %drci_rd_reg.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.end22:                                         ; preds = %drci_rd_reg.exit84.do.end22_crit_edge, %if.end16.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.27) #15
  br label %cleanup

if.end23:                                         ; preds = %drci_rd_reg.exit84
  %31 = lshr i16 %12, 8
  %conv24 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv24, ptr %hw_addr, align 1
  %conv25 = trunc i16 %12 to i8
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv25, ptr %2, align 1
  %34 = lshr i16 %18, 8
  %conv29 = trunc i16 %34 to i8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv29, ptr %3, align 1
  %conv31 = trunc i16 %18 to i8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv31, ptr %4, align 1
  %37 = lshr i16 %24, 8
  %conv35 = trunc i16 %37 to i8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv35, ptr %5, align 1
  %conv37 = trunc i16 %24 to i8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv37, ptr %6, align 1
  %on_netinfo = getelementptr i8, ptr %wq_obj, i32 44
  %40 = ptrtoint ptr %on_netinfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %on_netinfo, align 4
  %tobool39.not = icmp eq ptr %41, null
  br i1 %tobool39.not, label %if.end23.cleanup_crit_edge, label %if.then40

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %iface = getelementptr i8, ptr %wq_obj, i32 -3660
  %conv42 = trunc i16 %30 to i8
  call void %41(ptr noundef %iface, i8 noundef zeroext %conv42, ptr noundef nonnull %hw_addr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end23.cleanup_crit_edge, %do.end22, %do.end15, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @link_stat_timer_handler(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_work_obj = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %poll_work_obj) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 200
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_configure_channel(ptr noundef %iface, i32 noundef %channel, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iface, i32 -932
  %usb_device = getelementptr i8, ptr %iface, i32 -4
  %0 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_device, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp slt i32 %channel, 0
  br i1 %cmp, label %if.end.do.end6_crit_edge, label %lor.lhs.false

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

lor.lhs.false:                                    ; preds = %if.end
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel)
  %cmp2.not = icmp ugt i32 %3, %channel
  br i1 %cmp2.not, label %if.end7, label %lor.lhs.false.do.end6_crit_edge

lor.lhs.false.do.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end6:                                          ; preds = %lor.lhs.false.do.end6_crit_edge, %if.end.do.end6_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %is_channel_healthy = getelementptr i8, ptr %iface, i32 1806
  %arrayidx = getelementptr [30 x i8], ptr %is_channel_healthy, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx, align 1
  %clear_work = getelementptr i8, ptr %iface, i32 1836
  %arrayidx8 = getelementptr [30 x %struct.clear_hold_work], ptr %clear_work, i32 0, i32 %channel
  %channel9 = getelementptr inbounds %struct.clear_hold_work, ptr %arrayidx8, i32 0, i32 2
  %5 = ptrtoint ptr %channel9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %channel, ptr %channel9, align 8
  %mdev12 = getelementptr inbounds %struct.clear_hold_work, ptr %arrayidx8, i32 0, i32 1
  %6 = ptrtoint ptr %mdev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %mdev12, align 4
  tail call void @__init_work(ptr noundef %arrayidx8, i32 noundef 0) #10
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %arrayidx8, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %arrayidx8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @hdm_configure_channel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry25 = getelementptr inbounds %struct.work_struct, ptr %arrayidx8, i32 0, i32 1
  %8 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %arrayidx8, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wq_clear_halt, ptr %func, align 4
  %num_buffers = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 2
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool31.not = icmp eq i16 %12, 0
  br i1 %tobool31.not, label %if.end7.do.end37_crit_edge, label %lor.lhs.false32

if.end7.do.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

lor.lhs.false32:                                  ; preds = %if.end7
  %buffer_size = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 3
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool33.not = icmp eq i16 %14, 0
  br i1 %tobool33.not, label %lor.lhs.false32.do.end37_crit_edge, label %if.end38

lor.lhs.false32.do.end37_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %lor.lhs.false32.do.end37_crit_edge, %if.end7.do.end37_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #15
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false32
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 1
  %15 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %16, label %if.end38.if.then45_crit_edge [
    i32 32, label %if.end38.if.end47_crit_edge
    i32 4, label %land.lhs.true42
  ]

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end38.if.then45_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

land.lhs.true42:                                  ; preds = %if.end38
  %packets_per_xact = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 6
  %18 = ptrtoint ptr %packets_per_xact to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %packets_per_xact, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %19)
  %cmp43.not = icmp eq i16 %19, 255
  br i1 %cmp43.not, label %land.lhs.true42.if.then45_crit_edge, label %land.lhs.true42.if.end47_crit_edge

land.lhs.true42.if.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %if.end38.if.then45_crit_edge
  %padding_active = getelementptr i8, ptr %iface, i32 1776
  %arrayidx46 = getelementptr [30 x i8], ptr %padding_active, i32 0, i32 %channel
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx46, align 1
  br label %exit

if.end47:                                         ; preds = %land.lhs.true42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %padding_active48 = getelementptr i8, ptr %iface, i32 1776
  %arrayidx49 = getelementptr [30 x i8], ptr %padding_active48, i32 0, i32 %channel
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx49, align 1
  %subbuffer_size.i = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 5
  %22 = ptrtoint ptr %subbuffer_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subbuffer_size.i, align 2
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.end47.do.end59.sink.split_crit_edge, label %if.end.i

if.end47.do.end59.sink.split_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59.sink.split

if.end.i:                                         ; preds = %if.end47
  %24 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_type, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %25, label %if.end.i.do.end59.sink.split_crit_edge [
    i32 4, label %sw.bb.i
    i32 32, label %sw.bb1.i
  ]

if.end.i.do.end59.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59.sink.split

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl nuw nsw i32 %conv.i, 1
  br label %get_stream_frame_size.exit

sw.bb1.i:                                         ; preds = %if.end.i
  %packets_per_xact.i = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 6
  %27 = ptrtoint ptr %packets_per_xact.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %packets_per_xact.i, align 4
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %28, label %if.else14.i [
    i16 0, label %sw.bb1.i.do.end59.sink.split_crit_edge
    i16 255, label %if.then12.i
  ]

sw.bb1.i.do.end59.sink.split_crit_edge:           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59.sink.split

if.then12.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = urem i16 512, %23
  %.zext.i = zext i16 %30 to i32
  %mul13.i = sub nuw nsw i32 512, %.zext.i
  br label %get_stream_frame_size.exit

if.else14.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = zext i16 %28 to i32
  %mul17.i = mul nuw i32 %conv2.i, %conv.i
  br label %get_stream_frame_size.exit

get_stream_frame_size.exit:                       ; preds = %if.else14.i, %if.then12.i, %sw.bb.i
  %retval.0.i = phi i32 [ %mul13.i, %if.then12.i ], [ %mul17.i, %if.else14.i ], [ %mul.i, %sw.bb.i ]
  %31 = add i32 %retval.0.i, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %31)
  %32 = icmp ult i32 %31, -512
  br i1 %32, label %get_stream_frame_size.exit.do.end59_crit_edge, label %if.end60

get_stream_frame_size.exit.do.end59_crit_edge:    ; preds = %get_stream_frame_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.end59.sink.split:                              ; preds = %sw.bb1.i.do.end59.sink.split_crit_edge, %if.end.i.do.end59.sink.split_crit_edge, %if.end47.do.end59.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.50, %if.end47.do.end59.sink.split_crit_edge ], [ @.str.53, %sw.bb1.i.do.end59.sink.split_crit_edge ], [ @.str.56, %if.end.i.do.end59.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull %.str.53.sink) #15
  br label %do.end59

do.end59:                                         ; preds = %do.end59.sink.split, %get_stream_frame_size.exit.do.end59_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end60:                                         ; preds = %get_stream_frame_size.exit
  %33 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %buffer_size, align 2
  %div.rhs.trunc = trunc i32 %retval.0.i to i16
  %.frozen = freeze i16 %34
  %div.rhs.trunc.frozen = freeze i16 %div.rhs.trunc
  %div166 = udiv i16 %.frozen, %div.rhs.trunc.frozen
  %35 = mul i16 %div166, %div.rhs.trunc.frozen
  %rem167.decomposed = sub i16 %.frozen, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem167.decomposed)
  %tobool65.not = icmp eq i16 %rem167.decomposed, 0
  br i1 %tobool65.not, label %if.end60.if.end77_crit_edge, label %if.then66

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %div.zext = zext i16 %div166 to i32
  %conv62 = zext i16 %34 to i32
  %mul = mul nuw nsw i32 %retval.0.i, %div.zext
  %conv68 = trunc i32 %mul to i16
  %36 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv68, ptr %buffer_size, align 2
  %suffix = getelementptr i8, ptr %iface, i32 156
  %arrayidx73 = getelementptr [30 x [10 x i8]], ptr %suffix, i32 0, i32 %channel
  %conv76 = and i32 %mul, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef %arrayidx73, i32 noundef %conv62, i32 noundef %conv76) #15
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %if.end60.if.end77_crit_edge
  %37 = sub nuw nsw i16 512, %div.rhs.trunc
  %conv79 = mul i16 %div166, %37
  %extra_len = getelementptr inbounds %struct.most_channel_config, ptr %conf, i32 0, i32 4
  %38 = ptrtoint ptr %extra_len to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv79, ptr %extra_len, align 4
  br label %exit

exit:                                             ; preds = %if.end77, %if.then45
  %conf80 = getelementptr i8, ptr %iface, i32 64
  %39 = ptrtoint ptr %conf80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conf80, align 4
  %arrayidx81 = getelementptr %struct.most_channel_config, ptr %40, i32 %channel
  %41 = call ptr @memcpy(ptr %arrayidx81, ptr %conf, i32 20)
  %42 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp83 = icmp eq i32 %43, 2
  br i1 %cmp83, label %if.then85, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then85:                                        ; preds = %exit
  %ep_address = getelementptr i8, ptr %iface, i32 72
  %44 = ptrtoint ptr %ep_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep_address, align 4
  %arrayidx86 = getelementptr i8, ptr %45, i32 %channel
  %46 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %47 to i16
  %48 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_device, align 8
  %mul.i160 = shl nuw nsw i16 %conv87, 4
  %add.i = add nuw nsw i16 %mul.i160, 4354
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i.i = shl i32 %51, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i.i, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp90 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp90, label %do.end95, label %if.then85.cleanup_crit_edge

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end95:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %conv96 = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %conv96) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.then85.cleanup_crit_edge, %exit.cleanup_crit_edge, %do.end59, %do.end37, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -22, %do.end59 ], [ -22, %do.end37 ], [ -22, %do.end ], [ 0, %if.then85.cleanup_crit_edge ], [ 0, %do.end95 ], [ 0, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdm_request_netinfo(ptr noundef %iface, i32 noundef %channel, ptr noundef %on_netinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %on_netinfo1 = getelementptr i8, ptr %iface, i32 3704
  %0 = ptrtoint ptr %on_netinfo1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %on_netinfo, ptr %on_netinfo1, align 4
  %tobool.not = icmp eq ptr %on_netinfo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 100
  %link_stat_timer = getelementptr i8, ptr %iface, i32 3612
  %expires = getelementptr i8, ptr %iface, i32 3620
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %expires, align 8
  %call = tail call i32 @mod_timer(ptr noundef %link_stat_timer, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_enqueue(ptr noundef %iface, i32 noundef %channel, ptr noundef %mbo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iface, i32 -932
  %tobool.not = icmp eq ptr %mbo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %channel)
  %cmp.not = icmp ule i32 %1, %channel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp2 = icmp slt i32 %channel, 0
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %conf8 = getelementptr i8, ptr %iface, i32 64
  %2 = ptrtoint ptr %conf8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf8, align 4
  %arrayidx = getelementptr %struct.most_channel_config, ptr %3, i32 %channel
  %io_mutex = getelementptr i8, ptr %iface, i32 3520
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %usb_device = getelementptr i8, ptr %iface, i32 -4
  %4 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_device, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end7.err_free_urb_crit_edge, label %if.end11

if.end7.err_free_urb_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_urb

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.if.end19_crit_edge, label %land.lhs.true

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %padding_active = getelementptr i8, ptr %iface, i32 1776
  %arrayidx13 = getelementptr [30 x i8], ptr %padding_active, i32 0, i32 %channel
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true15:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %conf8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf8, align 4
  %subbuffer_size.i.i = getelementptr %struct.most_channel_config, ptr %11, i32 %channel, i32 5
  %12 = ptrtoint ptr %subbuffer_size.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subbuffer_size.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.50) #15
  br label %err_free_urb

if.end.i.i:                                       ; preds = %land.lhs.true15
  %data_type.i.i = getelementptr %struct.most_channel_config, ptr %11, i32 %channel, i32 1
  %14 = ptrtoint ptr %data_type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_type.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %15, label %do.end22.i.i [
    i32 4, label %sw.bb.i.i
    i32 32, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  br label %get_stream_frame_size.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  %packets_per_xact.i.i = getelementptr %struct.most_channel_config, ptr %11, i32 %channel, i32 6
  %17 = ptrtoint ptr %packets_per_xact.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %packets_per_xact.i.i, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %18, label %if.else14.i.i [
    i16 0, label %do.end7.i.i
    i16 255, label %if.then12.i.i
  ]

do.end7.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.53) #15
  br label %err_free_urb

if.then12.i.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = urem i16 512, %13
  %.zext.i.i = zext i16 %20 to i32
  %mul13.i.i = sub nuw nsw i32 512, %.zext.i.i
  br label %get_stream_frame_size.exit.i

if.else14.i.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = zext i16 %18 to i32
  %mul17.i.i = mul nuw i32 %conv2.i.i, %conv.i.i
  br label %get_stream_frame_size.exit.i

do.end22.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.56) #15
  br label %err_free_urb

get_stream_frame_size.exit.i:                     ; preds = %if.else14.i.i, %if.then12.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %mul13.i.i, %if.then12.i.i ], [ %mul17.i.i, %if.else14.i.i ], [ %mul.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %get_stream_frame_size.exit.i.err_free_urb_crit_edge, label %if.end.i

get_stream_frame_size.exit.i.err_free_urb_crit_edge: ; preds = %get_stream_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_urb

if.end.i:                                         ; preds = %get_stream_frame_size.exit.i
  %buffer_length.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 8
  %21 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %buffer_length.i, align 4
  %conv.i = zext i16 %22 to i32
  %div.i = udiv i32 %conv.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %retval.0.i.i, %conv.i
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %j.032.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.032.i)
  %cmp6.not33.i = icmp eq i32 %j.032.i, 0
  br i1 %cmp6.not33.i, label %for.cond.preheader.i.hdm_add_padding.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.hdm_add_padding.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdm_add_padding.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %virt_address.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_device, align 8
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.60) #15
  br label %err_free_urb

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.034.i = phi i32 [ %j.032.i, %for.body.lr.ph.i ], [ %j.0.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_address.i, align 4
  %mul.i = shl i32 %j.034.i, 9
  %add.ptr.i = getelementptr i8, ptr %26, i32 %mul.i
  %mul9.i = mul i32 %j.034.i, %retval.0.i.i
  %add.ptr10.i = getelementptr i8, ptr %26, i32 %mul9.i
  %27 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr10.i, i32 %retval.0.i.i)
  %j.0.i = add i32 %j.034.i, -1
  %cmp6.not.i = icmp eq i32 %j.0.i, 0
  br i1 %cmp6.not.i, label %for.body.i.hdm_add_padding.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.hdm_add_padding.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdm_add_padding.exit

hdm_add_padding.exit:                             ; preds = %for.body.i.hdm_add_padding.exit_crit_edge, %for.cond.preheader.i.hdm_add_padding.exit_crit_edge
  %div.tr.i = trunc i32 %div.i to i16
  %conv12.i = shl i16 %div.tr.i, 9
  %28 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv12.i, ptr %buffer_length.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %hdm_add_padding.exit, %land.lhs.true.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %29 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bus_address, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %31 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %transfer_dma, align 4
  %virt_address20 = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %32 = ptrtoint ptr %virt_address20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_address20, align 4
  %buffer_length = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 8
  %34 = ptrtoint ptr %buffer_length to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %buffer_length, align 4
  %conv = zext i16 %35 to i32
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %and22 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %38 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_device, align 8
  %ep_address41 = getelementptr i8, ptr %iface, i32 72
  %40 = ptrtoint ptr %ep_address41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep_address41, align 4
  %arrayidx42 = getelementptr i8, ptr %41, i32 %channel
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %43 to i32
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %39, align 8
  %shl.i109 = shl i32 %45, 8
  %shl1.i110 = shl nuw nsw i32 %conv43, 15
  %or.i111 = or i32 %shl1.i110, %shl.i109
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end19
  %or = or i32 %or.i111, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %39, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %48 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %33, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %50 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @hdm_write_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %51 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %mbo, ptr %context4.i, align 4
  %data_type = getelementptr %struct.most_channel_config, ptr %3, i32 %channel, i32 1
  %52 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_type, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %53, label %if.then36 [
    i32 4, label %if.then24.if.end48_crit_edge
    i32 32, label %if.then24.if.end48_crit_edge120
  ]

if.then24.if.end48_crit_edge120:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then24.if.end48_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then36:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %55 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_flags, align 4
  %or37 = or i32 %56, 64
  store i32 %or37, ptr %transfer_flags, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %or46 = or i32 %or.i111, -1073741696
  %extra_len = getelementptr %struct.most_channel_config, ptr %3, i32 %channel, i32 4
  %57 = ptrtoint ptr %extra_len to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %extra_len, align 4
  %conv47 = zext i16 %58 to i32
  %add = add nuw nsw i32 %conv47, %conv
  %dev1.i112 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %59 = ptrtoint ptr %dev1.i112 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %39, ptr %dev1.i112, align 4
  %pipe2.i113 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %60 = ptrtoint ptr %pipe2.i113 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or46, ptr %pipe2.i113, align 4
  %transfer_buffer3.i114 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer3.i114 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %33, ptr %transfer_buffer3.i114, align 4
  %transfer_buffer_length.i115 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length.i115 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add, ptr %transfer_buffer_length.i115, align 4
  %complete.i116 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i116 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @hdm_read_completion, ptr %complete.i116, align 4
  %context4.i117 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %64 = ptrtoint ptr %context4.i117 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mbo, ptr %context4.i117, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then36, %if.then24.if.end48_crit_edge, %if.then24.if.end48_crit_edge120
  %transfer_flags49 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %65 = ptrtoint ptr %transfer_flags49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %transfer_flags49, align 4
  %or50 = or i32 %66, 4
  store i32 %or50, ptr %transfer_flags49, align 4
  %busy_urbs = getelementptr i8, ptr %iface, i32 3516
  %67 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %busy_urbs, align 8
  %arrayidx51 = getelementptr %struct.usb_anchor, ptr %68, i32 %channel
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %arrayidx51) #10
  %call52 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end48.cleanup.sink.split_crit_edge, label %do.end

if.end48.cleanup.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_device, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call52) #15
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #10
  br label %err_free_urb

err_free_urb:                                     ; preds = %do.end, %do.end.i, %get_stream_frame_size.exit.i.err_free_urb_crit_edge, %do.end22.i.i, %do.end7.i.i, %do.end.i.i, %if.end7.err_free_urb_crit_edge
  %retval1.0 = phi i32 [ %call52, %do.end ], [ -19, %if.end7.err_free_urb_crit_edge ], [ -22, %do.end.i ], [ -22, %get_stream_frame_size.exit.i.err_free_urb_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.end22.i.i ], [ -22, %do.end7.i.i ]
  tail call void @usb_free_urb(ptr noundef nonnull %call) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free_urb, %if.end48.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %retval1.0, %err_free_urb ], [ 0, %if.end48.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -44, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdm_poison_channel(ptr noundef %iface, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp slt i32 %channel, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %iface, i32 0, i32 5
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %channel)
  %cmp1.not = icmp ugt i32 %1, %channel
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %usb_device = getelementptr i8, ptr %iface, i32 -4
  %2 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_device, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %channel_lock = getelementptr i8, ptr %iface, i32 456
  %add.ptr2 = getelementptr %struct.spinlock, ptr %channel_lock, i32 %channel
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr2) #10
  %is_channel_healthy = getelementptr i8, ptr %iface, i32 1806
  %arrayidx = getelementptr [30 x i8], ptr %is_channel_healthy, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr2, i32 noundef %call7) #10
  %clear_work = getelementptr i8, ptr %iface, i32 1836
  %arrayidx12 = getelementptr [30 x %struct.clear_hold_work], ptr %clear_work, i32 0, i32 %channel
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %arrayidx12) #10
  %io_mutex = getelementptr i8, ptr %iface, i32 3520
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %busy_urbs = getelementptr i8, ptr %iface, i32 3516
  %5 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %busy_urbs, align 8
  %arrayidx14 = getelementptr %struct.usb_anchor, ptr %6, i32 %channel
  tail call void @usb_kill_anchored_urbs(ptr noundef %arrayidx14) #10
  %padding_active = getelementptr i8, ptr %iface, i32 1776
  %arrayidx15 = getelementptr [30 x i8], ptr %padding_active, i32 0, i32 %channel
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx15, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %conf = getelementptr i8, ptr %iface, i32 64
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf, align 4
  %data_type = getelementptr %struct.most_channel_config, ptr %11, i32 %channel, i32 1
  %12 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp21 = icmp eq i32 %13, 2
  br i1 %cmp21, label %if.then23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %link_stat_timer = getelementptr i8, ptr %iface, i32 3612
  %call24 = tail call i32 @del_timer_sync(ptr noundef %link_stat_timer) #10
  %poll_work_obj = getelementptr i8, ptr %iface, i32 3660
  %call25 = tail call zeroext i1 @cancel_work_sync(ptr noundef %poll_work_obj) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ -44, %do.end ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hdm_dma_alloc(ptr noundef %mbo, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %usb_device = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_device, align 8
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %call = tail call ptr @usb_alloc_coherent(ptr noundef %3, i32 noundef %size, i32 noundef 3264, ptr noundef %bus_address) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdm_dma_free(ptr nocapture noundef readonly %mbo, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %usb_device = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_device, align 8
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %4 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_address, align 4
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %6 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_address, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef %size, ptr noundef %5, i32 noundef %7) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_mdev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_dci(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @put_device(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wq_clear_halt(ptr nocapture noundef readonly %wq_obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.clear_hold_work, ptr %wq_obj, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %channel2 = getelementptr inbounds %struct.clear_hold_work, ptr %wq_obj, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %pipe3 = getelementptr inbounds %struct.clear_hold_work, ptr %wq_obj, i32 0, i32 3
  %4 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe3, align 4
  %io_mutex = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %iface = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 2
  tail call void @most_stop_enqueue(ptr noundef %iface, i32 noundef %3) #10
  %busy_urbs = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %busy_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %busy_urbs, align 8
  %arrayidx = getelementptr %struct.usb_anchor, ptr %7, i32 %3
  tail call void @usb_kill_anchored_urbs(ptr noundef %arrayidx) #10
  %usb_device = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_device, align 8
  %call = tail call i32 @usb_clear_halt(ptr noundef %9, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_device, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conf = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf, align 4
  %data_type = getelementptr %struct.most_channel_config, ptr %13, i32 %3, i32 1
  %14 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %arrayidx5 = getelementptr %struct.most_channel_config, ptr %13, i32 %3
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp eq i32 %3, 0
  %. = zext i1 %cmp10 to i32
  %18 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_device, align 8
  %ep_address = getelementptr inbounds %struct.most_dev, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %ep_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep_address, align 4
  %arrayidx14 = getelementptr i8, ptr %21, i32 %.
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %shl.i = shl i32 %25, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call17 = tail call i32 @usb_clear_halt(ptr noundef %19, i32 noundef %or) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %arrayidx19 = getelementptr %struct.most_dev, ptr %1, i32 0, i32 11, i32 %3
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx19, align 1
  tail call void @most_resume_enqueue(ptr noundef %iface, i32 noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_stop_enqueue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_resume_enqueue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drci_wr_reg(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %1, 8
  %or = or i32 %shl.i, -2147483648
  %call1 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext %data, i16 noundef zeroext %reg, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdm_write_completion(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ifp = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifp, align 4
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %5 to i32
  %channel_lock = getelementptr i8, ptr %3, i32 456
  %add.ptr1 = getelementptr %struct.spinlock, ptr %channel_lock, i32 %conv
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr1) #10
  %processed_length = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %processed_length, align 2
  %status = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %status, align 4
  %is_channel_healthy = getelementptr i8, ptr %3, i32 1806
  %arrayidx = getelementptr [30 x i8], ptr %is_channel_healthy, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !224

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %status10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status10, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %11, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.sw.bb_crit_edge
    i32 -108, label %if.then.sw.bb_crit_edge64
    i32 -32, label %do.end17
    i32 -19, label %if.then.sw.bb27_crit_edge
    i32 -71, label %if.then.sw.bb27_crit_edge65
  ]

if.then.sw.bb27_crit_edge65:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

if.then.sw.bb27_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

if.then.sw.bb_crit_edge64:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge64
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  %conv11 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv11, ptr %processed_length, align 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status, align 4
  br label %if.end

do.end17:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %usb_device = getelementptr i8, ptr %3, i32 -4
  %17 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_device, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %ep_address = getelementptr i8, ptr %3, i32 72
  %19 = ptrtoint ptr %ep_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep_address, align 4
  %arrayidx18 = getelementptr i8, ptr %20, i32 %conv
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %conv19) #15
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipe, align 4
  %clear_work = getelementptr i8, ptr %3, i32 1836
  %arrayidx22 = getelementptr [30 x %struct.clear_hold_work], ptr %clear_work, i32 0, i32 %conv
  %pipe23 = getelementptr inbounds %struct.clear_hold_work, ptr %arrayidx22, i32 0, i32 3
  %26 = ptrtoint ptr %pipe23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pipe23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %arrayidx22) #10
  br label %if.end

sw.bb27:                                          ; preds = %if.then.sw.bb27_crit_edge, %if.then.sw.bb27_crit_edge65
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb27, %do.end17, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr1, i32 noundef %call5) #10
  %complete = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete, align 4
  %tobool29.not = icmp eq ptr %30, null
  br i1 %tobool29.not, label %if.end.if.end38_crit_edge, label %if.then36, !prof !224

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %30(ptr noundef %1) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end.if.end38_crit_edge
  tail call void @usb_free_urb(ptr noundef %urb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdm_read_completion(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ifp = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifp, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -932
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdm_channel_id, align 4
  %conv = zext i16 %5 to i32
  %usb_device = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_device, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %channel_lock = getelementptr i8, ptr %3, i32 456
  %add.ptr2 = getelementptr %struct.spinlock, ptr %channel_lock, i32 %conv
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr2) #10
  %processed_length = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %processed_length, align 2
  %status = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %status, align 4
  %is_channel_healthy = getelementptr i8, ptr %3, i32 1806
  %arrayidx = getelementptr [30 x i8], ptr %is_channel_healthy, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end45_crit_edge, label %if.then, !prof !224

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then:                                          ; preds = %entry
  %status11 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status11, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %13, label %if.then.if.end45_crit_edge [
    i32 0, label %if.then.sw.bb_crit_edge
    i32 -108, label %if.then.sw.bb_crit_edge93
    i32 -32, label %do.end26
    i32 -19, label %if.then.sw.bb36_crit_edge
    i32 -71, label %if.then.sw.bb36_crit_edge94
    i32 -75, label %do.end41
  ]

if.then.sw.bb36_crit_edge94:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then.sw.bb36_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then.sw.bb_crit_edge93:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge93
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %15 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length, align 4
  %conv12 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv12, ptr %processed_length, align 2
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %status, align 4
  %padding_active = getelementptr i8, ptr %3, i32 1776
  %arrayidx15 = getelementptr [30 x i8], ptr %padding_active, i32 0, i32 %conv
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %sw.bb.if.end45_crit_edge, label %land.lhs.true

sw.bb.if.end45_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %sw.bb
  %conf1.i = getelementptr i8, ptr %3, i32 64
  %21 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conf1.i, align 4
  %subbuffer_size.i.i = getelementptr %struct.most_channel_config, ptr %22, i32 %conv, i32 5
  %23 = ptrtoint ptr %subbuffer_size.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subbuffer_size.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.if.then20.sink.split_crit_edge, label %if.end.i.i

land.lhs.true.if.then20.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.sink.split

if.end.i.i:                                       ; preds = %land.lhs.true
  %data_type.i.i = getelementptr %struct.most_channel_config, ptr %22, i32 %conv, i32 1
  %25 = ptrtoint ptr %data_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_type.i.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %26, label %if.end.i.i.if.then20.sink.split_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 32, label %sw.bb1.i.i
  ]

if.end.i.i.if.then20.sink.split_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.sink.split

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  br label %get_stream_frame_size.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  %packets_per_xact.i.i = getelementptr %struct.most_channel_config, ptr %22, i32 %conv, i32 6
  %28 = ptrtoint ptr %packets_per_xact.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %packets_per_xact.i.i, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %29, label %if.else14.i.i [
    i16 0, label %sw.bb1.i.i.if.then20.sink.split_crit_edge
    i16 255, label %if.then12.i.i
  ]

sw.bb1.i.i.if.then20.sink.split_crit_edge:        ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.sink.split

if.then12.i.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = urem i16 512, %24
  %.zext.i.i = zext i16 %31 to i32
  %mul13.i.i = sub nuw nsw i32 512, %.zext.i.i
  br label %get_stream_frame_size.exit.i

if.else14.i.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = zext i16 %29 to i32
  %mul17.i.i = mul nuw i32 %conv2.i.i, %conv.i.i
  br label %get_stream_frame_size.exit.i

get_stream_frame_size.exit.i:                     ; preds = %if.else14.i.i, %if.then12.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %mul13.i.i, %if.then12.i.i ], [ %mul17.i.i, %if.else14.i.i ], [ %mul.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %get_stream_frame_size.exit.i.if.then20_crit_edge, label %if.end.i

get_stream_frame_size.exit.i.if.then20_crit_edge: ; preds = %get_stream_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end.i:                                         ; preds = %get_stream_frame_size.exit.i
  %32 = lshr i16 %conv12, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %conv12)
  %cmp25.i = icmp ugt i16 %conv12, 1023
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %if.end.i.hdm_remove_padding.exit_crit_edge

if.end.i.hdm_remove_padding.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdm_remove_padding.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %virt_address.i = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 6
  %33 = tail call i16 @llvm.umax.i16(i16 %32, i16 2) #10
  %umax.i = zext i16 %33 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.026.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_address.i, align 4
  %mul.i = mul i32 %j.026.i, %retval.0.i.i
  %add.ptr.i = getelementptr i8, ptr %35, i32 %mul.i
  %mul4.i = shl i32 %j.026.i, 9
  %add.ptr5.i = getelementptr i8, ptr %35, i32 %mul4.i
  %36 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr5.i, i32 %retval.0.i.i)
  %inc.i = add nuw nsw i32 %j.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.hdm_remove_padding.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.hdm_remove_padding.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdm_remove_padding.exit

hdm_remove_padding.exit:                          ; preds = %for.body.i.hdm_remove_padding.exit_crit_edge, %if.end.i.hdm_remove_padding.exit_crit_edge
  %37 = trunc i32 %retval.0.i.i to i16
  %conv7.i = mul i16 %32, %37
  %38 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv7.i, ptr %processed_length, align 2
  br label %if.end45

if.then20.sink.split:                             ; preds = %sw.bb1.i.i.if.then20.sink.split_crit_edge, %if.end.i.i.if.then20.sink.split_crit_edge, %land.lhs.true.if.then20.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %land.lhs.true.if.then20.sink.split_crit_edge ], [ @.str.53, %sw.bb1.i.i.if.then20.sink.split_crit_edge ], [ @.str.56, %if.end.i.i.if.then20.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull %.str.50.sink) #15
  br label %if.then20

if.then20:                                        ; preds = %if.then20.sink.split, %get_stream_frame_size.exit.i.if.then20_crit_edge
  %39 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %processed_length, align 2
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %status, align 4
  br label %if.end45

do.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ep_address = getelementptr i8, ptr %3, i32 72
  %41 = ptrtoint ptr %ep_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep_address, align 4
  %arrayidx27 = getelementptr i8, ptr %42, i32 %conv
  %43 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %conv28) #15
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx, align 1
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %46 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pipe, align 4
  %clear_work = getelementptr i8, ptr %3, i32 1836
  %arrayidx31 = getelementptr [30 x %struct.clear_hold_work], ptr %clear_work, i32 0, i32 %conv
  %pipe32 = getelementptr inbounds %struct.clear_hold_work, ptr %arrayidx31, i32 0, i32 3
  %48 = ptrtoint ptr %pipe32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pipe32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %arrayidx31) #10
  br label %if.end45

sw.bb36:                                          ; preds = %if.then.sw.bb36_crit_edge, %if.then.sw.bb36_crit_edge94
  %50 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %status, align 4
  br label %if.end45

do.end41:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ep_address42 = getelementptr i8, ptr %3, i32 72
  %51 = ptrtoint ptr %ep_address42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep_address42, align 4
  %arrayidx43 = getelementptr i8, ptr %52, i32 %conv
  %53 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %conv44) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end41, %sw.bb36, %do.end26, %if.then20, %hdm_remove_padding.exit, %sw.bb.if.end45_crit_edge, %if.then.if.end45_crit_edge, %entry.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr2, i32 noundef %call6) #10
  %complete = getelementptr inbounds %struct.mbo, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %complete, align 4
  %tobool46.not = icmp eq ptr %56, null
  br i1 %tobool46.not, label %if.end45.if.end55_crit_edge, label %if.then53, !prof !224

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %56(ptr noundef %1) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end45.if.end55_crit_edge
  tail call void @usb_free_urb(ptr noundef %urb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.73) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_addr3 = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %reg_addr3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_addr3, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call5 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.75) #10
  br i1 %call5, label %if.then6, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.72) #10
  br i1 %call.i, label %for.body.i.preheader.get_stat_reg_addr.exit.thread_crit_edge, label %for.inc.i

for.body.i.preheader.get_stat_reg_addr.exit.thread_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit.thread

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reg_addr7 = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 2
  br label %if.end13

get_stat_reg_addr.exit.thread:                    ; preds = %for.inc.i.2.get_stat_reg_addr.exit.thread_crit_edge, %for.inc.i.1.get_stat_reg_addr.exit.thread_crit_edge, %for.inc.i.get_stat_reg_addr.exit.thread_crit_edge, %for.body.i.preheader.get_stat_reg_addr.exit.thread_crit_edge
  %i.09.i.lcssa = phi i32 [ 0, %for.body.i.preheader.get_stat_reg_addr.exit.thread_crit_edge ], [ 1, %for.inc.i.get_stat_reg_addr.exit.thread_crit_edge ], [ 2, %for.inc.i.1.get_stat_reg_addr.exit.thread_crit_edge ], [ 3, %for.inc.i.2.get_stat_reg_addr.exit.thread_crit_edge ]
  %reg.i = getelementptr %struct.regs, ptr @ro_regs, i32 %i.09.i.lcssa, i32 1
  br label %if.end13

for.inc.i:                                        ; preds = %for.body.i.preheader
  %call.i.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.76) #10
  br i1 %call.i.1, label %for.inc.i.get_stat_reg_addr.exit.thread_crit_edge, label %for.inc.i.1

for.inc.i.get_stat_reg_addr.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit.thread

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.77) #10
  br i1 %call.i.2, label %for.inc.i.1.get_stat_reg_addr.exit.thread_crit_edge, label %for.inc.i.2

for.inc.i.1.get_stat_reg_addr.exit.thread_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit.thread

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %call.i.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.78) #10
  br i1 %call.i.3, label %for.inc.i.2.get_stat_reg_addr.exit.thread_crit_edge, label %for.inc.i.3

for.inc.i.2.get_stat_reg_addr.exit.thread_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit.thread

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %call.i33 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.79) #10
  br i1 %call.i33, label %for.inc.i.3.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39

for.inc.i.3.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

get_stat_reg_addr.exit41.thread:                  ; preds = %for.inc.i39.6.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.5.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.4.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.3.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.2.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.1.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i39.get_stat_reg_addr.exit41.thread_crit_edge, %for.inc.i.3.get_stat_reg_addr.exit41.thread_crit_edge
  %i.09.i31.lcssa = phi i32 [ 0, %for.inc.i.3.get_stat_reg_addr.exit41.thread_crit_edge ], [ 1, %for.inc.i39.get_stat_reg_addr.exit41.thread_crit_edge ], [ 2, %for.inc.i39.1.get_stat_reg_addr.exit41.thread_crit_edge ], [ 3, %for.inc.i39.2.get_stat_reg_addr.exit41.thread_crit_edge ], [ 4, %for.inc.i39.3.get_stat_reg_addr.exit41.thread_crit_edge ], [ 5, %for.inc.i39.4.get_stat_reg_addr.exit41.thread_crit_edge ], [ 6, %for.inc.i39.5.get_stat_reg_addr.exit41.thread_crit_edge ], [ 7, %for.inc.i39.6.get_stat_reg_addr.exit41.thread_crit_edge ]
  %reg.i35 = getelementptr %struct.regs, ptr @rw_regs, i32 %i.09.i31.lcssa, i32 1
  br label %if.end13

for.inc.i39:                                      ; preds = %for.inc.i.3
  %call.i33.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.80) #10
  br i1 %call.i33.1, label %for.inc.i39.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.1

for.inc.i39.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.1:                                    ; preds = %for.inc.i39
  %call.i33.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.81) #10
  br i1 %call.i33.2, label %for.inc.i39.1.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.2

for.inc.i39.1.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.2:                                    ; preds = %for.inc.i39.1
  %call.i33.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.82) #10
  br i1 %call.i33.3, label %for.inc.i39.2.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.3

for.inc.i39.2.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.3:                                    ; preds = %for.inc.i39.2
  %call.i33.4 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.83) #10
  br i1 %call.i33.4, label %for.inc.i39.3.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.4

for.inc.i39.3.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.4:                                    ; preds = %for.inc.i39.3
  %call.i33.5 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.84) #10
  br i1 %call.i33.5, label %for.inc.i39.4.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.5

for.inc.i39.4.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.5:                                    ; preds = %for.inc.i39.4
  %call.i33.6 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.85) #10
  br i1 %call.i33.6, label %for.inc.i39.5.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.6

for.inc.i39.5.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

for.inc.i39.6:                                    ; preds = %for.inc.i39.5
  %call.i33.7 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.86) #10
  br i1 %call.i33.7, label %for.inc.i39.6.get_stat_reg_addr.exit41.thread_crit_edge, label %for.inc.i39.6.cleanup_crit_edge

for.inc.i39.6.cleanup_crit_edge:                  ; preds = %for.inc.i39.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i39.6.get_stat_reg_addr.exit41.thread_crit_edge: ; preds = %for.inc.i39.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_stat_reg_addr.exit41.thread

if.end13:                                         ; preds = %get_stat_reg_addr.exit41.thread, %get_stat_reg_addr.exit.thread, %if.then6
  %reg_addr.2.in = phi ptr [ %reg_addr7, %if.then6 ], [ %reg.i, %get_stat_reg_addr.exit.thread ], [ %reg.i35, %get_stat_reg_addr.exit41.thread ]
  %4 = ptrtoint ptr %reg_addr.2.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %reg_addr.2 = load i16, ptr %reg_addr.2.in, align 4
  %usb_device = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_device, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %drci_rd_reg.exit

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

drci_rd_reg.exit:                                 ; preds = %if.end13
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or3.i, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %reg_addr.2, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 2, i32 noundef 5000) #10
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %12 = tail call i32 @llvm.smin.i32(i32 %call4.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %drci_rd_reg.exit.cleanup_crit_edge, label %if.end17

drci_rd_reg.exit.cleanup_crit_edge:               ; preds = %drci_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %drci_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.then
  %.sink = phi i16 [ %13, %if.end17 ], [ %3, %if.then ]
  %conv18 = zext i16 %.sink to i32
  %call19 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %conv18) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %drci_rd_reg.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.inc.i39.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %drci_rd_reg.exit.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -22, %for.inc.i39.6.cleanup_crit_edge ], [ %call19, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @value_store(ptr nocapture noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !225
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %usb_device = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %usb_device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_device, align 8
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.73) #10
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %reg_addr5 = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %reg_addr5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %reg_addr5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.75) #10
  br i1 %call7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %reg_addr9 = getelementptr inbounds %struct.most_dci_obj, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %reg_addr9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_addr9, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext %11, i16 noundef zeroext %9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  br label %if.end22

if.else:                                          ; preds = %if.end6
  %call11 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.87) #10
  br i1 %call11, label %if.then12, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else
  %call.i = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.79) #10
  br i1 %call.i, label %for.body.i.preheader.if.then17_crit_edge, label %for.inc.i

for.body.i.preheader.if.then17_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  %mul.i = shl i16 %15, 4
  %add.i = add i16 %mul.i, 4354
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  br label %if.end22

for.inc.i:                                        ; preds = %for.body.i.preheader
  %call.i.1 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.80) #10
  br i1 %call.i.1, label %for.inc.i.if.then17_crit_edge, label %for.inc.i.1

for.inc.i.if.then17_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.81) #10
  br i1 %call.i.2, label %for.inc.i.1.if.then17_crit_edge, label %for.inc.i.2

for.inc.i.1.if.then17_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %call.i.3 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.82) #10
  br i1 %call.i.3, label %for.inc.i.2.if.then17_crit_edge, label %for.inc.i.3

for.inc.i.2.if.then17_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %call.i.4 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.83) #10
  br i1 %call.i.4, label %for.inc.i.3.if.then17_crit_edge, label %for.inc.i.4

for.inc.i.3.if.then17_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %call.i.5 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.84) #10
  br i1 %call.i.5, label %for.inc.i.4.if.then17_crit_edge, label %for.inc.i.5

for.inc.i.4.if.then17_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %call.i.6 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.85) #10
  br i1 %call.i.6, label %for.inc.i.5.if.then17_crit_edge, label %for.inc.i.6

for.inc.i.5.if.then17_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %call.i.7 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.86) #10
  br i1 %call.i.7, label %for.inc.i.6.if.then17_crit_edge, label %for.inc.i.6.cleanup_crit_edge

for.inc.i.6.cleanup_crit_edge:                    ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.6.if.then17_crit_edge:                  ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %for.inc.i.6.if.then17_crit_edge, %for.inc.i.5.if.then17_crit_edge, %for.inc.i.4.if.then17_crit_edge, %for.inc.i.3.if.then17_crit_edge, %for.inc.i.2.if.then17_crit_edge, %for.inc.i.1.if.then17_crit_edge, %for.inc.i.if.then17_crit_edge, %for.body.i.preheader.if.then17_crit_edge
  %i.09.i.lcssa = phi i32 [ 0, %for.body.i.preheader.if.then17_crit_edge ], [ 1, %for.inc.i.if.then17_crit_edge ], [ 2, %for.inc.i.1.if.then17_crit_edge ], [ 3, %for.inc.i.2.if.then17_crit_edge ], [ 4, %for.inc.i.3.if.then17_crit_edge ], [ 5, %for.inc.i.4.if.then17_crit_edge ], [ 6, %for.inc.i.5.if.then17_crit_edge ], [ 7, %for.inc.i.6.if.then17_crit_edge ]
  %reg.i = getelementptr %struct.regs, ptr @rw_regs, i32 %i.09.i.lcssa, i32 1
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg.i, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val, align 2
  %call18 = call fastcc i32 @drci_wr_reg(ptr noundef %4, i16 noundef zeroext %19, i16 noundef zeroext %21)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then12, %if.then8
  %err.0 = phi i32 [ %call1.i, %if.then8 ], [ %call1.i.i, %if.then12 ], [ %call18, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  %err.0.count = select i1 %cmp, i32 %err.0, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.inc.i.6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0.count, %if.end22 ], [ -22, %for.inc.i.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__initcall__kmod_most_usb__346_1168_hdm_usb_init6, !1, !"__initcall__kmod_most_usb__346_1168_hdm_usb_init6", i1 false, i1 false}
!1 = !{!"../drivers/most/most_usb.c", i32 1168, i32 1}
!2 = !{ptr @__exitcall_hdm_usb_exit, !1, !"__exitcall_hdm_usb_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file347, !4, !"__UNIQUE_ID_file347", i1 false, i1 false}
!4 = !{!"../drivers/most/most_usb.c", i32 1169, i32 1}
!5 = !{ptr @__UNIQUE_ID_license348, !4, !"__UNIQUE_ID_license348", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author349, !7, !"__UNIQUE_ID_author349", i1 false, i1 false}
!7 = !{!"../drivers/most/most_usb.c", i32 1170, i32 1}
!8 = !{ptr @__UNIQUE_ID_description350, !9, !"__UNIQUE_ID_description350", i1 false, i1 false}
!9 = !{!"../drivers/most/most_usb.c", i32 1171, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/most/most_usb.c", i32 1160, i32 10}
!13 = !{ptr @hdm_usb, !14, !"hdm_usb", i1 false, i1 false}
!14 = !{!"../drivers/most/most_usb.c", i32 1159, i32 26}
!15 = !{ptr @hdm_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/most/most_usb.c", i32 969, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hdm_probe.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/most/most_usb.c", i32 970, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hdm_probe.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/most/most_usb.c", i32 971, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/most/most_usb.c", i32 990, i32 4}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/most/most_usb.c", i32 1025, i32 49}
!28 = !{ptr @hdm_probe.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/most/most_usb.c", i32 1041, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/most/most_usb.c", i32 1043, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hdm_probe.__UNIQUE_ID_ddebug344, !32, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/most/most_usb.c", i32 1049, i32 2}
!38 = !{ptr @hdm_probe.__UNIQUE_ID_ddebug345, !37, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/most/most_usb.c", i32 1071, i32 30}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/most/most_usb.c", i32 692, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wq_netinfo._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @wq_netinfo._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/most/most_usb.c", i32 697, i32 3}
!50 = !{ptr @wq_netinfo._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wq_netinfo._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/most/most_usb.c", i32 702, i32 3}
!54 = !{ptr @wq_netinfo._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wq_netinfo._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/most/most_usb.c", i32 707, i32 3}
!58 = !{ptr @wq_netinfo._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wq_netinfo._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"hdm_usb_fops", i1 false, i1 false}
!61 = !{!"../drivers/most/most_usb.c", i32 769, i32 37}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/most/most_usb.c", i32 575, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hdm_configure_channel._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @hdm_configure_channel._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/most/most_usb.c", i32 579, i32 3}
!69 = !{ptr @hdm_configure_channel._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hdm_configure_channel._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @hdm_configure_channel.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/most/most_usb.c", i32 586, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/most/most_usb.c", i32 589, i32 3}
!76 = !{ptr @hdm_configure_channel._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hdm_configure_channel._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/most/most_usb.c", i32 609, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hdm_configure_channel._entry.38, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @hdm_configure_channel._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/most/most_usb.c", i32 619, i32 3}
!85 = !{ptr @hdm_configure_channel._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hdm_configure_channel._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/most/most_usb.c", i32 632, i32 4}
!89 = !{ptr @hdm_configure_channel._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hdm_configure_channel._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/most/most_usb.c", i32 741, i32 3}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @wq_clear_halt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @wq_clear_halt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/most/most_usb.c", i32 200, i32 3}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @get_stream_frame_size._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @get_stream_frame_size._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/most/most_usb.c", i32 209, i32 4}
!103 = !{ptr @get_stream_frame_size._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @get_stream_frame_size._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/most/most_usb.c", i32 218, i32 3}
!107 = !{ptr @get_stream_frame_size._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @get_stream_frame_size._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/most/most_usb.c", i32 520, i32 3}
!111 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hdm_enqueue._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hdm_enqueue._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/most/most_usb.c", i32 287, i32 3}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hdm_add_padding._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @hdm_add_padding._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/most/most_usb.c", i32 360, i32 4}
!121 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hdm_write_completion._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @hdm_write_completion._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/most/most_usb.c", i32 418, i32 4}
!126 = !{ptr @hdm_read_completion._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @hdm_read_completion._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/most/most_usb.c", i32 429, i32 4}
!130 = !{ptr @hdm_read_completion._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @hdm_read_completion._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/most/most_usb.c", i32 243, i32 3}
!134 = !{ptr @hdm_poison_channel._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @hdm_poison_channel._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @init_usb_anchor.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!138 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @init_usb_anchor.__key.70, !140, !"__key", i1 false, i1 false}
!140 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!141 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @dci_groups, !143, !"dci_groups", i1 false, i1 false}
!143 = !{!"../drivers/most/most_usb.c", i32 918, i32 1}
!144 = !{ptr @dci_group, !143, !"dci_group", i1 false, i1 false}
!145 = !{ptr @dci_attrs, !146, !"dci_attrs", i1 false, i1 false}
!146 = !{!"../drivers/most/most_usb.c", i32 899, i32 26}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/most/most_usb.c", i32 883, i32 8}
!149 = !{ptr @dev_attr_ni_state, !148, !"dev_attr_ni_state", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/most/most_usb.c", i32 833, i32 24}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/most/most_usb.c", i32 834, i32 26}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/most/most_usb.c", i32 836, i32 24}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/most/most_usb.c", i32 791, i32 4}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/most/most_usb.c", i32 792, i32 4}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/most/most_usb.c", i32 793, i32 4}
!162 = !{ptr @ro_regs, !163, !"ro_regs", i1 false, i1 false}
!163 = !{!"../drivers/most/most_usb.c", i32 789, i32 26}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/most/most_usb.c", i32 797, i32 4}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/most/most_usb.c", i32 798, i32 4}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/most/most_usb.c", i32 799, i32 4}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/most/most_usb.c", i32 800, i32 4}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/most/most_usb.c", i32 801, i32 4}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/most/most_usb.c", i32 802, i32 4}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/most/most_usb.c", i32 803, i32 4}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/most/most_usb.c", i32 804, i32 4}
!180 = !{ptr @rw_regs, !181, !"rw_regs", i1 false, i1 false}
!181 = !{!"../drivers/most/most_usb.c", i32 796, i32 26}
!182 = !{ptr @dev_attr_packet_bandwidth, !183, !"dev_attr_packet_bandwidth", i1 false, i1 false}
!183 = !{!"../drivers/most/most_usb.c", i32 884, i32 8}
!184 = !{ptr @dev_attr_node_address, !185, !"dev_attr_node_address", i1 false, i1 false}
!185 = !{!"../drivers/most/most_usb.c", i32 885, i32 8}
!186 = !{ptr @dev_attr_node_position, !187, !"dev_attr_node_position", i1 false, i1 false}
!187 = !{!"../drivers/most/most_usb.c", i32 886, i32 8}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/most/most_usb.c", i32 887, i32 8}
!190 = !{ptr @dev_attr_sync_ep, !189, !"dev_attr_sync_ep", i1 false, i1 false}
!191 = !{ptr @dev_attr_mep_filter, !192, !"dev_attr_mep_filter", i1 false, i1 false}
!192 = !{!"../drivers/most/most_usb.c", i32 888, i32 8}
!193 = !{ptr @dev_attr_mep_hash0, !194, !"dev_attr_mep_hash0", i1 false, i1 false}
!194 = !{!"../drivers/most/most_usb.c", i32 889, i32 8}
!195 = !{ptr @dev_attr_mep_hash1, !196, !"dev_attr_mep_hash1", i1 false, i1 false}
!196 = !{!"../drivers/most/most_usb.c", i32 890, i32 8}
!197 = !{ptr @dev_attr_mep_hash2, !198, !"dev_attr_mep_hash2", i1 false, i1 false}
!198 = !{!"../drivers/most/most_usb.c", i32 891, i32 8}
!199 = !{ptr @dev_attr_mep_hash3, !200, !"dev_attr_mep_hash3", i1 false, i1 false}
!200 = !{!"../drivers/most/most_usb.c", i32 892, i32 8}
!201 = !{ptr @dev_attr_mep_eui48_hi, !202, !"dev_attr_mep_eui48_hi", i1 false, i1 false}
!202 = !{!"../drivers/most/most_usb.c", i32 893, i32 8}
!203 = !{ptr @dev_attr_mep_eui48_mi, !204, !"dev_attr_mep_eui48_mi", i1 false, i1 false}
!204 = !{!"../drivers/most/most_usb.c", i32 894, i32 8}
!205 = !{ptr @dev_attr_mep_eui48_lo, !206, !"dev_attr_mep_eui48_lo", i1 false, i1 false}
!206 = !{!"../drivers/most/most_usb.c", i32 895, i32 8}
!207 = !{ptr @dev_attr_arb_address, !208, !"dev_attr_arb_address", i1 false, i1 false}
!208 = !{!"../drivers/most/most_usb.c", i32 896, i32 8}
!209 = !{ptr @dev_attr_arb_value, !210, !"dev_attr_arb_value", i1 false, i1 false}
!210 = !{!"../drivers/most/most_usb.c", i32 897, i32 8}
!211 = !{ptr @usbid, !212, !"usbid", i1 false, i1 false}
!212 = !{!"../drivers/most/most_usb.c", i32 776, i32 35}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i64 2148984291, i64 2148984296, i64 2148984309, i64 2148984353, i64 2148984387, i64 2148984408}
!223 = !{i8 0, i8 2}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{!"auto-init"}
