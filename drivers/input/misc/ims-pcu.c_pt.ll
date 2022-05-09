; ModuleID = '/llk/IR_all_yes/drivers/input/misc/ims-pcu.c_pt.bc'
source_filename = "../drivers/input/misc/ims-pcu.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ims_pcu_attribute = type { %struct.device_attribute, i32, i32 }
%struct.ims_pcu_device_info = type { ptr, i32, i8 }
%struct.ims_pcu_ofn_bit_attribute = type { %struct.device_attribute, i8, i8 }
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
%struct.ims_pcu = type { ptr, ptr, i32, i8, [15 x i8], [8 x i8], [8 x i8], [10 x i8], [10 x i8], [3 x i8], i32, i8, i8, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, [128 x i8], i8, i8, i8, i8, [128 x i8], i8, i8, i8, %struct.completion, %struct.mutex, i32, i32, %struct.completion, %struct.ims_pcu_buttons, ptr, %struct.ims_pcu_backlight, i8 }
%struct.ims_pcu_buttons = type { ptr, [32 x i8], [32 x i8], [32 x i16] }
%struct.ims_pcu_backlight = type { %struct.led_classdev, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>
%struct.ims_pcu_gamepad = type { ptr, [32 x i8], [32 x i8] }

@__initcall__kmod_ims_pcu__240_2145_ims_pcu_driver_init6 = internal global ptr @ims_pcu_driver_init, section ".initcall6.init", align 4
@ims_pcu_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ims_pcu_probe, ptr @ims_pcu_disconnect, ptr null, ptr @ims_pcu_suspend, ptr @ims_pcu_resume, ptr @ims_pcu_resume, ptr null, ptr null, ptr @ims_pcu_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ims_pcu_driver_exit = internal global ptr @ims_pcu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [54 x i8] c"ims_pcu.description=IMS Passenger Control Unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [59 x i8] c"ims_pcu.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [40 x i8] c"ims_pcu.file=drivers/input/misc/ims-pcu\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"ims_pcu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ims_pcu\00", [24 x i8] zeroinitializer }, align 32
@ims_pcu_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1240, i16 130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1240, i16 131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 1, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ims_pcu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcu->cmd_mutex\00", [16 x i8] zeroinitializer }, align 32
@ims_pcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2016, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to claim corresponding data interface: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ims_pcu_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/ims-pcu.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ims_pcu_probe._entry_ptr = internal global ptr @ims_pcu_probe._entry, section ".printk_index", align 4
@ims_pcu_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ims_pcu_is_attr_visible, ptr null, ptr @ims_pcu_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 1684, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Incorrect number of endpoints on data interface (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ims_pcu_parse_cdc_data\00", [41 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry_ptr = internal global ptr @ims_pcu_parse_cdc_data._entry, section ".printk_index", align 4
@ims_pcu_parse_cdc_data._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 1691, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"First endpoint on data interface is not BULK OUT\0A\00", [46 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry_ptr.12 = internal global ptr @ims_pcu_parse_cdc_data._entry.10, section ".printk_index", align 4
@ims_pcu_parse_cdc_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 1699, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Max OUT packet size is too small (%zd)\0A\00", [56 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry_ptr.15 = internal global ptr @ims_pcu_parse_cdc_data._entry.13, section ".printk_index", align 4
@ims_pcu_parse_cdc_data._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.4, i32 1706, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Second endpoint on data interface is not BULK IN\0A\00", [46 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry_ptr.18 = internal global ptr @ims_pcu_parse_cdc_data._entry.16, section ".printk_index", align 4
@ims_pcu_parse_cdc_data._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.4, i32 1714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Max IN packet size is too small (%zd)\0A\00", [57 x i8] zeroinitializer }, align 32
@ims_pcu_parse_cdc_data._entry_ptr.21 = internal global ptr @ims_pcu_parse_cdc_data._entry.19, section ".printk_index", align 4
@ims_pcu_get_cdc_union_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 1615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing descriptor data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ims_pcu_get_cdc_union_desc\00", [37 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry_ptr = internal global ptr @ims_pcu_get_cdc_union_desc._entry, section ".printk_index", align 4
@ims_pcu_get_cdc_union_desc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 1620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Zero length descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry_ptr.26 = internal global ptr @ims_pcu_get_cdc_union_desc._entry.24, section ".printk_index", align 4
@ims_pcu_get_cdc_union_desc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 1628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Too large descriptor\0A\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry_ptr.29 = internal global ptr @ims_pcu_get_cdc_union_desc._entry.27, section ".printk_index", align 4
@ims_pcu_get_cdc_union_desc.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.30, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found union header\0A\00", [44 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.4, i32 1641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Union descriptor too short (%d vs %zd)\0A\00", [56 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry_ptr.33 = internal global ptr @ims_pcu_get_cdc_union_desc._entry.31, section ".printk_index", align 4
@ims_pcu_get_cdc_union_desc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.4, i32 1649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Missing CDC union descriptor\0A\00", [34 x i8] zeroinitializer }, align 32
@ims_pcu_get_cdc_union_desc._entry_ptr.36 = internal global ptr @ims_pcu_get_cdc_union_desc._entry.34, section ".printk_index", align 4
@ims_pcu_buffers_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate memory for read buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ims_pcu_buffers_alloc\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_buffers_alloc._entry_ptr = internal global ptr @ims_pcu_buffers_alloc._entry, section ".printk_index", align 4
@ims_pcu_buffers_alloc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 1525, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate input URB\0A\00", [34 x i8] zeroinitializer }, align 32
@ims_pcu_buffers_alloc._entry_ptr.41 = internal global ptr @ims_pcu_buffers_alloc._entry.39, section ".printk_index", align 4
@ims_pcu_buffers_alloc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 1545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate memory for write buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@ims_pcu_buffers_alloc._entry_ptr.44 = internal global ptr @ims_pcu_buffers_alloc._entry.42, section ".printk_index", align 4
@ims_pcu_buffers_alloc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ims_pcu_buffers_alloc._entry_ptr.46 = internal global ptr @ims_pcu_buffers_alloc._entry.45, section ".printk_index", align 4
@ims_pcu_buffers_alloc._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 1561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ims_pcu_buffers_alloc._entry_ptr.48 = internal global ptr @ims_pcu_buffers_alloc._entry.47, section ".printk_index", align 4
@ims_pcu_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ims_pcu_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ims_pcu_irq.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 1, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ims_pcu_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.52, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: received %d: %*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@ims_pcu_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.49, ptr @.str.4, i32 1508, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ims_pcu_irq._entry_ptr = internal global ptr @ims_pcu_irq._entry, section ".printk_index", align 4
@ims_pcu_process_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 465, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unexpected STX at byte %d, discarding old data\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ims_pcu_process_data\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ims_pcu_process_data._entry_ptr = internal global ptr @ims_pcu_process_data._entry, section ".printk_index", align 4
@ims_pcu_process_data._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.4, i32 480, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Short packet received (%d bytes), ignoring\0A\00", [52 x i8] zeroinitializer }, align 32
@ims_pcu_process_data._entry_ptr.59 = internal global ptr @ims_pcu_process_data._entry.57, section ".printk_index", align 4
@ims_pcu_process_data._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.4, i32 484, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid checksum in packet (%d bytes), ignoring\0A\00", [47 x i8] zeroinitializer }, align 32
@ims_pcu_process_data._entry_ptr.62 = internal global ptr @ims_pcu_process_data._entry.60, section ".printk_index", align 4
@ims_pcu_start_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 1729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to start control IO - usb_submit_urb failed with result: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ims_pcu_start_io\00", [47 x i8] zeroinitializer }, align 32
@ims_pcu_start_io._entry_ptr = internal global ptr @ims_pcu_start_io._entry, section ".printk_index", align 4
@ims_pcu_start_io._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 1737, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to start IO - usb_submit_urb failed with result: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ims_pcu_start_io._entry_ptr.67 = internal global ptr @ims_pcu_start_io._entry.65, section ".printk_index", align 4
@ims_pcu_line_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 1769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set line coding, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ims_pcu_line_setup\00", [45 x i8] zeroinitializer }, align 32
@ims_pcu_line_setup._entry_ptr = internal global ptr @ims_pcu_line_setup._entry, section ".printk_index", align 4
@ims_pcu_line_setup._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 1780, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set line state, error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ims_pcu_line_setup._entry_ptr.72 = internal global ptr @ims_pcu_line_setup._entry.70, section ".printk_index", align 4
@ims_pcu_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @ims_pcu_attr_part_number, ptr @ims_pcu_attr_serial_number, ptr @ims_pcu_attr_date_of_manufacturing, ptr @ims_pcu_attr_fw_version, ptr @ims_pcu_attr_bl_version, ptr @ims_pcu_attr_reset_reason, ptr @dev_attr_reset_device, ptr @dev_attr_update_firmware, ptr @dev_attr_update_firmware_status, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_update_firmware_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_update_firmware_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ims_pcu_update_firmware_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ims_pcu_reset_device }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_firmware_status\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_firmware\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imspcu.fw\00", [22 x i8] zeroinitializer }, align 32
@ims_pcu_update_firmware_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request firmware %s, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ims_pcu_update_firmware_store\00", [34 x i8] zeroinitializer }, align 32
@ims_pcu_update_firmware_store._entry_ptr = internal global ptr @ims_pcu_update_firmware_store._entry, section ".printk_index", align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.81, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@ims_pcu_handle_firmware_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 892, ptr @.str.84, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Updating firmware %s, size: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ims_pcu_handle_firmware_update\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ims_pcu_handle_firmware_update._entry_ptr = internal global ptr @ims_pcu_handle_firmware_update._entry, section ".printk_index", align 4
@ims_pcu_handle_firmware_update._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.4, i32 904, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to start application image, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ims_pcu_handle_firmware_update._entry_ptr.87 = internal global ptr @ims_pcu_handle_firmware_update._entry.85, section ".printk_index", align 4
@ims_pcu_flash_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to erase application image, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ims_pcu_flash_firmware\00", [41 x i8] zeroinitializer }, align 32
@ims_pcu_flash_firmware._entry_ptr = internal global ptr @ims_pcu_flash_firmware._entry, section ".printk_index", align 4
@ims_pcu_flash_firmware._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.4, i32 859, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to write block at 0x%08x, len %d, error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ims_pcu_flash_firmware._entry_ptr.92 = internal global ptr @ims_pcu_flash_firmware._entry.90, section ".printk_index", align 4
@ims_pcu_flash_firmware._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to send PROGRAM_COMPLETE, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ims_pcu_flash_firmware._entry_ptr.95 = internal global ptr @ims_pcu_flash_firmware._entry.93, section ".printk_index", align 4
@ims_pcu_verify_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 795, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to retrieve block at 0x%08x, len %d, error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ims_pcu_verify_block\00", [43 x i8] zeroinitializer }, align 32
@ims_pcu_verify_block._entry_ptr = internal global ptr @ims_pcu_verify_block._entry, section ".printk_index", align 4
@ims_pcu_verify_block._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.4, i32 805, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Wrong block when retrieving 0x%08x (0x%08x), len %d (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@ims_pcu_verify_block._entry_ptr.100 = internal global ptr @ims_pcu_verify_block._entry.98, section ".printk_index", align 4
@ims_pcu_verify_block._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Mismatch in block at 0x%08x, len %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ims_pcu_verify_block._entry_ptr.103 = internal global ptr @ims_pcu_verify_block._entry.101, section ".printk_index", align 4
@__ims_pcu_execute_bl_command._entry = internal constant %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 666, ptr @.str.5, ptr @.str.6 }, align 1
@.str.104 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failure when sending 0x%02x command to bootloader, error: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__ims_pcu_execute_bl_command\00", [35 x i8] zeroinitializer }, align 32
@__ims_pcu_execute_bl_command._entry_ptr = internal global ptr @__ims_pcu_execute_bl_command._entry, section ".printk_index", align 4
@__ims_pcu_execute_bl_command._entry.106 = internal constant %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 673, ptr @.str.5, ptr @.str.6 }, align 1
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unexpected response from bootloader: 0x%02x, wanted 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@__ims_pcu_execute_bl_command._entry_ptr.108 = internal global ptr @__ims_pcu_execute_bl_command._entry.106, section ".printk_index", align 4
@__ims_pcu_execute_command.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.4, ptr @.str.110, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__ims_pcu_execute_command\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Command 0x%02x timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.4, ptr @.str.112, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ims_pcu_send_cmd_chunk\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sending 0x%02x command failed at chunk %d: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ims_pcu_switch_to_bootloader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failure when sending JUMP TO BOOLTLOADER command, error: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ims_pcu_switch_to_bootloader\00", [35 x i8] zeroinitializer }, align 32
@ims_pcu_switch_to_bootloader._entry_ptr = internal global ptr @ims_pcu_switch_to_bootloader._entry, section ".printk_index", align 4
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset_device\00", [19 x i8] zeroinitializer }, align 32
@ims_pcu_reset_device.reset_byte = internal constant { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@ims_pcu_reset_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.4, i32 1135, ptr @.str.84, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Attempting to reset device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ims_pcu_reset_device\00", [43 x i8] zeroinitializer }, align 32
@ims_pcu_reset_device._entry_ptr = internal global ptr @ims_pcu_reset_device._entry, section ".printk_index", align 4
@ims_pcu_reset_device._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.4, i32 1141, ptr @.str.84, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to reset device, error: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ims_pcu_reset_device._entry_ptr.120 = internal global ptr @ims_pcu_reset_device._entry.118, section ".printk_index", align 4
@ims_pcu_attr_part_number = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 13, i32 15 }, [60 x i8] zeroinitializer }, align 32
@ims_pcu_attr_serial_number = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 28, i32 8 }, [60 x i8] zeroinitializer }, align 32
@ims_pcu_attr_date_of_manufacturing = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 36, i32 8 }, [60 x i8] zeroinitializer }, align 32
@ims_pcu_attr_fw_version = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 44, i32 10 }, [60 x i8] zeroinitializer }, align 32
@ims_pcu_attr_bl_version = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 54, i32 10 }, [60 x i8] zeroinitializer }, align 32
@ims_pcu_attr_reset_reason = internal global { %struct.ims_pcu_attribute, [60 x i8] } { %struct.ims_pcu_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_attribute_show, ptr @ims_pcu_attribute_store }, i32 64, i32 3 }, [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"part_number\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@ims_pcu_set_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.4, i32 732, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to update device information, error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ims_pcu_set_info\00", [47 x i8] zeroinitializer }, align 32
@ims_pcu_set_info._entry_ptr = internal global ptr @ims_pcu_set_info._entry, section ".printk_index", align 4
@ims_pcu_get_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GET_INFO command failed, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ims_pcu_get_info\00", [47 x i8] zeroinitializer }, align 32
@ims_pcu_get_info._entry_ptr = internal global ptr @ims_pcu_get_info._entry, section ".printk_index", align 4
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"date_of_manufacturing\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bl_version\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset_reason\00", [19 x i8] zeroinitializer }, align 32
@ims_pcu_init_bootloader_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.4, i32 1953, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Bootloader does not respond, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ims_pcu_init_bootloader_mode\00", [35 x i8] zeroinitializer }, align 32
@ims_pcu_init_bootloader_mode._entry_ptr = internal global ptr @ims_pcu_init_bootloader_mode._entry, section ".printk_index", align 4
@ims_pcu_init_bootloader_mode._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.4, i32 1964, ptr @.str.84, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Device is in bootloader mode (addr 0x%08x-0x%08x), requesting firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@ims_pcu_init_bootloader_mode._entry_ptr.136 = internal global ptr @ims_pcu_init_bootloader_mode._entry.134, section ".printk_index", align 4
@ims_pcu_process_async_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.4, i32 920, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get firmware %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ims_pcu_process_async_firmware\00", [33 x i8] zeroinitializer }, align 32
@ims_pcu_process_async_firmware._entry_ptr = internal global ptr @ims_pcu_process_async_firmware._entry, section ".printk_index", align 4
@ims_pcu_process_async_firmware._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.4, i32 927, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware %s is invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@ims_pcu_process_async_firmware._entry_ptr.141 = internal global ptr @ims_pcu_process_async_firmware._entry.139, section ".printk_index", align 4
@ims_pcu_init_application_mode.device_no = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@ims_pcu_init_application_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.4, i32 1874, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to identify device, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ims_pcu_init_application_mode\00", [34 x i8] zeroinitializer }, align 32
@ims_pcu_init_application_mode._entry_ptr = internal global ptr @ims_pcu_init_application_mode._entry, section ".printk_index", align 4
@ims_pcu_device_info = internal constant { [6 x %struct.ims_pcu_device_info], [56 x i8] } { [6 x %struct.ims_pcu_device_info] [%struct.ims_pcu_device_info zeroinitializer, %struct.ims_pcu_device_info { ptr @ims_pcu_keymap_1, i32 7, i8 1 }, %struct.ims_pcu_device_info { ptr @ims_pcu_keymap_2, i32 7, i8 1 }, %struct.ims_pcu_device_info { ptr @ims_pcu_keymap_3, i32 19, i8 1 }, %struct.ims_pcu_device_info { ptr @ims_pcu_keymap_4, i32 19, i8 1 }, %struct.ims_pcu_device_info { ptr @ims_pcu_keymap_5, i32 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@ims_pcu_init_application_mode._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.4, i32 1885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device ID %d is not valid\0A\00", [37 x i8] zeroinitializer }, align 32
@ims_pcu_init_application_mode._entry_ptr.146 = internal global ptr @ims_pcu_init_application_mode._entry.144, section ".printk_index", align 4
@ims_pcu_ofn_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.161, ptr null, ptr null, ptr @ims_pcu_ofn_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.4, i32 1798, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"GET_FW_VERSION command failed, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ims_pcu_get_device_info\00", [40 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info._entry_ptr = internal global ptr @ims_pcu_get_device_info._entry, section ".printk_index", align 4
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%02d%02d%02d%02d.%c%c\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.148, ptr @.str.4, i32 1810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"GET_BL_VERSION command failed, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info._entry_ptr.152 = internal global ptr @ims_pcu_get_device_info._entry.150, section ".printk_index", align 4
@ims_pcu_get_device_info._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.148, ptr @.str.4, i32 1822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RESET_REASON command failed, error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info._entry_ptr.155 = internal global ptr @ims_pcu_get_device_info._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@ims_pcu_get_device_info.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.4, ptr @.str.157, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"P/N: %s, MD: %s, S/N: %s, FW: %s, BL: %s, RR: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@ims_pcu_identify_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.4, i32 1848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GET_DEVICE_ID command failed, error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ims_pcu_identify_type\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_identify_type._entry_ptr = internal global ptr @ims_pcu_identify_type._entry, section ".printk_index", align 4
@ims_pcu_identify_type.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.159, ptr @.str.4, ptr @.str.160, i8 1, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Detected device ID: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ims_pcu_keymap_1 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 540, i16 539, i16 542, i16 115, i16 114, i16 358], [18 x i8] zeroinitializer }, align 32
@ims_pcu_keymap_2 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 115, i16 114, i16 358], [18 x i8] zeroinitializer }, align 32
@ims_pcu_keymap_3 = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 0, i16 172, i16 541, i16 542, i16 115, i16 114, i16 431, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 164], [58 x i8] zeroinitializer }, align 32
@ims_pcu_keymap_4 = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 0, i16 540, i16 539, i16 542, i16 115, i16 114, i16 358, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 164], [58 x i8] zeroinitializer }, align 32
@ims_pcu_keymap_5 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 540, i16 539, i16 542], [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ofn\00", [28 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_reg_data, ptr @dev_attr_reg_addr, ptr @ims_pcu_ofn_attr_engine_enable, ptr @ims_pcu_ofn_attr_speed_enable, ptr @ims_pcu_ofn_attr_assert_enable, ptr @ims_pcu_ofn_attr_xyquant_enable, ptr @ims_pcu_ofn_attr_xyscale_enable, ptr @ims_pcu_ofn_attr_scale_x2, ptr @ims_pcu_ofn_attr_scale_y2, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_reg_data = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_reg_data_show, ptr @ims_pcu_ofn_reg_data_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reg_addr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_reg_addr_show, ptr @ims_pcu_ofn_reg_addr_store }, [36 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_engine_enable = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 96, i8 7 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_speed_enable = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 96, i8 6 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_assert_enable = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 96, i8 5 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_xyquant_enable = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 96, i8 4 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_xyscale_enable = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 96, i8 1 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_scale_x2 = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 99, i8 6 }, [32 x i8] zeroinitializer }, align 32
@ims_pcu_ofn_attr_scale_y2 = internal global { %struct.ims_pcu_ofn_bit_attribute, [32 x i8] } { %struct.ims_pcu_ofn_bit_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ims_pcu_ofn_bit_show, ptr @ims_pcu_ofn_bit_store }, i8 99, i8 7 }, [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_data\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"engine_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speed_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"assert_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xyquant_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xyscale_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scale_x2\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scale_y2\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcu%d::kbd_backlight\00", [43 x i8] zeroinitializer }, align 32
@ims_pcu_setup_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.4, i32 1018, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to register backlight LED device, error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ims_pcu_setup_backlight\00", [40 x i8] zeroinitializer }, align 32
@ims_pcu_setup_backlight._entry_ptr = internal global ptr @ims_pcu_setup_backlight._entry, section ".printk_index", align 4
@ims_pcu_backlight_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.4, i32 987, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get current brightness, error: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ims_pcu_backlight_get_brightness\00", [63 x i8] zeroinitializer }, align 32
@ims_pcu_backlight_get_brightness._entry_ptr = internal global ptr @ims_pcu_backlight_get_brightness._entry, section ".printk_index", align 4
@ims_pcu_backlight_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.4, i32 964, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to set desired brightness %u, error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ims_pcu_backlight_set_brightness\00", [63 x i8] zeroinitializer }, align 32
@ims_pcu_backlight_set_brightness._entry_ptr = internal global ptr @ims_pcu_backlight_set_brightness._entry, section ".printk_index", align 4
@ims_pcu_setup_buttons._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not enough memory for input input device\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ims_pcu_setup_buttons\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_setup_buttons._entry_ptr = internal global ptr @ims_pcu_setup_buttons._entry, section ".printk_index", align 4
@.str.181 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IMS PCU#%d Button Interface\00", [36 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@ims_pcu_setup_buttons._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.180, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to register buttons input device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ims_pcu_setup_buttons._entry_ptr.185 = internal global ptr @ims_pcu_setup_buttons._entry.183, section ".printk_index", align 4
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@ims_pcu_setup_gamepad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Not enough memory for gamepad device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ims_pcu_setup_gamepad\00", [42 x i8] zeroinitializer }, align 32
@ims_pcu_setup_gamepad._entry_ptr = internal global ptr @ims_pcu_setup_gamepad._entry, section ".printk_index", align 4
@.str.189 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IMS PCU#%d Gamepad Interface\00", [35 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input1\00", [24 x i8] zeroinitializer }, align 32
@ims_pcu_setup_gamepad._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.188, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to register gamepad input device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ims_pcu_setup_gamepad._entry_ptr.193 = internal global ptr @ims_pcu_setup_gamepad._entry.191, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@___asan_gen_.200 = private unnamed_addr constant [15 x i8] c"ims_pcu_driver\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 2133, i32 26 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 2145, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"ims_pcu_id_table\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 2115, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 2003, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 2014, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"ims_pcu_attr_group\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1250, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 87, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1682, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1690, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1697, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1705, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1712, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1615, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1620, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1628, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1634, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1639, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1649, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1518, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1525, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1545, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1553, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1561, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1489, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1493, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1498, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1507, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 463, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 478, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 482, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1727, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1735, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1768, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1779, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [14 x i8] c"ims_pcu_attrs\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1215, i32 26 }
@___asan_gen_.413 = private unnamed_addr constant [32 x i8] c"dev_attr_update_firmware_status\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [25 x i8] c"dev_attr_update_firmware\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"dev_attr_reset_device\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1212, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1209, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1198, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1171, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1173, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 76, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 891, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 902, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 832, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 857, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 878, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 793, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 802, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 810, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 664, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 671, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 611, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 520, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 746, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1148, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant [11 x i8] c"reset_byte\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1122, i32 18 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1135, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1139, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant [25 x i8] c"ims_pcu_attr_part_number\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [27 x i8] c"ims_pcu_attr_serial_number\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [35 x i8] c"ims_pcu_attr_date_of_manufacturing\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [24 x i8] c"ims_pcu_attr_fw_version\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [24 x i8] c"ims_pcu_attr_bl_version\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [26 x i8] c"ims_pcu_attr_reset_reason\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1110, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1053, i32 35 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 730, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 697, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1111, i32 8 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1112, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1114, i32 8 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1115, i32 8 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1116, i32 8 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1953, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1962, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 919, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 926, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [10 x i8] c"device_no\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1860, i32 18 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1873, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant [20 x i8] c"ims_pcu_device_info\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 175, i32 41 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1885, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant [23 x i8] c"ims_pcu_ofn_attr_group\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1469, i32 37 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1797, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1803, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1809, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1821, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1827, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1829, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1847, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1853, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [17 x i8] c"ims_pcu_keymap_1\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 121, i32 29 }
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"ims_pcu_keymap_2\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 130, i32 29 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"ims_pcu_keymap_3\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 136, i32 29 }
@___asan_gen_.728 = private unnamed_addr constant [17 x i8] c"ims_pcu_keymap_4\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 146, i32 29 }
@___asan_gen_.731 = private unnamed_addr constant [17 x i8] c"ims_pcu_keymap_5\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 156, i32 29 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1470, i32 10 }
@___asan_gen_.737 = private unnamed_addr constant [18 x i8] c"ims_pcu_ofn_attrs\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1456, i32 26 }
@___asan_gen_.740 = private unnamed_addr constant [18 x i8] c"dev_attr_reg_data\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [18 x i8] c"dev_attr_reg_addr\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [31 x i8] c"ims_pcu_ofn_attr_engine_enable\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [30 x i8] c"ims_pcu_ofn_attr_speed_enable\00", align 1
@___asan_gen_.752 = private unnamed_addr constant [31 x i8] c"ims_pcu_ofn_attr_assert_enable\00", align 1
@___asan_gen_.755 = private unnamed_addr constant [32 x i8] c"ims_pcu_ofn_attr_xyquant_enable\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [32 x i8] c"ims_pcu_ofn_attr_xyscale_enable\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [26 x i8] c"ims_pcu_ofn_attr_scale_x2\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [26 x i8] c"ims_pcu_ofn_attr_scale_y2\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1335, i32 8 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1312, i32 35 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1373, i32 8 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1447, i32 8 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1448, i32 8 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1449, i32 8 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1450, i32 8 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1451, i32 8 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1453, i32 8 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1454, i32 8 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1006, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 1016, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 985, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 962, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 210, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 216, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 219, i32 25 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 239, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 912, i32 31 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 293, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 302, i32 4 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 305, i32 25 }
@___asan_gen_.866 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.870 = private constant [32 x i8] c"../drivers/input/misc/ims-pcu.c\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.870, i32 326, i32 3 }
@llvm.compiler.used = appending global [291 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_ims_pcu_driver_exit, ptr @__ims_pcu_execute_bl_command._entry, ptr @__ims_pcu_execute_bl_command._entry.106, ptr @__ims_pcu_execute_bl_command._entry_ptr, ptr @__ims_pcu_execute_bl_command._entry_ptr.108, ptr @__initcall__kmod_ims_pcu__240_2145_ims_pcu_driver_init6, ptr @ims_pcu_backlight_get_brightness._entry, ptr @ims_pcu_backlight_get_brightness._entry_ptr, ptr @ims_pcu_backlight_set_brightness._entry, ptr @ims_pcu_backlight_set_brightness._entry_ptr, ptr @ims_pcu_buffers_alloc._entry, ptr @ims_pcu_buffers_alloc._entry.39, ptr @ims_pcu_buffers_alloc._entry.42, ptr @ims_pcu_buffers_alloc._entry.45, ptr @ims_pcu_buffers_alloc._entry.47, ptr @ims_pcu_buffers_alloc._entry_ptr, ptr @ims_pcu_buffers_alloc._entry_ptr.41, ptr @ims_pcu_buffers_alloc._entry_ptr.44, ptr @ims_pcu_buffers_alloc._entry_ptr.46, ptr @ims_pcu_buffers_alloc._entry_ptr.48, ptr @ims_pcu_driver_exit, ptr @ims_pcu_flash_firmware._entry, ptr @ims_pcu_flash_firmware._entry.90, ptr @ims_pcu_flash_firmware._entry.93, ptr @ims_pcu_flash_firmware._entry_ptr, ptr @ims_pcu_flash_firmware._entry_ptr.92, ptr @ims_pcu_flash_firmware._entry_ptr.95, ptr @ims_pcu_get_cdc_union_desc._entry, ptr @ims_pcu_get_cdc_union_desc._entry.24, ptr @ims_pcu_get_cdc_union_desc._entry.27, ptr @ims_pcu_get_cdc_union_desc._entry.31, ptr @ims_pcu_get_cdc_union_desc._entry.34, ptr @ims_pcu_get_cdc_union_desc._entry_ptr, ptr @ims_pcu_get_cdc_union_desc._entry_ptr.26, ptr @ims_pcu_get_cdc_union_desc._entry_ptr.29, ptr @ims_pcu_get_cdc_union_desc._entry_ptr.33, ptr @ims_pcu_get_cdc_union_desc._entry_ptr.36, ptr @ims_pcu_get_device_info._entry, ptr @ims_pcu_get_device_info._entry.150, ptr @ims_pcu_get_device_info._entry.153, ptr @ims_pcu_get_device_info._entry_ptr, ptr @ims_pcu_get_device_info._entry_ptr.152, ptr @ims_pcu_get_device_info._entry_ptr.155, ptr @ims_pcu_get_info._entry, ptr @ims_pcu_get_info._entry_ptr, ptr @ims_pcu_handle_firmware_update._entry, ptr @ims_pcu_handle_firmware_update._entry.85, ptr @ims_pcu_handle_firmware_update._entry_ptr, ptr @ims_pcu_handle_firmware_update._entry_ptr.87, ptr @ims_pcu_identify_type._entry, ptr @ims_pcu_identify_type._entry_ptr, ptr @ims_pcu_init_application_mode._entry, ptr @ims_pcu_init_application_mode._entry.144, ptr @ims_pcu_init_application_mode._entry_ptr, ptr @ims_pcu_init_application_mode._entry_ptr.146, ptr @ims_pcu_init_bootloader_mode._entry, ptr @ims_pcu_init_bootloader_mode._entry.134, ptr @ims_pcu_init_bootloader_mode._entry_ptr, ptr @ims_pcu_init_bootloader_mode._entry_ptr.136, ptr @ims_pcu_irq._entry, ptr @ims_pcu_irq._entry_ptr, ptr @ims_pcu_line_setup._entry, ptr @ims_pcu_line_setup._entry.70, ptr @ims_pcu_line_setup._entry_ptr, ptr @ims_pcu_line_setup._entry_ptr.72, ptr @ims_pcu_parse_cdc_data._entry, ptr @ims_pcu_parse_cdc_data._entry.10, ptr @ims_pcu_parse_cdc_data._entry.13, ptr @ims_pcu_parse_cdc_data._entry.16, ptr @ims_pcu_parse_cdc_data._entry.19, ptr @ims_pcu_parse_cdc_data._entry_ptr, ptr @ims_pcu_parse_cdc_data._entry_ptr.12, ptr @ims_pcu_parse_cdc_data._entry_ptr.15, ptr @ims_pcu_parse_cdc_data._entry_ptr.18, ptr @ims_pcu_parse_cdc_data._entry_ptr.21, ptr @ims_pcu_probe._entry, ptr @ims_pcu_probe._entry_ptr, ptr @ims_pcu_process_async_firmware._entry, ptr @ims_pcu_process_async_firmware._entry.139, ptr @ims_pcu_process_async_firmware._entry_ptr, ptr @ims_pcu_process_async_firmware._entry_ptr.141, ptr @ims_pcu_process_data._entry, ptr @ims_pcu_process_data._entry.57, ptr @ims_pcu_process_data._entry.60, ptr @ims_pcu_process_data._entry_ptr, ptr @ims_pcu_process_data._entry_ptr.59, ptr @ims_pcu_process_data._entry_ptr.62, ptr @ims_pcu_reset_device._entry, ptr @ims_pcu_reset_device._entry.118, ptr @ims_pcu_reset_device._entry_ptr, ptr @ims_pcu_reset_device._entry_ptr.120, ptr @ims_pcu_set_info._entry, ptr @ims_pcu_set_info._entry_ptr, ptr @ims_pcu_setup_backlight._entry, ptr @ims_pcu_setup_backlight._entry_ptr, ptr @ims_pcu_setup_buttons._entry, ptr @ims_pcu_setup_buttons._entry.183, ptr @ims_pcu_setup_buttons._entry_ptr, ptr @ims_pcu_setup_buttons._entry_ptr.185, ptr @ims_pcu_setup_gamepad._entry, ptr @ims_pcu_setup_gamepad._entry.191, ptr @ims_pcu_setup_gamepad._entry_ptr, ptr @ims_pcu_setup_gamepad._entry_ptr.193, ptr @ims_pcu_start_io._entry, ptr @ims_pcu_start_io._entry.65, ptr @ims_pcu_start_io._entry_ptr, ptr @ims_pcu_start_io._entry_ptr.67, ptr @ims_pcu_switch_to_bootloader._entry, ptr @ims_pcu_switch_to_bootloader._entry_ptr, ptr @ims_pcu_update_firmware_store._entry, ptr @ims_pcu_update_firmware_store._entry_ptr, ptr @ims_pcu_verify_block._entry, ptr @ims_pcu_verify_block._entry.101, ptr @ims_pcu_verify_block._entry.98, ptr @ims_pcu_verify_block._entry_ptr, ptr @ims_pcu_verify_block._entry_ptr.100, ptr @ims_pcu_verify_block._entry_ptr.103, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @ims_pcu_driver, ptr @.str, ptr @ims_pcu_id_table, ptr @ims_pcu_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ims_pcu_attr_group, ptr @init_completion.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @ims_pcu_attrs, ptr @dev_attr_update_firmware_status, ptr @dev_attr_update_firmware, ptr @dev_attr_reset_device, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @ims_pcu_reset_device.reset_byte, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @ims_pcu_attr_part_number, ptr @ims_pcu_attr_serial_number, ptr @ims_pcu_attr_date_of_manufacturing, ptr @ims_pcu_attr_fw_version, ptr @ims_pcu_attr_bl_version, ptr @ims_pcu_attr_reset_reason, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @ims_pcu_init_application_mode.device_no, ptr @.str.142, ptr @.str.143, ptr @ims_pcu_device_info, ptr @.str.145, ptr @ims_pcu_ofn_attr_group, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @ims_pcu_keymap_1, ptr @ims_pcu_keymap_2, ptr @ims_pcu_keymap_3, ptr @ims_pcu_keymap_4, ptr @ims_pcu_keymap_5, ptr @.str.161, ptr @ims_pcu_ofn_attrs, ptr @dev_attr_reg_data, ptr @dev_attr_reg_addr, ptr @ims_pcu_ofn_attr_engine_enable, ptr @ims_pcu_ofn_attr_speed_enable, ptr @ims_pcu_ofn_attr_assert_enable, ptr @ims_pcu_ofn_attr_xyquant_enable, ptr @ims_pcu_ofn_attr_xyscale_enable, ptr @ims_pcu_ofn_attr_scale_x2, ptr @ims_pcu_ofn_attr_scale_y2, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192], section "llvm.metadata"
@0 = internal global [224 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_parse_cdc_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_parse_cdc_data._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_parse_cdc_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_parse_cdc_data._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_parse_cdc_data._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_cdc_union_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_cdc_union_desc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_cdc_union_desc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_cdc_union_desc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_cdc_union_desc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_buffers_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_buffers_alloc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_buffers_alloc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_buffers_alloc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_buffers_alloc._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_process_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_process_data._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_process_data._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_start_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_start_io._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_line_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_line_setup._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_firmware_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_update_firmware_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_handle_firmware_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_handle_firmware_update._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_flash_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_flash_firmware._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_flash_firmware._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_verify_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_verify_block._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_verify_block._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_switch_to_bootloader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_reset_device.reset_byte to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_reset_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_reset_device._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_part_number to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_serial_number to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_date_of_manufacturing to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_fw_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_bl_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_attr_reset_reason to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_set_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_init_bootloader_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_init_bootloader_mode._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_process_async_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_process_async_firmware._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_init_application_mode.device_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_init_application_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_device_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_init_application_mode._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_device_info._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_get_device_info._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_identify_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_keymap_1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_keymap_2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_keymap_3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_keymap_4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_keymap_5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reg_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reg_addr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_engine_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_speed_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_assert_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_xyquant_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_xyscale_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_scale_x2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_ofn_attr_scale_y2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_setup_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_backlight_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_backlight_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_setup_buttons._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_setup_buttons._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_setup_gamepad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ims_pcu_setup_gamepad._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ims_pcu_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ims_pcu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @ims_pcu_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1184) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev2 = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %5 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %bootloader_mode = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 3
  %frombool = zext i1 %cmp to i8
  %7 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %bootloader_mode, align 4
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @ims_pcu_probe.__key) #14
  %cmd_done = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 37
  %8 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done, align 8
  %wait.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %async_firmware_done = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 41
  %9 = ptrtoint ptr %async_firmware_done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %async_firmware_done, align 4
  %wait.i79 = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 41, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i79, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc ptr @ims_pcu_get_cdc_union_desc(ptr noundef %intf) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.err_free_mem_crit_edge, label %if.end.i

if.end.err_free_mem_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_mem

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %bMasterInterface0.i = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %bMasterInterface0.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bMasterInterface0.i, align 1
  %conv.i = zext i8 %13 to i32
  %call1.i = tail call ptr @usb_ifnum_to_if(ptr noundef %11, i32 noundef %conv.i) #14
  %ctrl_intf.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i, ptr %ctrl_intf.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_free_mem_crit_edge, label %if.end5.i

if.end.i.err_free_mem_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_mem

if.end5.i:                                        ; preds = %if.end.i
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call1.i, i32 0, i32 1
  %15 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  br i1 %cmp.i, label %if.end5.i.err_free_mem_crit_edge, label %if.end10.i

if.end5.i.err_free_mem_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_mem

if.end10.i:                                       ; preds = %if.end5.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoint.i, align 4
  %ep_ctrl.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %ep_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ep_ctrl.i, align 8
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 4
  %22 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %24 = and i16 %23, -249
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #14
  %and.i.i = zext i16 %25 to i32
  %max_ctrl_size.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 18
  %26 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i.i, ptr %max_ctrl_size.i, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %bSlaveInterface0.i = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %bSlaveInterface0.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bSlaveInterface0.i, align 1
  %conv15.i = zext i8 %30 to i32
  %call16.i = tail call ptr @usb_ifnum_to_if(ptr noundef %28, i32 noundef %conv15.i) #14
  %data_intf.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data_intf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16.i, ptr %data_intf.i, align 4
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %if.end10.i.err_free_mem_crit_edge, label %if.end20.i

if.end10.i.err_free_mem_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_mem

if.end20.i:                                       ; preds = %if.end10.i
  %cur_altsetting22.i = getelementptr inbounds %struct.usb_interface, ptr %call16.i, i32 0, i32 1
  %32 = ptrtoint ptr %cur_altsetting22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur_altsetting22.i, align 4
  %bNumEndpoints24.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %bNumEndpoints24.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumEndpoints24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp26.not.i = icmp eq i8 %35, 2
  br i1 %cmp26.not.i, label %if.end32.i, label %do.end.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv25.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %conv25.i) #18
  br label %err_free_mem

if.end32.i:                                       ; preds = %if.end20.i
  %endpoint33.i = getelementptr inbounds %struct.usb_host_interface, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %endpoint33.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %endpoint33.i, align 4
  %ep_out.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 25
  %40 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ep_out.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 3
  %41 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bmAttributes.i.i.i, align 1
  %43 = and i8 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp.i.not.i.i = icmp eq i8 %43, 2
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_bulk_out.exit.i, label %if.end32.i.do.end42.i_crit_edge

if.end32.i.do.end42.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42.i

usb_endpoint_is_bulk_out.exit.i:                  ; preds = %if.end32.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not.i = icmp slt i8 %45, 0
  br i1 %tobool38.not.i, label %usb_endpoint_is_bulk_out.exit.i.do.end42.i_crit_edge, label %if.end44.i

usb_endpoint_is_bulk_out.exit.i.do.end42.i_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42.i

do.end42.i:                                       ; preds = %usb_endpoint_is_bulk_out.exit.i.do.end42.i_crit_edge, %if.end32.i.do.end42.i_crit_edge
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.11) #18
  br label %err_free_mem

if.end44.i:                                       ; preds = %usb_endpoint_is_bulk_out.exit.i
  %wMaxPacketSize.i116.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 4
  %48 = ptrtoint ptr %wMaxPacketSize.i116.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wMaxPacketSize.i116.i, align 1
  %50 = and i16 %49, -249
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #14
  %and.i117.i = zext i16 %51 to i32
  %max_out_size.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 27
  %52 = ptrtoint ptr %max_out_size.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i117.i, ptr %max_out_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %51)
  %cmp48.i = icmp ult i16 %51, 8
  br i1 %cmp48.i, label %do.end53.i, label %if.end56.i

do.end53.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.14, i32 noundef %and.i117.i) #18
  br label %err_free_mem

if.end56.i:                                       ; preds = %if.end44.i
  %55 = ptrtoint ptr %endpoint33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %endpoint33.i, align 4
  %arrayidx58.i = getelementptr %struct.usb_host_endpoint, ptr %56, i32 1
  %ep_in.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 20
  %57 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx58.i, ptr %ep_in.i, align 8
  %bmAttributes.i.i118.i = getelementptr %struct.usb_host_endpoint, ptr %56, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %bmAttributes.i.i118.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bmAttributes.i.i118.i, align 1
  %60 = and i8 %59, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp.i.not.i119.i = icmp eq i8 %60, 2
  br i1 %cmp.i.not.i119.i, label %usb_endpoint_is_bulk_in.exit.i, label %if.end56.i.do.end66.i_crit_edge

if.end56.i.do.end66.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66.i

usb_endpoint_is_bulk_in.exit.i:                   ; preds = %if.end56.i
  %bEndpointAddress.i.i120.i = getelementptr %struct.usb_host_endpoint, ptr %56, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %bEndpointAddress.i.i120.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bEndpointAddress.i.i120.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %tobool62.not.i = icmp sgt i8 %62, -1
  br i1 %tobool62.not.i, label %usb_endpoint_is_bulk_in.exit.i.do.end66.i_crit_edge, label %if.end68.i

usb_endpoint_is_bulk_in.exit.i.do.end66.i_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66.i

do.end66.i:                                       ; preds = %usb_endpoint_is_bulk_in.exit.i.do.end66.i_crit_edge, %if.end56.i.do.end66.i_crit_edge
  %63 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.17) #18
  br label %err_free_mem

if.end68.i:                                       ; preds = %usb_endpoint_is_bulk_in.exit.i
  %wMaxPacketSize.i122.i = getelementptr %struct.usb_host_endpoint, ptr %56, i32 1, i32 0, i32 4
  %65 = ptrtoint ptr %wMaxPacketSize.i122.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %wMaxPacketSize.i122.i, align 1
  %67 = and i16 %66, -249
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #14
  %and.i123.i = zext i16 %68 to i32
  %max_in_size.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 24
  %69 = ptrtoint ptr %max_in_size.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and.i123.i, ptr %max_in_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %68)
  %cmp72.i = icmp ult i16 %68, 8
  br i1 %cmp72.i, label %do.end77.i, label %if.end7

do.end77.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.20, i32 noundef %and.i123.i) #18
  br label %err_free_mem

if.end7:                                          ; preds = %if.end68.i
  %72 = ptrtoint ptr %data_intf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data_intf.i, align 4
  %call8 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @ims_pcu_driver, ptr noundef %73, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call8) #18
  br label %err_free_mem

if.end15:                                         ; preds = %if.end7
  %74 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctrl_intf.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i, align 8
  %79 = ptrtoint ptr %max_in_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_in_size.i, align 8
  %read_dma.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 23
  %call.i81 = tail call ptr @usb_alloc_coherent(ptr noundef %78, i32 noundef %80, i32 noundef 3264, ptr noundef %read_dma.i) #14
  %urb_in_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 22
  %81 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i81, ptr %urb_in_buf.i, align 8
  %tobool.not.i82 = icmp eq ptr %call.i81, null
  br i1 %tobool.not.i82, label %do.end.i84, label %if.end.i85

do.end.i84:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.37) #18
  br label %err_unclaim_intf

if.end.i85:                                       ; preds = %if.end15
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %urb_in.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 21
  %84 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call2.i, ptr %urb_in.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end10.i89

do.end8.i:                                        ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.40) #18
  br label %err_free_urb_in_buf.i

if.end10.i89:                                     ; preds = %if.end.i85
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 13
  %87 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %88, 4
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %89 = ptrtoint ptr %read_dma.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %read_dma.i, align 4
  %91 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %urb_in.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %transfer_dma.i, align 4
  %94 = load ptr, ptr %urb_in.i, align 4
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i, align 8
  %97 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ep_in.i, align 8
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i87 = zext i8 %100 to i32
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %96, align 8
  %shl.i.i = shl i32 %102, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i87, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or19.i = or i32 %or.i.i, -1073741696
  %103 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %urb_in_buf.i, align 8
  %105 = ptrtoint ptr %max_in_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_in_size.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 8
  %107 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %96, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 10
  %108 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or19.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 14
  %109 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %104, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 19
  %110 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %106, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 28
  %111 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @ims_pcu_irq, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 27
  %112 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %113 = ptrtoint ptr %max_out_size.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_out_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %114, i32 noundef 3264) #19
  %urb_out_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 26
  %115 = ptrtoint ptr %urb_out_buf.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call9.i.i, ptr %urb_out_buf.i, align 8
  %tobool24.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end10.i89
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.43) #18
  br label %err_free_in_urb.i

if.end30.i:                                       ; preds = %if.end10.i89
  %118 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call7.i.i, align 8
  %120 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_ctrl_size.i, align 8
  %ctrl_dma.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 17
  %call32.i = tail call ptr @usb_alloc_coherent(ptr noundef %119, i32 noundef %121, i32 noundef 3264, ptr noundef %ctrl_dma.i) #14
  %urb_ctrl_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 16
  %122 = ptrtoint ptr %urb_ctrl_buf.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call32.i, ptr %urb_ctrl_buf.i, align 8
  %tobool34.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool34.not.i, label %do.end38.i, label %if.end40.i

do.end38.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.37) #18
  br label %err_free_urb_out_buf.i

if.end40.i:                                       ; preds = %if.end30.i
  %call41.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %urb_ctrl.i = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 15
  %125 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call41.i, ptr %urb_ctrl.i, align 4
  %tobool43.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool43.not.i, label %do.end47.i, label %if.end49.i

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.40) #18
  %128 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call7.i.i, align 8
  %130 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_ctrl_size.i, align 8
  %132 = ptrtoint ptr %urb_ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %urb_ctrl_buf.i, align 8
  %134 = ptrtoint ptr %ctrl_dma.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ctrl_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %129, i32 noundef %131, ptr noundef %133, i32 noundef %135) #14
  br label %err_free_urb_out_buf.i

if.end49.i:                                       ; preds = %if.end40.i
  %transfer_flags51.i = getelementptr inbounds %struct.urb, ptr %call41.i, i32 0, i32 13
  %136 = ptrtoint ptr %transfer_flags51.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %transfer_flags51.i, align 4
  %or52.i = or i32 %137, 4
  store i32 %or52.i, ptr %transfer_flags51.i, align 4
  %138 = ptrtoint ptr %ctrl_dma.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ctrl_dma.i, align 4
  %140 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %urb_ctrl.i, align 4
  %transfer_dma55.i = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 15
  %142 = ptrtoint ptr %transfer_dma55.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %139, ptr %transfer_dma55.i, align 4
  %143 = load ptr, ptr %urb_ctrl.i, align 4
  %144 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call7.i.i, align 8
  %146 = ptrtoint ptr %ep_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ep_ctrl.i, align 8
  %bEndpointAddress59.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %bEndpointAddress59.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bEndpointAddress59.i, align 1
  %conv60.i = zext i8 %149 to i32
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %145, align 8
  %shl.i130.i = shl i32 %151, 8
  %shl1.i131.i = shl nuw nsw i32 %conv60.i, 15
  %or.i132.i = or i32 %shl.i130.i, %shl1.i131.i
  %or63.i = or i32 %or.i132.i, 1073741952
  %152 = ptrtoint ptr %urb_ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %urb_ctrl_buf.i, align 8
  %154 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %max_ctrl_size.i, align 8
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %147, i32 0, i32 5
  %156 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bInterval.i, align 1
  %conv67.i = zext i8 %157 to i32
  %dev1.i133.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 8
  %158 = ptrtoint ptr %dev1.i133.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %145, ptr %dev1.i133.i, align 4
  %pipe2.i134.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 10
  %159 = ptrtoint ptr %pipe2.i134.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or63.i, ptr %pipe2.i134.i, align 4
  %transfer_buffer3.i135.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 14
  %160 = ptrtoint ptr %transfer_buffer3.i135.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %153, ptr %transfer_buffer3.i135.i, align 4
  %transfer_buffer_length.i136.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 19
  %161 = ptrtoint ptr %transfer_buffer_length.i136.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %155, ptr %transfer_buffer_length.i136.i, align 4
  %complete.i137.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 28
  %162 = ptrtoint ptr %complete.i137.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @ims_pcu_irq, ptr %complete.i137.i, align 4
  %context4.i138.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 27
  %163 = ptrtoint ptr %context4.i138.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call7.i.i, ptr %context4.i138.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 4
  %164 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %165)
  %cmp.i139.i = icmp eq i32 %165, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %165)
  %cmp6.i.i = icmp ugt i32 %165, 4
  %or.cond.i.i = or i1 %cmp.i139.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i141.i, label %if.end49.i.if.end19_crit_edge

if.end49.i.if.end19_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then.i141.i:                                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  %166 = tail call i32 @llvm.smax.i32(i32 %conv67.i, i32 1) #14
  %167 = tail call i32 @llvm.umin.i32(i32 %166, i32 16) #14
  %sub.i.i = add nsw i32 %167, -1
  %shl.i140.i = shl nuw nsw i32 1, %sub.i.i
  br label %if.end19

err_free_urb_out_buf.i:                           ; preds = %do.end47.i, %do.end38.i
  %168 = ptrtoint ptr %urb_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %urb_out_buf.i, align 8
  tail call void @kfree(ptr noundef %169) #14
  br label %err_free_in_urb.i

err_free_in_urb.i:                                ; preds = %err_free_urb_out_buf.i, %do.end28.i
  %170 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_free_urb(ptr noundef %171) #14
  br label %err_free_urb_in_buf.i

err_free_urb_in_buf.i:                            ; preds = %err_free_in_urb.i, %do.end8.i
  %172 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call7.i.i, align 8
  %174 = ptrtoint ptr %max_in_size.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %max_in_size.i, align 8
  %176 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %urb_in_buf.i, align 8
  %178 = ptrtoint ptr %read_dma.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %read_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %179) #14
  br label %err_unclaim_intf

if.end19:                                         ; preds = %if.then.i141.i, %if.end49.i.if.end19_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i140.i, %if.then.i141.i ], [ %conv67.i, %if.end49.i.if.end19_crit_edge ]
  %180 = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 25
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %interval.sink.i.i, ptr %180, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %143, i32 0, i32 23
  %182 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %start_frame.i.i, align 4
  %183 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %urb_ctrl.i, align 4
  %call.i95 = tail call i32 @usb_submit_urb(ptr noundef %184, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end.i101, label %do.end.i98

do.end.i98:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %185 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.63, i32 noundef %call.i95) #18
  br label %err_free_buffers

if.end.i101:                                      ; preds = %if.end19
  %187 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %urb_in.i, align 4
  %call1.i100 = tail call i32 @usb_submit_urb(ptr noundef %188, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool2.not.i = icmp eq i32 %call1.i100, 0
  br i1 %tobool2.not.i, label %if.end23, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #16
  %189 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.66, i32 noundef %call1.i100) #18
  %191 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %192) #14
  br label %err_free_buffers

if.end23:                                         ; preds = %if.end.i101
  %call24 = tail call fastcc i32 @ims_pcu_line_setup(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_stop_io_crit_edge

if.end23.err_stop_io_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop_io

if.end27:                                         ; preds = %if.end23
  %call29 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @ims_pcu_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.err_stop_io_crit_edge

if.end27.err_stop_io_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop_io

if.end32:                                         ; preds = %if.end27
  %193 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %bootloader_mode, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool34.not = icmp eq i8 %194, 0
  br i1 %tobool34.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call fastcc i32 @ims_pcu_init_bootloader_mode(ptr noundef nonnull %call7.i.i)
  br label %cond.end

cond.false:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call fastcc i32 @ims_pcu_init_application_mode(ptr noundef nonnull %call7.i.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call35, %cond.true ], [ %call36, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool37.not = icmp eq i32 %cond, 0
  br i1 %tobool37.not, label %cond.end.cleanup_crit_edge, label %err_remove_sysfs

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_remove_sysfs:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ims_pcu_attr_group) #14
  br label %err_stop_io

err_stop_io:                                      ; preds = %err_remove_sysfs, %if.end27.err_stop_io_crit_edge, %if.end23.err_stop_io_crit_edge
  %error.0 = phi i32 [ %call24, %if.end23.err_stop_io_crit_edge ], [ %call29, %if.end27.err_stop_io_crit_edge ], [ %cond, %err_remove_sysfs ]
  %195 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %196) #14
  %197 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %198) #14
  br label %err_free_buffers

err_free_buffers:                                 ; preds = %err_stop_io, %do.end6.i, %do.end.i98
  %error.1 = phi i32 [ %error.0, %err_stop_io ], [ -5, %do.end.i98 ], [ -5, %do.end6.i ]
  %199 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %200) #14
  %201 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_free_urb(ptr noundef %202) #14
  %203 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %call7.i.i, align 8
  %205 = ptrtoint ptr %max_out_size.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %max_out_size.i, align 4
  %207 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %urb_in_buf.i, align 8
  %209 = ptrtoint ptr %read_dma.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %read_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %210) #14
  %urb_out_buf.i109 = getelementptr inbounds %struct.ims_pcu, ptr %call7.i.i, i32 0, i32 26
  %211 = ptrtoint ptr %urb_out_buf.i109 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %urb_out_buf.i109, align 8
  tail call void @kfree(ptr noundef %212) #14
  %213 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %214) #14
  %215 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_free_urb(ptr noundef %216) #14
  %217 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %call7.i.i, align 8
  %219 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_ctrl_size.i, align 8
  %221 = ptrtoint ptr %urb_ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %urb_ctrl_buf.i, align 8
  %223 = ptrtoint ptr %ctrl_dma.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ctrl_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %218, i32 noundef %220, ptr noundef %222, i32 noundef %224) #14
  br label %err_unclaim_intf

err_unclaim_intf:                                 ; preds = %err_free_buffers, %err_free_urb_in_buf.i, %do.end.i84
  %error.2 = phi i32 [ %error.1, %err_free_buffers ], [ -12, %err_free_urb_in_buf.i ], [ -12, %do.end.i84 ]
  %225 = ptrtoint ptr %data_intf.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data_intf.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ims_pcu_driver, ptr noundef %226) #14
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_unclaim_intf, %do.end13, %do.end77.i, %do.end66.i, %do.end53.i, %do.end42.i, %do.end.i, %if.end10.i.err_free_mem_crit_edge, %if.end5.i.err_free_mem_crit_edge, %if.end.i.err_free_mem_crit_edge, %if.end.err_free_mem_crit_edge
  %error.3 = phi i32 [ %call8, %do.end13 ], [ %error.2, %err_unclaim_intf ], [ -22, %if.end10.i.err_free_mem_crit_edge ], [ -19, %if.end5.i.err_free_mem_crit_edge ], [ -22, %if.end.i.err_free_mem_crit_edge ], [ -22, %if.end.err_free_mem_crit_edge ], [ -22, %do.end42.i ], [ -22, %do.end66.i ], [ -22, %do.end77.i ], [ -22, %do.end53.i ], [ -22, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %err_free_mem ], [ -12, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ims_pcu_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ims_pcu_attr_group) #14
  %urb_in.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #14
  %urb_ctrl.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  %bootloader_mode = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bootloader_mode, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %async_firmware_done.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 41
  tail call void @wait_for_completion(ptr noundef %async_firmware_done.i) #14
  br label %if.end3

if.else:                                          ; preds = %if.end
  %setup_complete.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %setup_complete.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %setup_complete.i, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.if.end3_crit_edge, label %if.then.i

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then.i:                                        ; preds = %if.else
  %14 = ptrtoint ptr %setup_complete.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %setup_complete.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %gamepad.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 43
  %15 = ptrtoint ptr %gamepad.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gamepad.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @input_unregister_device(ptr noundef %18) #14
  tail call void @kfree(ptr noundef nonnull %16) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %buttons1.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 42
  %19 = ptrtoint ptr %buttons1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buttons1.i.i, align 4
  tail call void @input_unregister_device(ptr noundef %20) #14
  %backlight1.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 44
  tail call void @led_classdev_unregister(ptr noundef %backlight1.i.i) #14
  %device_id.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 5
  br i1 %cmp.not.i, label %if.end.i.if.end3_crit_edge, label %if.then5.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %24, ptr noundef nonnull @ims_pcu_ofn_attr_group) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then5.i, %if.end.i.if.end3_crit_edge, %if.else.if.end3_crit_edge, %if.then2
  %25 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %26) #14
  %27 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_free_urb(ptr noundef %28) #14
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %max_out_size.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 27
  %31 = ptrtoint ptr %max_out_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_out_size.i, align 4
  %urb_in_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 22
  %33 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urb_in_buf.i, align 4
  %read_dma.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %read_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %read_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %36) #14
  %urb_out_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %urb_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb_out_buf.i, align 4
  tail call void @kfree(ptr noundef %38) #14
  %39 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %40) #14
  %41 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_free_urb(ptr noundef %42) #14
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %max_ctrl_size.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 18
  %45 = ptrtoint ptr %max_ctrl_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_ctrl_size.i, align 4
  %urb_ctrl_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %urb_ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %urb_ctrl_buf.i, align 4
  %ctrl_dma.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %ctrl_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %44, i32 noundef %46, ptr noundef %48, i32 noundef %50) #14
  tail call void @kfree(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %urb_in.i = getelementptr inbounds %struct.ims_pcu, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_in.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #14
  %urb_ctrl.i = getelementptr inbounds %struct.ims_pcu, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %urb_ctrl.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_ctrl.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %call.i) #18
  br label %if.end8

if.end.i:                                         ; preds = %if.then
  %urb_in.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %urb_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_in.i, align 4
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then6, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev7.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.66, i32 noundef %call1.i) #18
  %14 = ptrtoint ptr %urb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_ctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #14
  br label %if.end8

if.then6:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call fastcc i32 @ims_pcu_line_setup(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end6.i, %do.end.i, %entry.if.end8_crit_edge
  %retval1.0 = phi i32 [ %call7, %if.then6 ], [ 0, %entry.if.end8_crit_edge ], [ -5, %do.end.i ], [ -5, %do.end6.i ]
  ret i32 %retval1.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_line_setup(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_intf = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 13
  %0 = ptrtoint ptr %ctrl_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %cmd_buf = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 33
  %4 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %4, align 1
  %6 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 14745600, ptr %cmd_buf, align 1
  %bDataBits = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 6
  %7 = ptrtoint ptr %bDataBits to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %bDataBits, align 1
  %8 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcu, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %13 to i16
  %call2 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext 32, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %cmd_buf, i16 noundef zeroext 7, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.68, i32 noundef %call2) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcu, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i38 = shl i32 %19, 8
  %or7 = or i32 %shl.i38, -2147483648
  %20 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceNumber, align 2
  %conv10 = zext i8 %21 to i16
  %call11 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or7, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext 3, i16 noundef zeroext %conv10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev18 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %22 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.71, i32 noundef %call11) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call11, %do.end17 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_init_bootloader_mode(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -95, i32 noundef 0, i8 noundef zeroext -63, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.132) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #14
  %fw_start_addr = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 39
  %5 = ptrtoint ptr %fw_start_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fw_start_addr, align 4
  %arrayidx3 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 17
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx3, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %fw_end_addr = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 40
  %9 = ptrtoint ptr %fw_end_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fw_end_addr, align 4
  %dev8 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.135, i32 noundef %4, i32 noundef %8) #18
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  %call12 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.76, ptr noundef %13, i32 noundef 3264, ptr noundef %pcu, ptr noundef nonnull @ims_pcu_process_async_firmware) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %async_firmware_done = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 41
  tail call void @complete(ptr noundef %async_firmware_done) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_init_application_mode(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ims_pcu_get_device_info(ptr noundef %pcu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_id = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 11
  %call1 = tail call fastcc i32 @ims_pcu_identify_type(ptr noundef %pcu, ptr noundef %device_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.142, i32 noundef %call1) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  %.pre = zext i8 %3 to i32
  br i1 %cmp, label %if.end4.do.end12_crit_edge, label %lor.lhs.false

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end4
  %arrayidx = getelementptr [6 x %struct.ims_pcu_device_info], ptr @ims_pcu_device_info, i32 0, i32 %.pre
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %lor.lhs.false.do.end12_crit_edge, label %if.end16

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.145, i32 noundef %.pre) #18
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ims_pcu_init_application_mode.device_no, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @llvm.prefetch.p0(ptr nonnull @ims_pcu_init_application_mode.device_no, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ims_pcu_init_application_mode.device_no, ptr nonnull @ims_pcu_init_application_mode.device_no, i32 1, ptr nonnull elementtype(i32) @ims_pcu_init_application_mode.device_no) #14, !srcloc !427
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !428
  %device_no = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 2
  %9 = ptrtoint ptr %device_no to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %asmresult.i.i.i.i, ptr %device_no, align 4
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp20.not = icmp eq i8 %11, 5
  br i1 %cmp20.not, label %if.end16.if.end28_crit_edge, label %if.then22

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then22:                                        ; preds = %if.end16
  %dev23 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %12 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev23, align 4
  %call24 = tail call i32 @sysfs_create_group(ptr noundef %13, ptr noundef nonnull @ims_pcu_ofn_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %backlight1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 44
  %name.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 44, i32 1
  %14 = ptrtoint ptr %device_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_no, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.172, i32 noundef %15) #14
  %16 = ptrtoint ptr %backlight1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name.i, ptr %backlight1.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 44, i32 0, i32 2
  %17 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31998, ptr %max_brightness.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 44, i32 0, i32 7
  %18 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ims_pcu_backlight_get_brightness, ptr %brightness_get.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 44, i32 0, i32 6
  %19 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ims_pcu_backlight_set_brightness, ptr %brightness_set_blocking.i, align 4
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i.i78 = tail call i32 @led_classdev_register_ext(ptr noundef %21, ptr noundef %backlight1.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i, label %if.end32, label %ims_pcu_setup_backlight.exit

ims_pcu_setup_backlight.exit:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.173, i32 noundef %call.i.i78) #18
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %24 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %device_id, align 4
  %idxprom34 = zext i8 %25 to i32
  %arrayidx35 = getelementptr [6 x %struct.ims_pcu_device_info], ptr @ims_pcu_device_info, i32 0, i32 %idxprom34
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx35, align 4
  %keymap_len = getelementptr [6 x %struct.ims_pcu_device_info], ptr @ims_pcu_device_info, i32 0, i32 %idxprom34, i32 1
  %28 = ptrtoint ptr %keymap_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %keymap_len, align 4
  %buttons1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 42
  %call.i79 = tail call ptr @input_allocate_device() #14
  %tobool.not.i80 = icmp eq ptr %call.i79, null
  br i1 %tobool.not.i80, label %do.end.i82, label %if.end.i

do.end.i82:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.179) #18
  br label %err_destroy_backlight

if.end.i:                                         ; preds = %if.end32
  %name.i83 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 42, i32 1
  %32 = ptrtoint ptr %device_no to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_no, align 4
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i83, i32 noundef 32, ptr noundef nonnull @.str.181, i32 noundef %33) #14
  %34 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcu, align 4
  %phys.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 42, i32 2
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 1
  %call.i.i85 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.186, ptr noundef %39, ptr noundef %devpath.i.i) #14
  %call7.i = tail call i32 @strlcat(ptr noundef %phys.i, ptr noundef nonnull @.str.182, i32 noundef 32) #14
  %keymap8.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 42, i32 3
  %mul.i = shl i32 %29, 1
  %40 = call ptr @memcpy(ptr %keymap8.i, ptr %27, i32 %mul.i)
  %41 = ptrtoint ptr %call.i79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %name.i83, ptr %call.i79, align 8
  %phys15.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 1
  %42 = ptrtoint ptr %phys15.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %phys.i, ptr %phys15.i, align 4
  %43 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcu, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 3
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 3, ptr %id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 16, i32 7
  %46 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idVendor.i.i, align 8
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #14
  %vendor.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 16, i32 8
  %50 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idProduct.i.i, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #14
  %product.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 16, i32 9
  %54 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bcdDevice.i.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #14
  %version.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %version.i.i, align 2
  %ctrl_intf.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 13
  %58 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_intf.i, align 4
  %dev17.i = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 40, i32 1
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev17.i, ptr %parent.i, align 8
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 17
  %61 = ptrtoint ptr %keycode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %keymap8.i, ptr %keycode.i, align 4
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 15
  %62 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 32, ptr %keycodemax.i, align 4
  %keycodesize.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 16
  %63 = ptrtoint ptr %keycodesize.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %keycodesize.i, align 8
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 5
  %64 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %65, 2
  store i32 %or.i.i, ptr %evbit.i, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call.i79, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.070.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 42, i32 3, i32 %i.070.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %67 to i32
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %keybit.i, i32 %div2.i.i
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i, align 4
  %or.i69.i = or i32 %shl.i.i, %69
  store i32 %or.i69.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %70 = ptrtoint ptr %keybit.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %keybit.i, align 4
  %and.i.i = and i32 %71, -2
  store i32 %and.i.i, ptr %keybit.i, align 4
  %call26.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end40, label %do.end31.i

do.end31.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.184, i32 noundef %call26.i) #18
  tail call void @input_free_device(ptr noundef nonnull %call.i79) #14
  br label %err_destroy_backlight

if.end40:                                         ; preds = %for.end.i
  %74 = ptrtoint ptr %buttons1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i79, ptr %buttons1.i, align 4
  %75 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %if.then42 [
    i8 5, label %if.end40.if.end47_crit_edge
    i8 0, label %if.end40.if.end47_crit_edge90
  ]

if.end40.if.end47_crit_edge90:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  %call43 = tail call fastcc i32 @ims_pcu_setup_gamepad(ptr noundef %pcu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %err_destroy_buttons

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end40.if.end47_crit_edge, %if.end40.if.end47_crit_edge90
  %setup_complete = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 45
  %76 = ptrtoint ptr %setup_complete to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %setup_complete, align 4
  br label %cleanup

err_destroy_buttons:                              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %buttons1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buttons1.i, align 4
  tail call void @input_unregister_device(ptr noundef %78) #14
  br label %err_destroy_backlight

err_destroy_backlight:                            ; preds = %err_destroy_buttons, %do.end31.i, %do.end.i82
  %error.0 = phi i32 [ %call43, %err_destroy_buttons ], [ -12, %do.end.i82 ], [ %call26.i, %do.end31.i ]
  tail call void @led_classdev_unregister(ptr noundef %backlight1.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_backlight, %if.end47, %ims_pcu_setup_backlight.exit, %if.then22.cleanup_crit_edge, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end12 ], [ %error.0, %err_destroy_backlight ], [ 0, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ %call24, %if.then22.cleanup_crit_edge ], [ %call.i.i78, %ims_pcu_setup_backlight.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ims_pcu_get_cdc_union_desc(ptr noundef %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.end6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp79 = icmp ugt i32 %5, 4
  br i1 %cmp79, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.do.end52_crit_edge

while.cond.preheader.do.end52_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.25) #18
  br label %cleanup

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.081 = phi ptr [ %add.ptr, %if.end45.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %buflen.080 = phi i32 [ %sub, %if.end45.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %6 = ptrtoint ptr %buf.081 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.081, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.080, i32 %conv)
  %cmp9 = icmp ult i32 %buflen.080, %conv
  br i1 %cmp9, label %do.end14, label %if.end16

do.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.28) #18
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %bDescriptorType = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %buf.081, i32 0, i32 1
  %8 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %9)
  %cmp18 = icmp eq i8 %9, 36
  br i1 %cmp18, label %land.lhs.true, label %if.end16.if.end45_crit_edge

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end16
  %bDescriptorSubType = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %buf.081, i32 0, i32 2
  %10 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bDescriptorSubType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp21 = icmp eq i8 %11, 6
  br i1 %cmp21, label %do.body24, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

do.body24:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_get_cdc_union_desc.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_cdc_union_desc, %if.then28)) #14
          to label %do.end32 [label %if.then28], !srcloc !429

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_get_cdc_union_desc.__UNIQUE_ID_ddebug237, ptr noundef %dev29, ptr noundef nonnull @.str.30) #14
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body24
  %12 = ptrtoint ptr %buf.081 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf.081, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp35 = icmp ugt i8 %13, 4
  br i1 %cmp35, label %do.end32.cleanup_crit_edge, label %do.end41

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end41:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  %conv34 = zext i8 %13 to i32
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.32, i32 noundef %conv34, i32 noundef 5) #18
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.end16.if.end45_crit_edge
  %sub = sub i32 %buflen.080, %conv
  %add.ptr = getelementptr i8, ptr %buf.081, i32 %conv
  %cmp = icmp ugt i32 %sub, 4
  br i1 %cmp, label %if.end45.while.body_crit_edge, label %if.end45.do.end52_crit_edge

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end52:                                         ; preds = %if.end45.do.end52_crit_edge, %while.cond.preheader.do.end52_crit_edge
  %dev53 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.35) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end41, %do.end32.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi ptr [ null, %do.end14 ], [ null, %do.end41 ], [ null, %do.end52 ], [ null, %do.end6 ], [ null, %do.end ], [ %buf.081, %do.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ims_pcu_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %3, label %do.body4 [
    i32 0, label %do.body21
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge77
    i32 -108, label %entry.do.body_crit_edge78
  ]

entry.do.body_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

entry.do.body_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge77, %entry.do.body_crit_edge78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_irq, %if.then)) #14
          to label %cleanup [label %if.then], !srcloc !429

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_irq.__UNIQUE_ID_ddebug234, ptr noundef %6, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %3) #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_irq.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_irq, %if.then16)) #14
          to label %exit [label %if.then16], !srcloc !429

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %dev17 = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_irq.__UNIQUE_ID_ddebug235, ptr noundef %8, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %3) #14
  br label %exit

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_irq, %if.then33)) #14
          to label %do.end38 [label %if.then33], !srcloc !429

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %dev34 = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev34, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %urb_in_buf = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %urb_in_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb_in_buf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_irq.__UNIQUE_ID_ddebug236, ptr noundef %10, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, i32 noundef %12, i32 noundef %12, ptr noundef %14) #14
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %urb_in = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb_in, align 4
  %cmp = icmp eq ptr %16, %urb
  br i1 %cmp, label %if.then39, label %do.end38.exit_crit_edge

do.end38.exit_crit_edge:                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.then39:                                        ; preds = %do.end38
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp98.not.i = icmp eq i32 %18, 0
  br i1 %cmp98.not.i, label %if.then39.exit_crit_edge, label %for.body.lr.ph.i

if.then39.exit_crit_edge:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

for.body.lr.ph.i:                                 ; preds = %if.then39
  %urb_in_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 22
  %have_stx.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 31
  %have_dle.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 32
  %read_pos.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 29
  %check_sum.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 30
  %dev44.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %read_buf.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 28
  %expected_response.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 35
  %arrayidx9.i.i = getelementptr %struct.ims_pcu, ptr %1, i32 0, i32 28, i32 1
  %ack_id.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 34
  %cmd_buf.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 33
  %cmd_buf_len.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 36
  %cmd_done.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 37
  %setup_complete.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 45
  %arrayidx.i.i.i = getelementptr %struct.ims_pcu, ptr %1, i32 0, i32 28, i32 3
  %buttons1.i.i.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 42
  %gamepad.i.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 43
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.099.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc63.i, %cleanup.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %urb_in_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb_in_buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %20, i32 %i.099.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %23 = ptrtoint ptr %have_stx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %have_stx.i, align 2, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp ne i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp1.not.i = icmp eq i8 %22, 2
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %25 = ptrtoint ptr %have_dle.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %have_dle.i, align 1, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i = icmp eq i8 %26, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %have_dle.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %have_dle.i, align 1
  %28 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %read_pos.i, align 4
  %inc.i = add i8 %29, 1
  store i8 %inc.i, ptr %read_pos.i, align 4
  %idxprom.i = zext i8 %29 to i32
  %arrayidx6.i = getelementptr %struct.ims_pcu, ptr %1, i32 0, i32 28, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %22, ptr %arrayidx6.i, align 1
  %31 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %check_sum.i, align 1
  %add.i = add i8 %32, %22
  store i8 %add.i, ptr %check_sum.i, align 1
  br label %cleanup.i

if.end10.i:                                       ; preds = %if.end.i
  %33 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %22, label %sw.default.i [
    i8 2, label %sw.bb.i
    i8 16, label %sw.bb22.i
    i8 3, label %sw.bb24.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not.i = icmp eq i8 %24, 0
  br i1 %tobool13.not.i, label %sw.bb.i.if.end17.i_crit_edge, label %do.end.i

sw.bb.i.if.end17.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev44.i, align 4
  %36 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %read_pos.i, align 4
  %conv16.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.54, i32 noundef %conv16.i) #18
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %sw.bb.i.if.end17.i_crit_edge
  %38 = ptrtoint ptr %have_stx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %have_stx.i, align 2
  %39 = ptrtoint ptr %have_dle.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %have_dle.i, align 1
  %40 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %read_pos.i, align 4
  %41 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %check_sum.i, align 1
  br label %cleanup.i

sw.bb22.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %have_dle.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %have_dle.i, align 1
  br label %cleanup.i

sw.bb24.i:                                        ; preds = %if.end10.i
  %43 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %read_pos.i, align 4
  %conv26.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp27.i = icmp ult i8 %44, 3
  br i1 %cmp27.i, label %do.end32.i, label %if.else.i

do.end32.i:                                       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev44.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.58, i32 noundef %conv26.i) #18
  br label %if.end49.i

if.else.i:                                        ; preds = %sw.bb24.i
  %47 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %check_sum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp38.not.i = icmp eq i8 %48, 0
  br i1 %cmp38.not.i, label %if.else47.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev44.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.61, i32 noundef %conv26.i) #18
  br label %if.end49.i

if.else47.i:                                      ; preds = %if.else.i
  %51 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %read_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %52)
  %cond.i.i = icmp eq i8 %52, -32
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.else47.i
  %53 = ptrtoint ptr %setup_complete.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %setup_complete.i.i, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.if.end49.i_crit_edge, label %if.then.i.i, !prof !430

sw.bb.i.i.if.end49.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx.i.i.i, align 1
  %and.i.i.i = and i32 %56, -130945
  %57 = ptrtoint ptr %buttons1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buttons1.i.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i
  %i.012.i.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ims_pcu, ptr %1, i32 0, i32 42, i32 3, i32 %i.012.i.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp3.not.i.i.i.i = icmp eq i16 %60, 0
  br i1 %cmp3.not.i.i.i.i, label %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i = zext i16 %60 to i32
  %61 = lshr i32 %and.i.i.i, %i.012.i.i.i.i
  %62 = and i32 %61, 1
  tail call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef %conv.i.i.i.i, i32 noundef %62) #14
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw nsw i32 %i.012.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 32
  br i1 %exitcond.not.i.i.i.i, label %ims_pcu_buttons_report.exit.i.i.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

ims_pcu_buttons_report.exit.i.i.i:                ; preds = %if.end.i.i.i.i
  tail call void @input_event(ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %63 = ptrtoint ptr %gamepad.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gamepad.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i, label %ims_pcu_buttons_report.exit.i.i.i.if.end49.i_crit_edge, label %if.then.i.i.i

ims_pcu_buttons_report.exit.i.i.i.if.end49.i_crit_edge: ; preds = %ims_pcu_buttons_report.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

if.then.i.i.i:                                    ; preds = %ims_pcu_buttons_report.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %and.i.i.i.i = lshr i32 %56, 14
  %and.lobit.i.i.i.i = and i32 %and.i.i.i.i, 1
  %67 = shl i32 %56, 18
  %68 = ashr i32 %67, 31
  %sub.i.i.i.i = add nsw i32 %68, %and.lobit.i.i.i.i
  %and10.i.i.i.i = lshr i32 %56, 12
  %and10.lobit.i.i.i.i = and i32 %and10.i.i.i.i, 1
  %69 = shl i32 %56, 20
  %70 = ashr i32 %69, 31
  %sub22.i.i.i.i = add nsw i32 %70, %and10.lobit.i.i.i.i
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i.i.i.i) #14
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 1, i32 noundef %sub22.i.i.i.i) #14
  %and23.i.i.i.i = lshr i32 %56, 7
  %and23.lobit.i.i.i.i = and i32 %and23.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 304, i32 noundef %and23.lobit.i.i.i.i) #14
  %and24.i.i.i.i = lshr i32 %56, 8
  %and24.lobit.i.i.i.i = and i32 %and24.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 305, i32 noundef %and24.lobit.i.i.i.i) #14
  %and25.i.i.i.i = lshr i32 %56, 9
  %and25.lobit.i.i.i.i = and i32 %and25.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 307, i32 noundef %and25.lobit.i.i.i.i) #14
  %and26.i.i.i.i = lshr i32 %56, 10
  %and26.lobit.i.i.i.i = and i32 %and26.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 308, i32 noundef %and26.lobit.i.i.i.i) #14
  %and27.i.i.i.i = lshr i32 %56, 15
  %and27.lobit.i.i.i.i = and i32 %and27.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 315, i32 noundef %and27.lobit.i.i.i.i) #14
  %and28.i.i.i.i = lshr i32 %56, 16
  %and28.lobit.i.i.i.i = and i32 %and28.i.i.i.i, 1
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 314, i32 noundef %and28.lobit.i.i.i.i) #14
  tail call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %if.end49.i

sw.default.i.i:                                   ; preds = %if.else47.i
  %71 = ptrtoint ptr %expected_response.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %expected_response.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %72)
  %cmp.i.i = icmp eq i8 %52, %72
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.default.i.i.if.end49.i_crit_edge

sw.default.i.i.if.end49.i_crit_edge:              ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

land.lhs.true.i.i:                                ; preds = %sw.default.i.i
  %73 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %ack_id.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ack_id.i.i, align 4
  %conv11.i.i = zext i8 %76 to i32
  %sub.i.i = add nsw i32 %conv11.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv10.i.i)
  %cmp12.i.i = icmp eq i32 %sub.i.i, %conv10.i.i
  br i1 %cmp12.i.i, label %if.then14.i.i, label %land.lhs.true.i.i.if.end49.i_crit_edge

land.lhs.true.i.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

if.then14.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = call ptr @memcpy(ptr %cmd_buf.i.i, ptr %read_buf.i.i, i32 %conv26.i)
  %78 = ptrtoint ptr %cmd_buf_len.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %44, ptr %cmd_buf_len.i.i, align 2
  tail call void @complete(ptr noundef %cmd_done.i.i) #14
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then14.i.i, %land.lhs.true.i.i.if.end49.i_crit_edge, %sw.default.i.i.if.end49.i_crit_edge, %if.then.i.i.i, %ims_pcu_buttons_report.exit.i.i.i.if.end49.i_crit_edge, %sw.bb.i.i.if.end49.i_crit_edge, %do.end43.i, %do.end32.i
  %79 = ptrtoint ptr %have_stx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %have_stx.i, align 2
  %80 = ptrtoint ptr %have_dle.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %have_dle.i, align 1
  %81 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %read_pos.i, align 4
  br label %cleanup.i

sw.default.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %read_pos.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %read_pos.i, align 4
  %inc55.i = add i8 %83, 1
  store i8 %inc55.i, ptr %read_pos.i, align 4
  %idxprom56.i = zext i8 %83 to i32
  %arrayidx57.i = getelementptr %struct.ims_pcu, ptr %1, i32 0, i32 28, i32 %idxprom56.i
  %84 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %22, ptr %arrayidx57.i, align 1
  %85 = ptrtoint ptr %check_sum.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %check_sum.i, align 1
  %add61.i = add i8 %86, %22
  store i8 %add61.i, ptr %check_sum.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.default.i, %if.end49.i, %sw.bb22.i, %if.end17.i, %if.then4.i, %for.body.i.cleanup.i_crit_edge
  %inc63.i = add nuw i32 %i.099.i, 1
  %87 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual_length.i, align 4
  %cmp.i = icmp ult i32 %inc63.i, %88
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.exit_crit_edge

cleanup.i.exit_crit_edge:                         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

exit:                                             ; preds = %cleanup.i.exit_crit_edge, %if.then39.exit_crit_edge, %do.end38.exit_crit_edge, %if.then16, %do.body4
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #14
  %89 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call41, label %do.end47 [
    i32 0, label %exit.cleanup_crit_edge
    i32 -19, label %exit.cleanup_crit_edge79
  ]

exit.cleanup_crit_edge79:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end47:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev48 = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %90 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49, i32 noundef %call41) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %exit.cleanup_crit_edge, %exit.cleanup_crit_edge79, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ims_pcu_is_attr_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode2 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode2, align 4
  %bootloader_mode = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bootloader_mode, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cmp7 = icmp eq ptr %attr, @dev_attr_update_firmware_status
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cmp3.not = icmp eq ptr %attr, @dev_attr_update_firmware
  %or.cond = or i1 %cmp7, %cmp3.not
  %cmp5.not = icmp eq ptr %attr, @dev_attr_reset_device
  %or.cond15 = or i1 %cmp5.not, %or.cond
  %spec.select16 = select i1 %or.cond15, i16 %3, i16 0
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select = select i1 %cmp7, i16 0, i16 %3
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %mode.0 = phi i16 [ %spec.select, %if.else ], [ %spec.select16, %if.then ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_update_firmware_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_firmware_status = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %update_firmware_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %update_firmware_status, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.74, i32 noundef %3) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_update_firmware_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %lfw.i = alloca ptr, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !431
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  %call4 = call i32 @mutex_lock_interruptible_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dev8 = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #14
  %7 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !431
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull @.str.76, ptr noundef %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %sub.i.i = add i32 %13, -6
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %11, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %11, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i, label %if.end13, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %17, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.76) #18
  %18 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %19) #14
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end7.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end7.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #14
  %20 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i.ph) #18
  br label %out

if.end13:                                         ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #14
  %bootloader_mode = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %bootloader_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bootloader_mode, align 4, !range !424
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = call fastcc i32 @ims_pcu_handle_firmware_update(ptr noundef %1, ptr noundef %9)
  br label %if.end18

if.else:                                          ; preds = %if.end13
  %expected_response1.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %expected_response1.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %expected_response1.i.i, align 1
  %cmd_done.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 37
  %25 = ptrtoint ptr %cmd_done.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 37, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i.i = call fastcc i32 @ims_pcu_send_command(ptr noundef %1, i8 noundef zeroext -92, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i37 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i37, label %if.else.if.end18_crit_edge, label %do.end.i38

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.end.i38:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.113, i32 noundef %call.i.i) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end.i38, %if.else.if.end18_crit_edge, %if.then15
  %error.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.else.if.end18_crit_edge ], [ %call.i.i, %do.end.i38 ]
  call void @release_firmware(ptr noundef %9) #14
  br label %out

out:                                              ; preds = %if.end18, %do.end
  %error.1 = phi i32 [ %retval.0.i.ph, %do.end ], [ %error.0, %if.end18 ]
  call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool20.not = icmp eq i32 %error.1, 0
  %spec.select = select i1 %tobool20.not, i32 %count, i32 %error.1
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %out ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_handle_firmware_update(ptr noundef %pcu, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.76, i32 noundef %3) #18
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool.not3.i = icmp eq ptr %5, null
  br i1 %tobool.not3.i, label %ims_pcu_count_fw_records.exit.thread, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %count.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %rec.04.i = phi ptr [ %add.ptr.i.i.i, %while.body.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %inc.i = add i32 %count.05.i, 1
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.04.i, i32 0, i32 1
  %6 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %7, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.04.i, i32 %and.i.i.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  %tobool.not6.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool.not6.i
  br i1 %tobool.not.i, label %ims_pcu_count_fw_records.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

ims_pcu_count_fw_records.exit:                    ; preds = %while.body.i
  %call.i = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -93, i32 noundef 0, i8 noundef zeroext -61, i32 noundef 2000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i24 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i24, label %while.body.lr.ph.i, label %ims_pcu_count_fw_records.exit.do.end.i_crit_edge

ims_pcu_count_fw_records.exit.do.end.i_crit_edge: ; preds = %ims_pcu_count_fw_records.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

ims_pcu_count_fw_records.exit.thread:             ; preds = %entry
  %call.i41 = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -93, i32 noundef 0, i8 noundef zeroext -61, i32 noundef 2000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i2442 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i2442, label %ims_pcu_count_fw_records.exit.thread.while.end.i_crit_edge, label %ims_pcu_count_fw_records.exit.thread.do.end.i_crit_edge

ims_pcu_count_fw_records.exit.thread.do.end.i_crit_edge: ; preds = %ims_pcu_count_fw_records.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

ims_pcu_count_fw_records.exit.thread.while.end.i_crit_edge: ; preds = %ims_pcu_count_fw_records.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %ims_pcu_count_fw_records.exit
  %arrayidx.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 1
  %len5.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 5
  %data6.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 6
  %fw_start_addr.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 39
  %fw_end_addr.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 40
  %arrayidx4.i.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 3
  %len8.i.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 7
  %data24.i.i = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 8
  %update_firmware_status.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 10
  br label %while.body.i25

do.end.i:                                         ; preds = %ims_pcu_count_fw_records.exit.thread.do.end.i_crit_edge, %ims_pcu_count_fw_records.exit.do.end.i_crit_edge
  %call.i44 = phi i32 [ %call.i41, %ims_pcu_count_fw_records.exit.thread.do.end.i_crit_edge ], [ %call.i, %ims_pcu_count_fw_records.exit.do.end.i_crit_edge ]
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.88, i32 noundef %call.i44) #18
  br label %out

while.body.i25:                                   ; preds = %if.end30.i.while.body.i25_crit_edge, %while.body.lr.ph.i
  %count.0114.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i27, %if.end30.i.while.body.i25_crit_edge ]
  %rec.0113.i = phi ptr [ %5, %while.body.lr.ph.i ], [ %add.ptr.i.i.i32, %if.end30.i.while.body.i25_crit_edge ]
  %12 = ptrtoint ptr %rec.0113.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rec.0113.i, align 1
  %div81.i = lshr i32 %13, 1
  %len3.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0113.i, i32 0, i32 1
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len3.i, align 1
  %conv.i = trunc i16 %15 to i8
  %16 = tail call i32 @llvm.bswap.i32(i32 %div81.i) #14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx.i, align 1
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %len5.i, align 4
  %data7.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0113.i, i32 0, i32 2
  %conv.mask.i = and i16 %15, 255
  %conv9.i = zext i16 %conv.mask.i to i32
  %19 = call ptr @memcpy(ptr %data6.i, ptr %data7.i, i32 %conv9.i)
  %add.i = add nuw nsw i32 %conv9.i, 5
  %call11.i = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -92, i32 noundef %add.i, i8 noundef zeroext -60, i32 noundef 500) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.91, i32 noundef %div81.i, i32 noundef %conv9.i, i32 noundef %call11.i) #18
  br label %out

if.end19.i:                                       ; preds = %while.body.i25
  %22 = ptrtoint ptr %fw_start_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_start_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div81.i, i32 %23)
  %cmp.not.i = icmp ult i32 %div81.i, %23
  br i1 %cmp.not.i, label %if.end19.i.if.end30.i_crit_edge, label %land.lhs.true.i

if.end19.i.if.end30.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %24 = ptrtoint ptr %fw_end_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_end_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div81.i, i32 %25)
  %cmp21.i = icmp ult i32 %div81.i, %25
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true.i.if.end30.i_crit_edge

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %16, ptr %arrayidx.i, align 1
  %27 = ptrtoint ptr %len5.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %len5.i, align 4
  %call.i.i = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -90, i32 noundef 5, i8 noundef zeroext -58, i32 noundef 500) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i26 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.96, i32 noundef %div81.i, i32 noundef %conv9.i, i32 noundef %call.i.i) #18
  br label %out

if.end.i.i:                                       ; preds = %if.then23.i
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx4.i.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %div81.i)
  %cmp.not.i.i = icmp eq i32 %32, %div81.i
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end16.i.i_crit_edge

if.end.i.i.do.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %33 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %len8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %conv.i)
  %cmp11.not.i.i = icmp eq i8 %34, %conv.i
  br i1 %cmp11.not.i.i, label %if.end23.i.i, label %lor.lhs.false.i.i.do.end16.i.i_crit_edge

lor.lhs.false.i.i.do.end16.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end16.i.i_crit_edge, %if.end.i.i.do.end16.i.i_crit_edge
  %35 = phi i32 [ %32, %if.end.i.i.do.end16.i.i_crit_edge ], [ %div81.i, %lor.lhs.false.i.i.do.end16.i.i_crit_edge ]
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len8.i.i, align 4
  %conv22.i.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.99, i32 noundef %div81.i, i32 noundef %35, i32 noundef %conv9.i, i32 noundef %conv22.i.i) #18
  br label %out

if.end23.i.i:                                     ; preds = %lor.lhs.false.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %data24.i.i, ptr %data7.i, i32 %conv9.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool27.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end23.i.i.if.end30.i_crit_edge, label %do.end31.i.i

if.end23.i.i.if.end30.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

do.end31.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.102, i32 noundef %div81.i, i32 noundef %conv9.i) #18
  br label %out

if.end30.i:                                       ; preds = %if.end23.i.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge, %if.end19.i.if.end30.i_crit_edge
  %inc.i27 = add i32 %count.0114.i, 1
  %mul.i = mul i32 %inc.i27, 100
  %div31.i = udiv i32 %mul.i, %inc.i
  %42 = ptrtoint ptr %update_firmware_status.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div31.i, ptr %update_firmware_status.i, align 4
  %43 = ptrtoint ptr %len3.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %len3.i, align 1
  %add.i.i.i.i28 = add i16 %44, 6
  %conv.i.i.i29 = zext i16 %add.i.i.i.i28 to i32
  %add.i.i.i30 = add nuw nsw i32 %conv.i.i.i29, 3
  %and.i.i.i31 = and i32 %add.i.i.i30, 131068
  %add.ptr.i.i.i32 = getelementptr i8, ptr %rec.0113.i, i32 %and.i.i.i31
  %len.i.i33 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i32, i32 0, i32 1
  %45 = ptrtoint ptr %len.i.i33 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %len.i.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i82.i = icmp eq i16 %46, 0
  %tobool1.not157.i = icmp eq ptr %add.ptr.i.i.i32, null
  %tobool1.not.i = select i1 %tobool.not.i82.i, i1 true, i1 %tobool1.not157.i
  br i1 %tobool1.not.i, label %if.end30.i.while.end.i_crit_edge, label %if.end30.i.while.body.i25_crit_edge

if.end30.i.while.body.i25_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i25

if.end30.i.while.end.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end30.i.while.end.i_crit_edge, %ims_pcu_count_fw_records.exit.thread.while.end.i_crit_edge
  %call33.i = tail call fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext -91, i32 noundef 0, i8 noundef zeroext -59, i32 noundef 2000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %while.end.i.if.end_crit_edge, label %do.end38.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end38.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.94, i32 noundef %call33.i) #18
  br label %if.end

if.end:                                           ; preds = %do.end38.i, %while.end.i.if.end_crit_edge
  %cmd_buf.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 33
  %49 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -88, ptr %cmd_buf.i, align 4
  %expected_response1.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %50 = ptrtoint ptr %expected_response1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %expected_response1.i.i, align 1
  %cmd_done.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %51 = ptrtoint ptr %cmd_done.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %cmd_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i.i34 = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -79, ptr noundef %cmd_buf.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.out_crit_edge, label %do.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cmd_buf.i, align 4
  %conv10.i = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.104, i32 noundef %conv10.i, i32 noundef %call.i.i34) #18
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.86, i32 noundef %call.i.i34) #18
  br label %out

out:                                              ; preds = %do.end8, %if.end.out_crit_edge, %do.end31.i.i, %do.end16.i.i, %do.end.i.i, %do.end16.i, %do.end.i
  %retval1.0 = phi i32 [ %call.i.i34, %do.end8 ], [ %call.i.i, %do.end.i.i ], [ -22, %do.end16.i.i ], [ -22, %do.end31.i.i ], [ %call11.i, %do.end16.i ], [ %call.i44, %do.end.i ], [ 0, %if.end.out_crit_edge ]
  %update_firmware_status = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 10
  %58 = ptrtoint ptr %update_firmware_status to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval1.0, ptr %update_firmware_status, align 4
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void @sysfs_notify(ptr noundef %60, ptr noundef null, ptr noundef nonnull @.str.73) #14
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ims_pcu_execute_bl_command(ptr noundef %pcu, i8 noundef zeroext %command, i32 noundef %len, i8 noundef zeroext %expected_response, i32 noundef %response_time) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buf = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 33
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %command, ptr %cmd_buf, align 4
  %add = add i32 %len, 1
  %conv = zext i8 %expected_response to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %expected_response)
  %tobool4.not = icmp eq i8 %expected_response, 0
  %conv5 = select i1 %tobool4.not, i8 0, i8 -47
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %1 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv5, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %2 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -79, ptr noundef %cmd_buf, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  br i1 %tobool4.not, label %if.end.i.cleanup_crit_edge, label %if.else.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %response_time) #14
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef %call2.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %land.lhs.true

do.body.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ims_pcu_execute_bl_command, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %4, ptr noundef nonnull @.str.110, i32 noundef 177) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %entry.do.end_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -110, %if.then12.i ], [ -110, %do.body.i ]
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_buf, align 4
  %conv10 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.104, i32 noundef %conv10, i32 noundef %retval.0.i) #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else.i.i
  %arrayidx15 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %expected_response)
  %cmp.not = icmp eq i8 %10, %expected_response
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %do.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end22:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %conv16 = zext i8 %10 to i32
  %dev23 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %11 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.107, i32 noundef %conv16, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %land.lhs.true.cleanup_crit_edge, %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ -22, %do.end22 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_send_command(ptr nocapture noundef %pcu, i8 noundef zeroext %command, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %urb_out_buf = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 26
  %0 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_out_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %1, align 1
  %3 = load ptr, ptr %urb_out_buf, align 4
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %command, ptr %arrayidx3, align 1
  %ack_id6 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 34
  %5 = ptrtoint ptr %ack_id6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ack_id6, align 4
  %inc7 = add i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  %spec.select = select i1 %cmp, i8 1, i8 %inc7
  %spec.select147 = select i1 %cmp, i8 0, i8 %6
  %7 = ptrtoint ptr %ack_id6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %ack_id6, align 4
  %8 = zext i8 %spec.select147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %spec.select147, label %entry.if.end16_crit_edge [
    i8 2, label %entry.if.then12_crit_edge
    i8 3, label %entry.if.then12_crit_edge204
    i8 16, label %entry.if.then12_crit_edge205
  ]

entry.if.then12_crit_edge205:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

entry.if.then12_crit_edge204:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12:                                        ; preds = %entry.if.then12_crit_edge, %entry.if.then12_crit_edge204, %entry.if.then12_crit_edge205
  %9 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb_out_buf, align 4
  %arrayidx15 = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %entry.if.end16_crit_edge
  %count.0 = phi i32 [ 3, %if.then12 ], [ 2, %entry.if.end16_crit_edge ]
  %12 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb_out_buf, align 4
  %arrayidx19 = getelementptr i8, ptr %13, i32 %count.0
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select147, ptr %arrayidx19, align 1
  %add22 = add i8 %spec.select147, %command
  %count.1191 = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp24192 = icmp sgt i32 %len, 0
  br i1 %cmp24192, label %for.body.lr.ph, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %max_out_size = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 27
  %ep_out.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %count.1196 = phi i32 [ %count.1191, %for.body.lr.ph ], [ %count.1, %if.end44.for.body_crit_edge ]
  %csum.0195 = phi i8 [ %add22, %for.body.lr.ph ], [ %add52, %if.end44.for.body_crit_edge ]
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc54, %if.end44.for.body_crit_edge ]
  %chunk.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %chunk.1, %if.end44.for.body_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %data, i32 %i.0194
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx26, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %16, label %for.body.ims_pcu_byte_needs_escape.exit149_crit_edge [
    i8 2, label %for.body._crit_edge
    i8 3, label %for.body._crit_edge206
    i8 16, label %for.body._crit_edge207
  ]

for.body._crit_edge207:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %18

for.body._crit_edge206:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %18

for.body._crit_edge:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %18

for.body.ims_pcu_byte_needs_escape.exit149_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %ims_pcu_byte_needs_escape.exit149

18:                                               ; preds = %for.body._crit_edge, %for.body._crit_edge206, %for.body._crit_edge207
  br label %ims_pcu_byte_needs_escape.exit149

ims_pcu_byte_needs_escape.exit149:                ; preds = %18, %for.body.ims_pcu_byte_needs_escape.exit149_crit_edge
  %19 = phi i1 [ true, %18 ], [ false, %for.body.ims_pcu_byte_needs_escape.exit149_crit_edge ]
  %20 = phi i32 [ 2, %18 ], [ 1, %for.body.ims_pcu_byte_needs_escape.exit149_crit_edge ]
  %add29 = add i32 %20, %count.1196
  %21 = ptrtoint ptr %max_out_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %22)
  %cmp30.not = icmp ult i32 %add29, %22
  br i1 %cmp30.not, label %ims_pcu_byte_needs_escape.exit149.if.end37_crit_edge, label %if.then32

ims_pcu_byte_needs_escape.exit149.if.end37_crit_edge: ; preds = %ims_pcu_byte_needs_escape.exit149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then32:                                        ; preds = %ims_pcu_byte_needs_escape.exit149
  %inc33 = add i32 %chunk.0193, 1
  %23 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcu, align 4
  %25 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_out.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %30, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %31 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb_out_buf, align 4
  %call2.i = tail call i32 @usb_bulk_msg(ptr noundef %24, i32 noundef %or.i, ptr noundef %32, i32 noundef %count.1196, ptr noundef null, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then32.if.end37_crit_edge

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_send_command, %if.then7.i)) #14
          to label %cleanup [label %if.then7.i], !srcloc !429

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %conv8.i = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, ptr noundef %34, ptr noundef nonnull @.str.112, i32 noundef %conv8.i, i32 noundef %inc33, i32 noundef %call2.i) #14
  br label %cleanup

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %ims_pcu_byte_needs_escape.exit149.if.end37_crit_edge
  %count.2 = phi i32 [ %count.1196, %ims_pcu_byte_needs_escape.exit149.if.end37_crit_edge ], [ 0, %if.then32.if.end37_crit_edge ]
  %chunk.1 = phi i32 [ %chunk.0193, %ims_pcu_byte_needs_escape.exit149.if.end37_crit_edge ], [ %inc33, %if.then32.if.end37_crit_edge ]
  br i1 %19, label %if.then40, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb_out_buf, align 4
  %inc42 = add i32 %count.2, 1
  %arrayidx43 = getelementptr i8, ptr %36, i32 %count.2
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  %count.3 = phi i32 [ %inc42, %if.then40 ], [ %count.2, %if.end37.if.end44_crit_edge ]
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx26, align 1
  %40 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb_out_buf, align 4
  %arrayidx48 = getelementptr i8, ptr %41, i32 %count.3
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %arrayidx48, align 1
  %43 = load i8, ptr %arrayidx26, align 1
  %add52 = add i8 %43, %csum.0195
  %inc54 = add nuw nsw i32 %i.0194, 1
  %count.1 = add i32 %count.3, 1
  %exitcond.not = icmp eq i32 %inc54, %len
  br i1 %exitcond.not, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %if.end16.for.end_crit_edge
  %chunk.0.lcssa = phi i32 [ 0, %if.end16.for.end_crit_edge ], [ %chunk.1, %if.end44.for.end_crit_edge ]
  %csum.0.lcssa = phi i8 [ %add22, %if.end16.for.end_crit_edge ], [ %add52, %if.end44.for.end_crit_edge ]
  %count.1.lcssa = phi i32 [ %count.1191, %if.end16.for.end_crit_edge ], [ %count.1, %if.end44.for.end_crit_edge ]
  %add56 = sub i8 0, %csum.0.lcssa
  %44 = zext i8 %add56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %add56, label %for.end.ims_pcu_byte_needs_escape.exit151_crit_edge [
    i8 2, label %for.end._crit_edge
    i8 3, label %for.end._crit_edge208
    i8 16, label %for.end._crit_edge209
  ]

for.end._crit_edge209:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %45

for.end._crit_edge208:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %45

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %45

for.end.ims_pcu_byte_needs_escape.exit151_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ims_pcu_byte_needs_escape.exit151

45:                                               ; preds = %for.end._crit_edge, %for.end._crit_edge208, %for.end._crit_edge209
  br label %ims_pcu_byte_needs_escape.exit151

ims_pcu_byte_needs_escape.exit151:                ; preds = %45, %for.end.ims_pcu_byte_needs_escape.exit151_crit_edge
  %46 = phi i1 [ true, %45 ], [ false, %for.end.ims_pcu_byte_needs_escape.exit151_crit_edge ]
  %47 = phi i32 [ 3, %45 ], [ 2, %for.end.ims_pcu_byte_needs_escape.exit151_crit_edge ]
  %add61 = add i32 %47, %count.1.lcssa
  %max_out_size62 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 27
  %48 = ptrtoint ptr %max_out_size62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_out_size62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %49)
  %cmp63.not = icmp ult i32 %add61, %49
  br i1 %cmp63.not, label %ims_pcu_byte_needs_escape.exit151.if.end71_crit_edge, label %if.then65

ims_pcu_byte_needs_escape.exit151.if.end71_crit_edge: ; preds = %ims_pcu_byte_needs_escape.exit151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then65:                                        ; preds = %ims_pcu_byte_needs_escape.exit151
  %inc66 = add i32 %chunk.0.lcssa, 1
  %50 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcu, align 4
  %ep_out.i152 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 25
  %52 = ptrtoint ptr %ep_out.i152 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ep_out.i152, align 4
  %bEndpointAddress.i153 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %bEndpointAddress.i153 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bEndpointAddress.i153, align 1
  %conv.i154 = zext i8 %55 to i32
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %51, align 8
  %shl.i.i155 = shl i32 %57, 8
  %shl1.i.i156 = shl nuw nsw i32 %conv.i154, 15
  %or.i.i157 = or i32 %shl.i.i155, %shl1.i.i156
  %or.i158 = or i32 %or.i.i157, -1073741824
  %58 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %urb_out_buf, align 4
  %call2.i160 = tail call i32 @usb_bulk_msg(ptr noundef %51, i32 noundef %or.i158, ptr noundef %59, i32 noundef %count.1.lcssa, ptr noundef null, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i160)
  %cmp.i161 = icmp slt i32 %call2.i160, 0
  br i1 %cmp.i161, label %do.body.i162, label %if.then65.if.end71_crit_edge

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

do.body.i162:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_send_command, %if.then7.i165)) #14
          to label %cleanup [label %if.then7.i165], !srcloc !429

if.then7.i165:                                    ; preds = %do.body.i162
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i163 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %60 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i163, align 4
  %conv8.i164 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, ptr noundef %61, ptr noundef nonnull @.str.112, i32 noundef %conv8.i164, i32 noundef %inc66, i32 noundef %call2.i160) #14
  br label %cleanup

if.end71:                                         ; preds = %if.then65.if.end71_crit_edge, %ims_pcu_byte_needs_escape.exit151.if.end71_crit_edge
  %count.4 = phi i32 [ %count.1.lcssa, %ims_pcu_byte_needs_escape.exit151.if.end71_crit_edge ], [ 0, %if.then65.if.end71_crit_edge ]
  %chunk.2 = phi i32 [ %chunk.0.lcssa, %ims_pcu_byte_needs_escape.exit151.if.end71_crit_edge ], [ %inc66, %if.then65.if.end71_crit_edge ]
  br i1 %46, label %if.then74, label %if.end71.if.end78_crit_edge

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %urb_out_buf, align 4
  %inc76 = add i32 %count.4, 1
  %arrayidx77 = getelementptr i8, ptr %63, i32 %count.4
  %64 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 16, ptr %arrayidx77, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71.if.end78_crit_edge
  %count.5 = phi i32 [ %inc76, %if.then74 ], [ %count.4, %if.end71.if.end78_crit_edge ]
  %65 = ptrtoint ptr %urb_out_buf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %urb_out_buf, align 4
  %inc80 = add i32 %count.5, 1
  %arrayidx81 = getelementptr i8, ptr %66, i32 %count.5
  %67 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %add56, ptr %arrayidx81, align 1
  %68 = load ptr, ptr %urb_out_buf, align 4
  %inc83 = add i32 %count.5, 2
  %arrayidx84 = getelementptr i8, ptr %68, i32 %inc80
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %arrayidx84, align 1
  %inc85 = add i32 %chunk.2, 1
  %70 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcu, align 4
  %ep_out.i168 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 25
  %72 = ptrtoint ptr %ep_out.i168 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep_out.i168, align 4
  %bEndpointAddress.i169 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bEndpointAddress.i169 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bEndpointAddress.i169, align 1
  %conv.i170 = zext i8 %75 to i32
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %71, align 8
  %shl.i.i171 = shl i32 %77, 8
  %shl1.i.i172 = shl nuw nsw i32 %conv.i170, 15
  %or.i.i173 = or i32 %shl.i.i171, %shl1.i.i172
  %or.i174 = or i32 %or.i.i173, -1073741824
  %78 = load ptr, ptr %urb_out_buf, align 4
  %call2.i176 = tail call i32 @usb_bulk_msg(ptr noundef %71, i32 noundef %or.i174, ptr noundef %78, i32 noundef %inc83, ptr noundef null, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i176)
  %cmp.i177 = icmp slt i32 %call2.i176, 0
  br i1 %cmp.i177, label %do.body.i178, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i178:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_send_command, %if.then7.i181)) #14
          to label %cleanup [label %if.then7.i181], !srcloc !429

if.then7.i181:                                    ; preds = %do.body.i178
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i179 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %79 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i179, align 4
  %conv8.i180 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, ptr noundef %80, ptr noundef nonnull @.str.112, i32 noundef %conv8.i180, i32 noundef %inc85, i32 noundef %call2.i176) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i181, %do.body.i178, %if.end78.cleanup_crit_edge, %if.then7.i165, %do.body.i162, %if.then7.i, %do.body.i
  %retval.0 = phi i32 [ %call2.i, %if.then7.i ], [ %call2.i, %do.body.i ], [ %call2.i160, %if.then7.i165 ], [ %call2.i160, %do.body.i162 ], [ %call2.i176, %if.then7.i181 ], [ 0, %if.end78.cleanup_crit_edge ], [ %call2.i176, %do.body.i178 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_reset_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !431
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.116) #18
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 37, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = call fastcc i32 @ims_pcu_send_command(ptr noundef %1, i8 noundef zeroext -95, ptr noundef nonnull @ims_pcu_reset_device.reset_byte, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %do.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.119, i32 noundef %call.i) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_attribute_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.ims_pcu_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %field_length = getelementptr inbounds %struct.ims_pcu_attribute, ptr %dattr, i32 0, i32 2
  %4 = ptrtoint ptr %field_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field_length, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.122, i32 noundef %5, ptr noundef %add.ptr4) #14
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_attribute_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.ims_pcu_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %field_length = getelementptr inbounds %struct.ims_pcu_attribute, ptr %dattr, i32 0, i32 2
  %4 = ptrtoint ptr %field_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp = icmp ult i32 %5, %count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef %5) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %5)
  %cmp8 = icmp ugt i32 %call6, %5
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  %call11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %field_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field_length, align 4
  %8 = call ptr @memset(ptr %add.ptr4, i32 0, i32 %7)
  %9 = call ptr @memcpy(ptr %add.ptr4, ptr %buf, i32 %call6)
  %call15 = tail call fastcc i32 @ims_pcu_set_info(ptr noundef %1)
  %call16 = tail call fastcc i32 @ims_pcu_get_info(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp18 = icmp slt i32 %call15, 0
  %call15.count = select i1 %cmp18, i32 %call15, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15.count, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_set_info(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %part_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %part_number, i32 15)
  %arrayidx2 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 17
  %date_of_manufacturing = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 6
  %1 = ptrtoint ptr %date_of_manufacturing to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %date_of_manufacturing, align 4
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %arrayidx2, align 1
  %arrayidx5 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 25
  %serial_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 5
  %4 = ptrtoint ptr %serial_number to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %serial_number, align 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %arrayidx5, align 1
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %7 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -53, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %8 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -85, ptr noundef %arrayidx, i32 noundef 31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_set_info, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %10, ptr noundef nonnull @.str.110, i32 noundef 171) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %entry.do.end_crit_edge
  %retval.0.i21 = phi i32 [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.123, i32 noundef %retval.0.i21) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_get_info(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %0 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -59, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %1 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -91, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_info, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef 165) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %entry.do.end_crit_edge
  %retval.0.i18 = phi i32 [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.125, i32 noundef %retval.0.i18) #18
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %part_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 4
  %arrayidx = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %6 = call ptr @memcpy(ptr %part_number, ptr %arrayidx, i32 15)
  %date_of_manufacturing = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 6
  %arrayidx3 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 17
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %arrayidx3, align 1
  %9 = ptrtoint ptr %date_of_manufacturing to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %date_of_manufacturing, align 4
  %serial_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 5
  %arrayidx6 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 25
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %arrayidx6, align 1
  %12 = ptrtoint ptr %serial_number to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %serial_number, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i18, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ims_pcu_process_async_firmware(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.76) #18
  br label %out

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  %sub.i = add i32 %5, -6
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %cmp.not10.i = icmp ugt ptr %3, %arrayidx.i
  br i1 %cmp.not10.i, label %if.end.do.end5_crit_edge, label %for.body.preheader.i

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

for.body.preheader.i:                             ; preds = %if.end
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %rec.011.i = phi ptr [ %add.ptr.i.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.body.preheader.i ]
  %cmp2.i = icmp eq ptr %rec.011.i, %arrayidx.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.end7, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i, i32 0, i32 1
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %len.i.i.i, align 1
  %add.i.i.i = add i16 %9, 6
  %conv.i.i = zext i16 %add.i.i.i to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %rec.011.i, i32 %and.i.i
  %cmp.not.i = icmp ugt ptr %add.ptr.i.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc.i.do.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.do.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end5:                                          ; preds = %for.inc.i.do.end5_crit_edge, %if.end.do.end5_crit_edge
  %dev6 = getelementptr inbounds %struct.ims_pcu, ptr %context, i32 0, i32 1
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.76) #18
  br label %out

if.end7:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %context, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %call8 = tail call fastcc i32 @ims_pcu_handle_firmware_update(ptr noundef %context, ptr noundef nonnull %fw)
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  tail call void @release_firmware(ptr noundef nonnull %fw) #14
  br label %out

out:                                              ; preds = %if.end7, %do.end5, %do.end
  %async_firmware_done = getelementptr inbounds %struct.ims_pcu, ptr %context, i32 0, i32 41
  tail call void @complete(ptr noundef %async_firmware_done) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_get_device_info(ptr noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ims_pcu_get_info(ptr noundef %pcu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %0 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -56, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %1 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -88, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end4

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_device_info, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef 168) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %if.end.do.end_crit_edge
  %retval.0.i120149 = phi i32 [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.147, i32 noundef %retval.0.i120149) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %fw_version = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 7
  %arrayidx = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %7 to i32
  %arrayidx6 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %arrayidx9 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 4
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 4
  %conv10 = zext i8 %11 to i32
  %arrayidx12 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 5
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %arrayidx15 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 6
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 2
  %conv16 = zext i8 %15 to i32
  %arrayidx18 = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 7
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 10, ptr noundef nonnull @.str.149, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv19)
  %18 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -55, ptr %expected_response1.i, align 1
  %19 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cmd_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i124 = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -87, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %if.end.i126, label %if.end4.do.end26_crit_edge

if.end4.do.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26

if.end.i126:                                      ; preds = %if.end4
  %call5.i127 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i127)
  %tobool6.not.i128 = icmp eq i32 %call5.i127, 0
  br i1 %tobool6.not.i128, label %do.body.i129, label %if.end28

do.body.i129:                                     ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_device_info, %if.then12.i131)) #14
          to label %do.end26 [label %if.then12.i131], !srcloc !429

if.then12.i131:                                   ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i130 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %21, ptr noundef nonnull @.str.110, i32 noundef 169) #14
  br label %do.end26

do.end26:                                         ; preds = %if.then12.i131, %do.body.i129, %if.end4.do.end26_crit_edge
  %retval.0.i132155 = phi i32 [ -110, %do.body.i129 ], [ -110, %if.then12.i131 ], [ %call.i124, %if.end4.do.end26_crit_edge ]
  %dev27 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.151, i32 noundef %retval.0.i132155) #18
  br label %cleanup

if.end28:                                         ; preds = %if.end.i126
  %bl_version = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 2
  %conv32 = zext i8 %25 to i32
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6, align 1
  %conv35 = zext i8 %27 to i32
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9, align 4
  %conv38 = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12, align 1
  %conv41 = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx15, align 2
  %conv44 = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx18, align 1
  %conv47 = zext i8 %35 to i32
  %call48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bl_version, i32 noundef 10, ptr noundef nonnull @.str.149, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv44, i32 noundef %conv47)
  %36 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -62, ptr %expected_response1.i, align 1
  %37 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmd_done.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i137 = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -94, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end.i139, label %if.end28.do.end54_crit_edge

if.end28.do.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

if.end.i139:                                      ; preds = %if.end28
  %call5.i140 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i140)
  %tobool6.not.i141 = icmp eq i32 %call5.i140, 0
  br i1 %tobool6.not.i141, label %do.body.i142, label %if.end56

do.body.i142:                                     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_device_info, %if.then12.i144)) #14
          to label %do.end54 [label %if.then12.i144], !srcloc !429

if.then12.i144:                                   ; preds = %do.body.i142
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i143 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %39, ptr noundef nonnull @.str.110, i32 noundef 162) #14
  br label %do.end54

do.end54:                                         ; preds = %if.then12.i144, %do.body.i142, %if.end28.do.end54_crit_edge
  %retval.0.i145161 = phi i32 [ -110, %do.body.i142 ], [ -110, %if.then12.i144 ], [ %call.i137, %if.end28.do.end54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %40 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.154, i32 noundef %retval.0.i145161) #18
  br label %cleanup

if.end56:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #16
  %reset_reason = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 9
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 2
  %conv60 = zext i8 %43 to i32
  %call61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %reset_reason, i32 noundef 3, ptr noundef nonnull @.str.156, i32 noundef %conv60)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_get_device_info.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_get_device_info, %if.then67)) #14
          to label %cleanup [label %if.then67], !srcloc !429

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %dev68 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %44 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev68, align 4
  %part_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 4
  %date_of_manufacturing = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 6
  %serial_number = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_get_device_info.__UNIQUE_ID_ddebug238, ptr noundef %45, ptr noundef nonnull @.str.157, ptr noundef %part_number, ptr noundef %date_of_manufacturing, ptr noundef %serial_number, ptr noundef %fw_version, ptr noundef %bl_version, ptr noundef %reset_reason) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end56, %do.end54, %do.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i120149, %do.end ], [ %retval.0.i132155, %do.end26 ], [ %retval.0.i145161, %do.end54 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_identify_type(ptr noundef %pcu, ptr nocapture noundef %device_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %0 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -50, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %1 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -82, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_identify_type, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef 174) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %entry.do.end_crit_edge
  %retval.0.i1720 = phi i32 [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.158, i32 noundef %retval.0.i1720) #18
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %device_id, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ims_pcu_identify_type.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_identify_type, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !429

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %11 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_id, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ims_pcu_identify_type.__UNIQUE_ID_ddebug239, ptr noundef %10, ptr noundef nonnull @.str.160, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i1720, %do.end ], [ 0, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_setup_gamepad(ptr nocapture noundef %pcu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #17
  %call1 = tail call ptr @input_allocate_device() #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.187) #18
  br label %err_free_mem

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %name = getelementptr inbounds %struct.ims_pcu_gamepad, ptr %call7.i.i, i32 0, i32 1
  %device_no = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 2
  %4 = ptrtoint ptr %device_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_no, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.189, i32 noundef %5)
  %6 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcu, align 4
  %phys = getelementptr inbounds %struct.ims_pcu_gamepad, ptr %call7.i.i, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.186, ptr noundef %11, ptr noundef %devpath.i) #14
  %call9 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.190, i32 noundef 32) #14
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %call1, align 8
  %phys15 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %13 = ptrtoint ptr %phys15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %phys, ptr %phys15, align 4
  %14 = ptrtoint ptr %pcu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcu, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 16, i32 7
  %17 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idVendor.i, align 8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #14
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 16, i32 8
  %21 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idProduct.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #14
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 16, i32 9
  %25 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bcdDevice.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #14
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %version.i, align 2
  %ctrl_intf = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 13
  %29 = ptrtoint ptr %ctrl_intf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_intf, align 4
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev17, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %32 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 9
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  %or.i87 = or i32 %35, 203096064
  store i32 %or.i87, ptr %add.ptr.i, align 4
  %or.i88 = or i32 %33, 10
  store i32 %or.i88, ptr %evbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %call33 = tail call i32 @input_register_device(ptr noundef nonnull %call1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev39 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %36 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.192, i32 noundef %call33) #18
  br label %err_free_mem

if.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %gamepad41 = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 43
  %38 = ptrtoint ptr %gamepad41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %gamepad41, align 4
  br label %cleanup

err_free_mem:                                     ; preds = %do.end38, %do.end
  %error.0 = phi i32 [ %call33, %do.end38 ], [ -12, %do.end ]
  tail call void @input_free_device(ptr noundef %call1) #14
  tail call void @kfree(ptr noundef %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end40
  %retval.0 = phi i32 [ %error.0, %err_free_mem ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_reg_data_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !431
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %ofn_reg_addr = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %ofn_reg_addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ofn_reg_addr, align 1
  %call1 = call fastcc i32 @ims_pcu_read_ofn_config(ptr noundef %1, i8 noundef zeroext %4, ptr noundef nonnull %data)
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %conv = zext i8 %6 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.163, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_reg_data_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !431
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %ofn_reg_addr = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %ofn_reg_addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ofn_reg_addr, align 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  %call2 = call fastcc i32 @ims_pcu_write_ofn_config(ptr noundef %1, i8 noundef zeroext %4, i8 noundef zeroext %6)
  call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_read_ofn_config(ptr noundef %pcu, i8 noundef zeroext %addr, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %1 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -45, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %2 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -76, ptr noundef nonnull %addr.addr, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_read_ofn_config, %if.then12.i)) #14
          to label %cleanup [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %4, ptr noundef nonnull @.str.110, i32 noundef 180) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %add.ptr = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr, align 1
  %.mask = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp.not = icmp eq i16 %.mask, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then12.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -5, %if.end.cleanup_crit_edge ], [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ims_pcu_write_ofn_config(ptr noundef %pcu, i8 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #14
  %0 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %addr, ptr %buffer, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  %expected_response1.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 35
  %3 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -46, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37
  %4 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 37, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = call fastcc i32 @ims_pcu_send_command(ptr noundef %pcu, i8 noundef zeroext -77, ptr noundef nonnull %buffer, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_write_ofn_config, %if.then12.i)) #14
          to label %cleanup [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ims_pcu, ptr %pcu, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %6, ptr noundef nonnull @.str.110, i32 noundef 179) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr %struct.ims_pcu, ptr %pcu, i32 0, i32 33, i32 2
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr, align 1
  %.mask = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp.not = icmp eq i16 %.mask, 0
  %. = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then12.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_reg_addr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %ofn_reg_addr = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ofn_reg_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ofn_reg_addr, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.163, i32 noundef %conv) #14
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_reg_addr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !431
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %ofn_reg_addr = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %ofn_reg_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ofn_reg_addr, align 1
  call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_bit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !431
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %addr = getelementptr inbounds %struct.ims_pcu_ofn_bit_attribute, ptr %dattr, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 4
  %call4 = call fastcc i32 @ims_pcu_read_ofn_config(ptr noundef %1, i8 noundef zeroext %4, ptr noundef nonnull %data)
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %conv = zext i8 %6 to i32
  %nr = getelementptr inbounds %struct.ims_pcu_ofn_bit_attribute, ptr %dattr, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr, align 1
  %conv6 = zext i8 %8 to i32
  %9 = lshr i32 %conv, %conv6
  %10 = and i32 %9, 1
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.74, i32 noundef %10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_ofn_bit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !431
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #14
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data, align 1, !annotation !431
  %call4 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmd_mutex = getelementptr inbounds %struct.ims_pcu, ptr %1, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %addr = getelementptr inbounds %struct.ims_pcu_ofn_bit_attribute, ptr %dattr, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 4
  %call7 = call fastcc i32 @ims_pcu_read_ofn_config(ptr noundef %1, i8 noundef zeroext %7, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %nr14 = getelementptr inbounds %struct.ims_pcu_ofn_bit_attribute, ptr %dattr, i32 0, i32 2
  %10 = ptrtoint ptr %nr14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw i32 1, %conv15
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %14 = trunc i32 %shl16 to i8
  %15 = xor i8 %14, -1
  %conv18 = and i8 %13, %15
  %conv13 = or i8 %13, %14
  %storemerge = select i1 %tobool10.not, i8 %conv18, i8 %conv13
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr, align 4
  %call21 = call fastcc i32 @ims_pcu_write_ofn_config(ptr noundef %1, i8 noundef zeroext %17, i8 noundef zeroext %storemerge)
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %if.end6.if.end22_crit_edge
  %error.0 = phi i32 [ %call7, %if.end6.if.end22_crit_edge ], [ %call21, %if.then9 ]
  call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool24.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool24.not, i32 %count, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end22 ], [ %call4, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_backlight_get_brightness(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cdev, i32 -748
  %cmd_mutex = getelementptr i8, ptr %cdev, i32 -292
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %expected_response1.i = getelementptr i8, ptr %cdev, i32 -351
  %0 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -52, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr i8, ptr %cdev, i32 -348
  %1 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr i8, ptr %cdev, i32 -344
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = tail call fastcc i32 @ims_pcu_send_command(ptr noundef %add.ptr3, i8 noundef zeroext -84, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.else

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_backlight_get_brightness, %if.then12.i)) #14
          to label %do.end [label %if.then12.i], !srcloc !429

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %cdev, i32 -744
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef 172) #14
  br label %do.end

do.end:                                           ; preds = %if.then12.i, %do.body.i, %entry.do.end_crit_edge
  %retval.0.i13 = phi i32 [ -110, %do.body.i ], [ -110, %if.then12.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr i8, ptr %cdev, i32 -744
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.175, i32 noundef %retval.0.i13) #18
  br label %if.end

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %cdev, i32 -478
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #14
  %conv = zext i16 %8 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %brightness.0 = phi i32 [ 0, %do.end ], [ %conv, %if.else ]
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  ret i32 %brightness.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ims_pcu_backlight_set_brightness(ptr noundef %cdev, i32 noundef %value) #2 align 64 {
entry:
  %br_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cdev, i32 -748
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %br_val) #14
  %conv = trunc i32 %value to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %br_val to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %br_val, align 2
  %cmd_mutex = getelementptr i8, ptr %cdev, i32 -292
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #14
  %expected_response1.i = getelementptr i8, ptr %cdev, i32 -351
  %2 = ptrtoint ptr %expected_response1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -58, ptr %expected_response1.i, align 1
  %cmd_done.i = getelementptr i8, ptr %cdev, i32 -348
  %3 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr i8, ptr %cdev, i32 -344
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #14
  %call.i = call fastcc i32 @ims_pcu_send_command(ptr noundef %add.ptr3, i8 noundef zeroext -90, ptr noundef nonnull %br_val, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ims_pcu_execute_command.exit_crit_edge

entry.__ims_pcu_execute_command.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ims_pcu_execute_command.exit

if.end.i:                                         ; preds = %entry
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ims_pcu_backlight_set_brightness, %__ims_pcu_execute_command.exit.thread)) #14
          to label %__ims_pcu_execute_command.exit [label %__ims_pcu_execute_command.exit.thread], !srcloc !429

__ims_pcu_execute_command.exit.thread:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %cdev, i32 -744
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, ptr noundef %5, ptr noundef nonnull @.str.110, i32 noundef 166) #14
  br label %do.end

__ims_pcu_execute_command.exit:                   ; preds = %do.body.i, %entry.__ims_pcu_execute_command.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__ims_pcu_execute_command.exit_crit_edge ], [ -110, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.i)
  %cond = icmp eq i32 %retval.0.i, -19
  br i1 %cond, label %__ims_pcu_execute_command.exit.if.end_crit_edge, label %__ims_pcu_execute_command.exit.do.end_crit_edge

__ims_pcu_execute_command.exit.do.end_crit_edge:  ; preds = %__ims_pcu_execute_command.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

__ims_pcu_execute_command.exit.if.end_crit_edge:  ; preds = %__ims_pcu_execute_command.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %__ims_pcu_execute_command.exit.do.end_crit_edge, %__ims_pcu_execute_command.exit.thread
  %retval.0.i14 = phi i32 [ -110, %__ims_pcu_execute_command.exit.thread ], [ %retval.0.i, %__ims_pcu_execute_command.exit.do.end_crit_edge ]
  %dev = getelementptr i8, ptr %cdev, i32 -744
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.177, i32 noundef %value, i32 noundef %retval.0.i14) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %__ims_pcu_execute_command.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i15 = phi i32 [ -19, %__ims_pcu_execute_command.exit.if.end_crit_edge ], [ %retval.0.i14, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %br_val) #14
  ret i32 %retval.0.i15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !142, !144, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !223, !225, !226, !227, !228, !230, !231, !232, !234, !236, !237, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !302, !303, !304, !306, !307, !308, !310, !312, !313, !315, !316, !317, !318, !320, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !372, !373, !374, !375, !377, !378, !379, !380, !382, !383, !384, !385, !387, !388, !389, !390, !392, !394, !396, !397, !398, !400, !402, !403, !404, !405, !407, !409, !411, !412, !413}
!llvm.module.flags = !{!415, !416, !417, !418, !419, !420, !421, !422}
!llvm.ident = !{!423}

!0 = !{ptr @__initcall__kmod_ims_pcu__240_2145_ims_pcu_driver_init6, !1, !"__initcall__kmod_ims_pcu__240_2145_ims_pcu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/ims-pcu.c", i32 2145, i32 1}
!2 = !{ptr @__exitcall_ims_pcu_driver_exit, !1, !"__exitcall_ims_pcu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/ims-pcu.c", i32 2147, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/ims-pcu.c", i32 2148, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/ims-pcu.c", i32 2149, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ims_pcu_driver, !12, !"ims_pcu_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/misc/ims-pcu.c", i32 2133, i32 26}
!13 = !{ptr @ims_pcu_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/input/misc/ims-pcu.c", i32 2003, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/ims-pcu.c", i32 2014, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ims_pcu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ims_pcu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/ims-pcu.c", i32 1682, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ims_pcu_parse_cdc_data._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ims_pcu_parse_cdc_data._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/ims-pcu.c", i32 1690, i32 3}
!34 = !{ptr @ims_pcu_parse_cdc_data._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ims_pcu_parse_cdc_data._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/ims-pcu.c", i32 1697, i32 3}
!38 = !{ptr @ims_pcu_parse_cdc_data._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ims_pcu_parse_cdc_data._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/ims-pcu.c", i32 1705, i32 3}
!42 = !{ptr @ims_pcu_parse_cdc_data._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ims_pcu_parse_cdc_data._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/ims-pcu.c", i32 1712, i32 3}
!46 = !{ptr @ims_pcu_parse_cdc_data._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ims_pcu_parse_cdc_data._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/ims-pcu.c", i32 1615, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ims_pcu_get_cdc_union_desc._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ims_pcu_get_cdc_union_desc._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/ims-pcu.c", i32 1620, i32 3}
!55 = !{ptr @ims_pcu_get_cdc_union_desc._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ims_pcu_get_cdc_union_desc._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/ims-pcu.c", i32 1628, i32 4}
!59 = !{ptr @ims_pcu_get_cdc_union_desc._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ims_pcu_get_cdc_union_desc._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/misc/ims-pcu.c", i32 1634, i32 4}
!63 = !{ptr @ims_pcu_get_cdc_union_desc.__UNIQUE_ID_ddebug237, !62, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/ims-pcu.c", i32 1639, i32 4}
!66 = !{ptr @ims_pcu_get_cdc_union_desc._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ims_pcu_get_cdc_union_desc._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/ims-pcu.c", i32 1649, i32 2}
!70 = !{ptr @ims_pcu_get_cdc_union_desc._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ims_pcu_get_cdc_union_desc._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/ims-pcu.c", i32 1518, i32 3}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ims_pcu_buffers_alloc._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ims_pcu_buffers_alloc._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/ims-pcu.c", i32 1525, i32 3}
!79 = !{ptr @ims_pcu_buffers_alloc._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ims_pcu_buffers_alloc._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/ims-pcu.c", i32 1545, i32 3}
!83 = !{ptr @ims_pcu_buffers_alloc._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ims_pcu_buffers_alloc._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ims_pcu_buffers_alloc._entry.45, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/ims-pcu.c", i32 1553, i32 3}
!87 = !{ptr @ims_pcu_buffers_alloc._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ims_pcu_buffers_alloc._entry.47, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/input/misc/ims-pcu.c", i32 1561, i32 3}
!90 = !{ptr @ims_pcu_buffers_alloc._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/ims-pcu.c", i32 1489, i32 3}
!93 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ims_pcu_irq.__UNIQUE_ID_ddebug234, !92, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/misc/ims-pcu.c", i32 1493, i32 3}
!97 = !{ptr @ims_pcu_irq.__UNIQUE_ID_ddebug235, !96, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/ims-pcu.c", i32 1498, i32 2}
!100 = !{ptr @ims_pcu_irq.__UNIQUE_ID_ddebug236, !99, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/misc/ims-pcu.c", i32 1507, i32 3}
!103 = !{ptr @ims_pcu_irq._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ims_pcu_irq._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/ims-pcu.c", i32 463, i32 5}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ims_pcu_process_data._entry, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @ims_pcu_process_data._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/misc/ims-pcu.c", i32 478, i32 5}
!113 = !{ptr @ims_pcu_process_data._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ims_pcu_process_data._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/misc/ims-pcu.c", i32 482, i32 5}
!117 = !{ptr @ims_pcu_process_data._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ims_pcu_process_data._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/misc/ims-pcu.c", i32 1727, i32 3}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ims_pcu_start_io._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ims_pcu_start_io._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/misc/ims-pcu.c", i32 1735, i32 3}
!126 = !{ptr @ims_pcu_start_io._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ims_pcu_start_io._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/misc/ims-pcu.c", i32 1768, i32 3}
!130 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ims_pcu_line_setup._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @ims_pcu_line_setup._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/misc/ims-pcu.c", i32 1779, i32 3}
!135 = !{ptr @ims_pcu_line_setup._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ims_pcu_line_setup._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @ims_pcu_attr_group, !138, !"ims_pcu_attr_group", i1 false, i1 false}
!138 = !{!"../drivers/input/misc/ims-pcu.c", i32 1250, i32 37}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/misc/ims-pcu.c", i32 1212, i32 8}
!141 = !{ptr @dev_attr_update_firmware_status, !140, !"dev_attr_update_firmware_status", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/misc/ims-pcu.c", i32 1209, i32 35}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/misc/ims-pcu.c", i32 1198, i32 8}
!146 = !{ptr @dev_attr_update_firmware, !145, !"dev_attr_update_firmware", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/input/misc/ims-pcu.c", i32 1171, i32 37}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/misc/ims-pcu.c", i32 1173, i32 3}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ims_pcu_update_firmware_store._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ims_pcu_update_firmware_store._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @request_ihex_firmware._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @request_ihex_firmware._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/misc/ims-pcu.c", i32 891, i32 2}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ims_pcu_handle_firmware_update._entry, !161, !"_entry", i1 false, i1 false}
!165 = !{ptr @ims_pcu_handle_firmware_update._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/misc/ims-pcu.c", i32 902, i32 3}
!168 = !{ptr @ims_pcu_handle_firmware_update._entry.85, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ims_pcu_handle_firmware_update._entry_ptr.87, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/misc/ims-pcu.c", i32 832, i32 3}
!172 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ims_pcu_flash_firmware._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ims_pcu_flash_firmware._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/misc/ims-pcu.c", i32 857, i32 4}
!177 = !{ptr @ims_pcu_flash_firmware._entry.90, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ims_pcu_flash_firmware._entry_ptr.92, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/misc/ims-pcu.c", i32 878, i32 3}
!181 = !{ptr @ims_pcu_flash_firmware._entry.93, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ims_pcu_flash_firmware._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/misc/ims-pcu.c", i32 793, i32 3}
!185 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ims_pcu_verify_block._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ims_pcu_verify_block._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/misc/ims-pcu.c", i32 802, i32 3}
!190 = !{ptr @ims_pcu_verify_block._entry.98, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ims_pcu_verify_block._entry_ptr.100, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/input/misc/ims-pcu.c", i32 810, i32 3}
!194 = !{ptr @ims_pcu_verify_block._entry.101, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ims_pcu_verify_block._entry_ptr.103, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/misc/ims-pcu.c", i32 664, i32 3}
!198 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @__ims_pcu_execute_bl_command._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @__ims_pcu_execute_bl_command._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/misc/ims-pcu.c", i32 671, i32 3}
!203 = !{ptr @__ims_pcu_execute_bl_command._entry.106, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @__ims_pcu_execute_bl_command._entry_ptr.108, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/misc/ims-pcu.c", i32 611, i32 3}
!207 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @__ims_pcu_execute_command.__UNIQUE_ID_ddebug233, !206, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!209 = !{ptr @.str.111, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/input/misc/ims-pcu.c", i32 520, i32 3}
!211 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ims_pcu_send_cmd_chunk.__UNIQUE_ID_ddebug232, !210, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/misc/ims-pcu.c", i32 746, i32 3}
!215 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @ims_pcu_switch_to_bootloader._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @ims_pcu_switch_to_bootloader._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/misc/ims-pcu.c", i32 1148, i32 8}
!220 = !{ptr @dev_attr_reset_device, !219, !"dev_attr_reset_device", i1 false, i1 false}
!221 = !{ptr @ims_pcu_reset_device.reset_byte, !222, !"reset_byte", i1 false, i1 false}
!222 = !{!"../drivers/input/misc/ims-pcu.c", i32 1122, i32 18}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/misc/ims-pcu.c", i32 1135, i32 2}
!225 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @ims_pcu_reset_device._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @ims_pcu_reset_device._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/input/misc/ims-pcu.c", i32 1139, i32 3}
!230 = !{ptr @ims_pcu_reset_device._entry.118, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @ims_pcu_reset_device._entry_ptr.120, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @ims_pcu_attrs, !233, !"ims_pcu_attrs", i1 false, i1 false}
!233 = !{!"../drivers/input/misc/ims-pcu.c", i32 1215, i32 26}
!234 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/misc/ims-pcu.c", i32 1110, i32 8}
!236 = !{ptr @ims_pcu_attr_part_number, !235, !"ims_pcu_attr_part_number", i1 false, i1 false}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/input/misc/ims-pcu.c", i32 1053, i32 35}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/misc/ims-pcu.c", i32 730, i32 3}
!241 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ims_pcu_set_info._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @ims_pcu_set_info._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/input/misc/ims-pcu.c", i32 697, i32 3}
!246 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ims_pcu_get_info._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @ims_pcu_get_info._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/input/misc/ims-pcu.c", i32 1111, i32 8}
!251 = !{ptr @ims_pcu_attr_serial_number, !250, !"ims_pcu_attr_serial_number", i1 false, i1 false}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/input/misc/ims-pcu.c", i32 1112, i32 8}
!254 = !{ptr @ims_pcu_attr_date_of_manufacturing, !253, !"ims_pcu_attr_date_of_manufacturing", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/misc/ims-pcu.c", i32 1114, i32 8}
!257 = !{ptr @ims_pcu_attr_fw_version, !256, !"ims_pcu_attr_fw_version", i1 false, i1 false}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/input/misc/ims-pcu.c", i32 1115, i32 8}
!260 = !{ptr @ims_pcu_attr_bl_version, !259, !"ims_pcu_attr_bl_version", i1 false, i1 false}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/input/misc/ims-pcu.c", i32 1116, i32 8}
!263 = !{ptr @ims_pcu_attr_reset_reason, !262, !"ims_pcu_attr_reset_reason", i1 false, i1 false}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/input/misc/ims-pcu.c", i32 1953, i32 3}
!266 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @ims_pcu_init_bootloader_mode._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @ims_pcu_init_bootloader_mode._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/input/misc/ims-pcu.c", i32 1962, i32 2}
!271 = !{ptr @ims_pcu_init_bootloader_mode._entry.134, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @ims_pcu_init_bootloader_mode._entry_ptr.136, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/misc/ims-pcu.c", i32 919, i32 3}
!275 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @ims_pcu_process_async_firmware._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @ims_pcu_process_async_firmware._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/misc/ims-pcu.c", i32 926, i32 3}
!280 = !{ptr @ims_pcu_process_async_firmware._entry.139, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @ims_pcu_process_async_firmware._entry_ptr.141, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @ims_pcu_init_application_mode.device_no, !283, !"device_no", i1 false, i1 false}
!283 = !{!"../drivers/input/misc/ims-pcu.c", i32 1860, i32 18}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/misc/ims-pcu.c", i32 1873, i32 3}
!286 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ims_pcu_init_application_mode._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @ims_pcu_init_application_mode._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/misc/ims-pcu.c", i32 1885, i32 3}
!291 = !{ptr @ims_pcu_init_application_mode._entry.144, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ims_pcu_init_application_mode._entry_ptr.146, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/input/misc/ims-pcu.c", i32 1797, i32 3}
!295 = !{ptr @.str.148, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @ims_pcu_get_device_info._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @ims_pcu_get_device_info._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/input/misc/ims-pcu.c", i32 1803, i32 4}
!300 = !{ptr @.str.151, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/input/misc/ims-pcu.c", i32 1809, i32 3}
!302 = !{ptr @ims_pcu_get_device_info._entry.150, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @ims_pcu_get_device_info._entry_ptr.152, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/input/misc/ims-pcu.c", i32 1821, i32 3}
!306 = !{ptr @ims_pcu_get_device_info._entry.153, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @ims_pcu_get_device_info._entry_ptr.155, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/input/misc/ims-pcu.c", i32 1827, i32 4}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/input/misc/ims-pcu.c", i32 1829, i32 2}
!312 = !{ptr @ims_pcu_get_device_info.__UNIQUE_ID_ddebug238, !311, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!313 = !{ptr @.str.158, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/input/misc/ims-pcu.c", i32 1847, i32 3}
!315 = !{ptr @.str.159, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @ims_pcu_identify_type._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @ims_pcu_identify_type._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.160, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/input/misc/ims-pcu.c", i32 1853, i32 2}
!320 = !{ptr @ims_pcu_identify_type.__UNIQUE_ID_ddebug239, !319, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!321 = !{ptr @ims_pcu_device_info, !322, !"ims_pcu_device_info", i1 false, i1 false}
!322 = !{!"../drivers/input/misc/ims-pcu.c", i32 175, i32 41}
!323 = !{ptr @ims_pcu_keymap_1, !324, !"ims_pcu_keymap_1", i1 false, i1 false}
!324 = !{!"../drivers/input/misc/ims-pcu.c", i32 121, i32 29}
!325 = !{ptr @ims_pcu_keymap_2, !326, !"ims_pcu_keymap_2", i1 false, i1 false}
!326 = !{!"../drivers/input/misc/ims-pcu.c", i32 130, i32 29}
!327 = !{ptr @ims_pcu_keymap_3, !328, !"ims_pcu_keymap_3", i1 false, i1 false}
!328 = !{!"../drivers/input/misc/ims-pcu.c", i32 136, i32 29}
!329 = !{ptr @ims_pcu_keymap_4, !330, !"ims_pcu_keymap_4", i1 false, i1 false}
!330 = !{!"../drivers/input/misc/ims-pcu.c", i32 146, i32 29}
!331 = !{ptr @ims_pcu_keymap_5, !332, !"ims_pcu_keymap_5", i1 false, i1 false}
!332 = !{!"../drivers/input/misc/ims-pcu.c", i32 156, i32 29}
!333 = !{ptr @.str.161, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/input/misc/ims-pcu.c", i32 1470, i32 10}
!335 = !{ptr @ims_pcu_ofn_attr_group, !336, !"ims_pcu_ofn_attr_group", i1 false, i1 false}
!336 = !{!"../drivers/input/misc/ims-pcu.c", i32 1469, i32 37}
!337 = !{ptr @ims_pcu_ofn_attrs, !338, !"ims_pcu_ofn_attrs", i1 false, i1 false}
!338 = !{!"../drivers/input/misc/ims-pcu.c", i32 1456, i32 26}
!339 = !{ptr @.str.162, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/input/misc/ims-pcu.c", i32 1335, i32 8}
!341 = !{ptr @dev_attr_reg_data, !340, !"dev_attr_reg_data", i1 false, i1 false}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/input/misc/ims-pcu.c", i32 1312, i32 35}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/input/misc/ims-pcu.c", i32 1373, i32 8}
!346 = !{ptr @dev_attr_reg_addr, !345, !"dev_attr_reg_addr", i1 false, i1 false}
!347 = !{ptr @.str.165, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/input/misc/ims-pcu.c", i32 1447, i32 8}
!349 = !{ptr @ims_pcu_ofn_attr_engine_enable, !348, !"ims_pcu_ofn_attr_engine_enable", i1 false, i1 false}
!350 = !{ptr @.str.166, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/input/misc/ims-pcu.c", i32 1448, i32 8}
!352 = !{ptr @ims_pcu_ofn_attr_speed_enable, !351, !"ims_pcu_ofn_attr_speed_enable", i1 false, i1 false}
!353 = !{ptr @.str.167, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/input/misc/ims-pcu.c", i32 1449, i32 8}
!355 = !{ptr @ims_pcu_ofn_attr_assert_enable, !354, !"ims_pcu_ofn_attr_assert_enable", i1 false, i1 false}
!356 = !{ptr @.str.168, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/input/misc/ims-pcu.c", i32 1450, i32 8}
!358 = !{ptr @ims_pcu_ofn_attr_xyquant_enable, !357, !"ims_pcu_ofn_attr_xyquant_enable", i1 false, i1 false}
!359 = !{ptr @.str.169, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/input/misc/ims-pcu.c", i32 1451, i32 8}
!361 = !{ptr @ims_pcu_ofn_attr_xyscale_enable, !360, !"ims_pcu_ofn_attr_xyscale_enable", i1 false, i1 false}
!362 = !{ptr @.str.170, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/input/misc/ims-pcu.c", i32 1453, i32 8}
!364 = !{ptr @ims_pcu_ofn_attr_scale_x2, !363, !"ims_pcu_ofn_attr_scale_x2", i1 false, i1 false}
!365 = !{ptr @.str.171, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/input/misc/ims-pcu.c", i32 1454, i32 8}
!367 = !{ptr @ims_pcu_ofn_attr_scale_y2, !366, !"ims_pcu_ofn_attr_scale_y2", i1 false, i1 false}
!368 = !{ptr @.str.172, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/input/misc/ims-pcu.c", i32 1006, i32 4}
!370 = !{ptr @.str.173, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/input/misc/ims-pcu.c", i32 1016, i32 3}
!372 = !{ptr @.str.174, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @ims_pcu_setup_backlight._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @ims_pcu_setup_backlight._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.175, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/input/misc/ims-pcu.c", i32 985, i32 3}
!377 = !{ptr @.str.176, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @ims_pcu_backlight_get_brightness._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @ims_pcu_backlight_get_brightness._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.177, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/input/misc/ims-pcu.c", i32 962, i32 3}
!382 = !{ptr @.str.178, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @ims_pcu_backlight_set_brightness._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @ims_pcu_backlight_set_brightness._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.179, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/input/misc/ims-pcu.c", i32 210, i32 3}
!387 = !{ptr @.str.180, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @ims_pcu_setup_buttons._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @ims_pcu_setup_buttons._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.181, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/input/misc/ims-pcu.c", i32 216, i32 4}
!392 = !{ptr @.str.182, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/input/misc/ims-pcu.c", i32 219, i32 25}
!394 = !{ptr @.str.184, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/input/misc/ims-pcu.c", i32 239, i32 3}
!396 = !{ptr @ims_pcu_setup_buttons._entry.183, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @ims_pcu_setup_buttons._entry_ptr.185, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.186, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../include/linux/usb.h", i32 912, i32 31}
!400 = !{ptr @.str.187, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/input/misc/ims-pcu.c", i32 293, i32 3}
!402 = !{ptr @.str.188, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @ims_pcu_setup_gamepad._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @ims_pcu_setup_gamepad._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.189, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/input/misc/ims-pcu.c", i32 302, i32 4}
!407 = !{ptr @.str.190, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/input/misc/ims-pcu.c", i32 305, i32 25}
!409 = !{ptr @.str.192, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/input/misc/ims-pcu.c", i32 326, i32 3}
!411 = !{ptr @ims_pcu_setup_gamepad._entry.191, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @ims_pcu_setup_gamepad._entry_ptr.193, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @ims_pcu_id_table, !414, !"ims_pcu_id_table", i1 false, i1 false}
!414 = !{!"../drivers/input/misc/ims-pcu.c", i32 2115, i32 35}
!415 = !{i32 1, !"wchar_size", i32 2}
!416 = !{i32 1, !"min_enum_size", i32 4}
!417 = !{i32 8, !"branch-target-enforcement", i32 0}
!418 = !{i32 8, !"sign-return-address", i32 0}
!419 = !{i32 8, !"sign-return-address-all", i32 0}
!420 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!421 = !{i32 7, !"uwtable", i32 1}
!422 = !{i32 7, !"frame-pointer", i32 2}
!423 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!424 = !{i8 0, i8 2}
!425 = !{i64 2154265690}
!426 = !{i64 2148628172}
!427 = !{i64 2148543457, i64 2148543489, i64 2148543518, i64 2148543552, i64 2148543583, i64 2148543606}
!428 = !{i64 2148628401}
!429 = !{i64 2148367335, i64 2148367340, i64 2148367353, i64 2148367397, i64 2148367431, i64 2148367452}
!430 = !{!"branch_weights", i32 1, i32 2000}
!431 = !{!"auto-init"}
