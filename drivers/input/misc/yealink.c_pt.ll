; ModuleID = '/llk/IR_all_yes/drivers/input/misc/yealink.c_pt.bc'
source_filename = "../drivers/input/misc/yealink.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.seg7_conversion_map = type { [128 x i8] }
%struct.lcd_segment_map = type { i8, %union.anon.71 }
%union.anon.71 = type { [7 x %struct.segment_map] }
%struct.segment_map = type { i8, i8 }
%struct.pictogram_map = type { i8, i8, [10 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.driver_info = type { ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.yealink_dev = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [64 x i8], [41 x i8], i32, i8, i32, %union.anon.69, %union.anon.69 }
%union.anon.69 = type { %struct.yld_status }
%struct.yld_status = type { [24 x i8], i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.yld_ctl_packet = type { i8, i8, i16, [11 x i8], i8 }

@__initcall__kmod_yealink__235_990_yealink_driver_init6 = internal global ptr @yealink_driver_init, section ".initcall6.init", align 4
@yealink_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usb_probe, ptr @usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_yealink_driver_exit = internal global ptr @yealink_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [29 x i8] c"yealink.author=Henk Vergonet\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [41 x i8] c"yealink.description=Yealink phone driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [40 x i8] c"yealink.file=drivers/input/misc/yealink\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"yealink.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"yealink\00", [24 x i8] zeroinitializer }, align 32
@usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 27027, i16 -20479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @info_P1K to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid payload size %d, expected %zd\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/yealink.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_probe._entry_ptr = internal global ptr @usb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yld-20051230\00", [19 x i8] zeroinitializer }, align 32
@yld_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @yld_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@urb_irq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - urb status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"urb_irq_callback\00", [47 x i8] zeroinitializer }, align 32
@urb_irq_callback._entry_ptr = internal global ptr @urb_irq_callback._entry, section ".printk_index", align 4
@urb_irq_callback.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get scancode %x\0A\00", [47 x i8] zeroinitializer }, align 32
@urb_irq_callback._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpected response %x\0A\00", [40 x i8] zeroinitializer }, align 32
@urb_irq_callback._entry_ptr.14 = internal global ptr @urb_irq_callback._entry.12, section ".printk_index", align 4
@urb_irq_callback._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - usb_submit_urb failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@urb_irq_callback._entry_ptr.17 = internal global ptr @urb_irq_callback._entry.15, section ".printk_index", align 4
@urb_ctl_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.18, ptr @.str.3, i32 455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"urb_ctl_callback\00", [47 x i8] zeroinitializer }, align 32
@urb_ctl_callback._entry_ptr = internal global ptr @urb_ctl_callback._entry, section ".printk_index", align 4
@urb_ctl_callback._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@urb_ctl_callback._entry_ptr.20 = internal global ptr @urb_ctl_callback._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@input_open.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"input_open\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@default_ringtone = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\EF\FB\1E\00\0C\FC\18\00\0C\FB\1E\00\0C\FC\18\00\0C\FB\1E\00\0C\FC\18\00\0C\FB\1E\00\0C\FC\18\00\0C\FF\FF\01\90\00\00", [57 x i8] zeroinitializer }, align 32
@input_open.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@map_seg7 = internal global { %struct.seg7_conversion_map, [32 x i8] } { %struct.seg7_conversion_map { [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\226m$} 9\0FvF\10@\10R?\06[Ofm}\07\7FoHHaHC'{w\7F9?yqov\06\0Ev877?s?wmx>>~vf[9d\0F#\08\02w|X^yqot\04\0Ct87T\\sgPmx\1C\1C~vn[90\0F\01\00" }, [32 x i8] zeroinitializer }, align 32
@lcdMap = internal constant { <{ %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } } }>, [153 x i8] } { <{ %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, %struct.lcd_segment_map, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } }, { i8, { %struct.pictogram_map, [2 x i8] } } }> <{ %struct.lcd_segment_map { i8 49, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map zeroinitializer, %struct.segment_map { i8 22, i8 2 }, %struct.segment_map { i8 22, i8 2 }, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 20, i8 1 }, %struct.segment_map { i8 20, i8 2 }, %struct.segment_map { i8 20, i8 4 }, %struct.segment_map { i8 20, i8 8 }, %struct.segment_map { i8 21, i8 4 }, %struct.segment_map { i8 21, i8 1 }, %struct.segment_map { i8 21, i8 2 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 22, i8 1, [10 x i8] c"M\00\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, %struct.lcd_segment_map { i8 101, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 18, i8 1 }, %struct.segment_map { i8 18, i8 2 }, %struct.segment_map { i8 18, i8 4 }, %struct.segment_map { i8 18, i8 1 }, %struct.segment_map { i8 19, i8 2 }, %struct.segment_map { i8 19, i8 1 }, %struct.segment_map { i8 18, i8 1 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 16, i8 1 }, %struct.segment_map { i8 16, i8 2 }, %struct.segment_map { i8 16, i8 4 }, %struct.segment_map { i8 16, i8 8 }, %struct.segment_map { i8 17, i8 4 }, %struct.segment_map { i8 17, i8 1 }, %struct.segment_map { i8 17, i8 2 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 15, i8 8, [10 x i8] c"D\00\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, %struct.lcd_segment_map { i8 77, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 14, i8 1 }, %struct.segment_map { i8 14, i8 2 }, %struct.segment_map { i8 14, i8 4 }, %struct.segment_map { i8 14, i8 1 }, %struct.segment_map { i8 15, i8 4 }, %struct.segment_map { i8 15, i8 1 }, %struct.segment_map { i8 15, i8 2 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 12, i8 1 }, %struct.segment_map { i8 12, i8 2 }, %struct.segment_map { i8 12, i8 4 }, %struct.segment_map { i8 12, i8 8 }, %struct.segment_map { i8 13, i8 4 }, %struct.segment_map { i8 13, i8 1 }, %struct.segment_map { i8 13, i8 2 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 11, i8 8, [10 x i8] c":\00\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 10, i8 1 }, %struct.segment_map { i8 10, i8 2 }, %struct.segment_map { i8 10, i8 4 }, %struct.segment_map { i8 10, i8 8 }, %struct.segment_map { i8 11, i8 4 }, %struct.segment_map { i8 11, i8 1 }, %struct.segment_map { i8 11, i8 2 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 8, i8 1 }, %struct.segment_map { i8 8, i8 2 }, %struct.segment_map { i8 8, i8 4 }, %struct.segment_map { i8 8, i8 8 }, %struct.segment_map { i8 9, i8 4 }, %struct.segment_map { i8 9, i8 1 }, %struct.segment_map { i8 9, i8 2 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 7, i8 1, [10 x i8] c"IN\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 7, i8 2, [10 x i8] c"OUT\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 7, i8 4, [10 x i8] c"STORE\00\00\00\00\00" }, [2 x i8] undef } }, %struct.lcd_segment_map { i8 49, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map zeroinitializer, %struct.segment_map { i8 5, i8 1 }, %struct.segment_map { i8 5, i8 1 }, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer, %struct.segment_map zeroinitializer] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 4, i8 1 }, %struct.segment_map { i8 4, i8 2 }, %struct.segment_map { i8 4, i8 4 }, %struct.segment_map { i8 4, i8 8 }, %struct.segment_map { i8 5, i8 8 }, %struct.segment_map { i8 5, i8 2 }, %struct.segment_map { i8 5, i8 4 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 2, i8 1 }, %struct.segment_map { i8 2, i8 2 }, %struct.segment_map { i8 2, i8 4 }, %struct.segment_map { i8 2, i8 8 }, %struct.segment_map { i8 3, i8 4 }, %struct.segment_map { i8 3, i8 1 }, %struct.segment_map { i8 3, i8 2 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 23, i8 2, [10 x i8] c"NEW\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 23, i8 4, [10 x i8] c"REP\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 1, i8 8, [10 x i8] c"SU\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 1, i8 4, [10 x i8] c"MO\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 1, i8 2, [10 x i8] c"TU\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 1, i8 1, [10 x i8] c"WE\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 0, i8 1, [10 x i8] c"TH\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 0, i8 2, [10 x i8] c"FR\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 0, i8 4, [10 x i8] c"SA\00\00\00\00\00\00\00\00" }, [2 x i8] undef } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 22, i8 16 }, %struct.segment_map { i8 22, i8 32 }, %struct.segment_map { i8 22, i8 64 }, %struct.segment_map { i8 22, i8 -128 }, %struct.segment_map { i8 23, i8 -128 }, %struct.segment_map { i8 23, i8 32 }, %struct.segment_map { i8 23, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 20, i8 16 }, %struct.segment_map { i8 20, i8 32 }, %struct.segment_map { i8 20, i8 64 }, %struct.segment_map { i8 20, i8 -128 }, %struct.segment_map { i8 21, i8 -128 }, %struct.segment_map { i8 21, i8 32 }, %struct.segment_map { i8 21, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 18, i8 16 }, %struct.segment_map { i8 18, i8 32 }, %struct.segment_map { i8 18, i8 64 }, %struct.segment_map { i8 18, i8 -128 }, %struct.segment_map { i8 19, i8 -128 }, %struct.segment_map { i8 19, i8 32 }, %struct.segment_map { i8 19, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 16, i8 16 }, %struct.segment_map { i8 16, i8 32 }, %struct.segment_map { i8 16, i8 64 }, %struct.segment_map { i8 16, i8 -128 }, %struct.segment_map { i8 17, i8 -128 }, %struct.segment_map { i8 17, i8 32 }, %struct.segment_map { i8 17, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 14, i8 16 }, %struct.segment_map { i8 14, i8 32 }, %struct.segment_map { i8 14, i8 64 }, %struct.segment_map { i8 14, i8 -128 }, %struct.segment_map { i8 15, i8 -128 }, %struct.segment_map { i8 15, i8 32 }, %struct.segment_map { i8 15, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 12, i8 16 }, %struct.segment_map { i8 12, i8 32 }, %struct.segment_map { i8 12, i8 64 }, %struct.segment_map { i8 12, i8 -128 }, %struct.segment_map { i8 13, i8 -128 }, %struct.segment_map { i8 13, i8 32 }, %struct.segment_map { i8 13, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 10, i8 16 }, %struct.segment_map { i8 10, i8 32 }, %struct.segment_map { i8 10, i8 64 }, %struct.segment_map { i8 10, i8 -128 }, %struct.segment_map { i8 11, i8 -128 }, %struct.segment_map { i8 11, i8 32 }, %struct.segment_map { i8 11, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 8, i8 16 }, %struct.segment_map { i8 8, i8 32 }, %struct.segment_map { i8 8, i8 64 }, %struct.segment_map { i8 8, i8 -128 }, %struct.segment_map { i8 9, i8 -128 }, %struct.segment_map { i8 9, i8 32 }, %struct.segment_map { i8 9, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 6, i8 16 }, %struct.segment_map { i8 6, i8 32 }, %struct.segment_map { i8 6, i8 64 }, %struct.segment_map { i8 6, i8 -128 }, %struct.segment_map { i8 7, i8 -128 }, %struct.segment_map { i8 7, i8 32 }, %struct.segment_map { i8 7, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 4, i8 16 }, %struct.segment_map { i8 4, i8 32 }, %struct.segment_map { i8 4, i8 64 }, %struct.segment_map { i8 4, i8 -128 }, %struct.segment_map { i8 5, i8 -128 }, %struct.segment_map { i8 5, i8 32 }, %struct.segment_map { i8 5, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 2, i8 16 }, %struct.segment_map { i8 2, i8 32 }, %struct.segment_map { i8 2, i8 64 }, %struct.segment_map { i8 2, i8 -128 }, %struct.segment_map { i8 3, i8 -128 }, %struct.segment_map { i8 3, i8 32 }, %struct.segment_map { i8 3, i8 64 }] } }, %struct.lcd_segment_map { i8 56, %union.anon.71 { [7 x %struct.segment_map] [%struct.segment_map { i8 0, i8 16 }, %struct.segment_map { i8 0, i8 32 }, %struct.segment_map { i8 0, i8 64 }, %struct.segment_map { i8 0, i8 -128 }, %struct.segment_map { i8 1, i8 -128 }, %struct.segment_map { i8 1, i8 32 }, %struct.segment_map { i8 1, i8 64 }] } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 24, i8 1, [10 x i8] c"LED\00\00\00\00\00\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 25, i8 1, [10 x i8] c"DIALTONE\00\00" }, [2 x i8] undef } }, { i8, { %struct.pictogram_map, [2 x i8] } } { i8 46, { %struct.pictogram_map, [2 x i8] } { %struct.pictogram_map { i8 26, i8 36, [10 x i8] c"RINGTONE\00\00" }, [2 x i8] undef } } }>, [153 x i8] zeroinitializer }, align 32
@sysfs_rwsema = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @sysfs_rwsema, i64 56), ptr getelementptr (i8, ptr @sysfs_rwsema, i64 56) }, ptr @sysfs_rwsema, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysfs_rwsema.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sysfs_rwsema\00", [19 x i8] zeroinitializer }, align 32
@yld_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_line1, ptr @dev_attr_line2, ptr @dev_attr_line3, ptr @dev_attr_get_icons, ptr @dev_attr_show_icon, ptr @dev_attr_hide_icon, ptr @dev_attr_map_seg7, ptr @dev_attr_ringtone, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_line1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_line1, ptr @store_line1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_line2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_line2, ptr @store_line2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_line3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_line3, ptr @store_line3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_get_icons = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @get_icons, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_show_icon = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @show_icon }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hide_icon = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @hide_icon }, [36 x i8] zeroinitializer }, align 32
@dev_attr_map_seg7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_map, ptr @store_map }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ringtone = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_ringtone }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"line1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"line2\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"line3\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_icons\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_icon\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hide_icon\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"map_seg7\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ringtone\00", [23 x i8] zeroinitializer }, align 32
@info_P1K = internal constant { %struct.driver_info, [28 x i8] } { %struct.driver_info { ptr @.str.39 }, [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Yealink usb-p1k\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 129]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17, i64 18, i64 19, i64 20, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"yealink_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 983, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 990, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"usb_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 802, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 910, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 939, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 976, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"yld_attr_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 786, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1981, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 416, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 426, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 433, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 442, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 454, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 473, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 912, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 506, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"default_ringtone\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 265, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 521, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [9 x i8] c"map_seg7\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 123, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"lcdMap\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 81, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"sysfs_rwsema\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 551, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"yld_attributes\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 774, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"dev_attr_line1\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"dev_attr_line2\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"dev_attr_line3\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"dev_attr_get_icons\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"dev_attr_show_icon\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"dev_attr_hide_icon\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"dev_attr_map_seg7\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"dev_attr_ringtone\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 766, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 767, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 768, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 769, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 691, i32 29 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 692, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 692, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 770, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 771, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 765, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 772, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [9 x i8] c"info_P1K\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 798, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [32 x i8] c"../drivers/input/misc/yealink.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 799, i32 10 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_yealink_driver_exit, ptr @__initcall__kmod_yealink__235_990_yealink_driver_init6, ptr @urb_ctl_callback._entry, ptr @urb_ctl_callback._entry.19, ptr @urb_ctl_callback._entry_ptr, ptr @urb_ctl_callback._entry_ptr.20, ptr @urb_irq_callback._entry, ptr @urb_irq_callback._entry.12, ptr @urb_irq_callback._entry.15, ptr @urb_irq_callback._entry_ptr, ptr @urb_irq_callback._entry_ptr.14, ptr @urb_irq_callback._entry_ptr.17, ptr @usb_probe._entry, ptr @usb_probe._entry_ptr, ptr @yealink_driver_exit, ptr @yealink_driver, ptr @.str, ptr @usb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @yld_attr_group, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @default_ringtone, ptr @.str.24, ptr @map_seg7, ptr @lcdMap, ptr @sysfs_rwsema, ptr @.str.26, ptr @.str.27, ptr @yld_attributes, ptr @dev_attr_line1, ptr @dev_attr_line2, ptr @dev_attr_line3, ptr @dev_attr_get_icons, ptr @dev_attr_show_icon, ptr @dev_attr_hide_icon, ptr @dev_attr_map_seg7, ptr @dev_attr_ringtone, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @info_P1K, ptr @.str.39], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yealink_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yld_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_irq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_irq_callback._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_irq_callback._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_ctl_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urb_ctl_callback._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_ringtone to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_seg7 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdMap to i32), i32 615, i32 768, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_rwsema to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yld_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_line1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_line2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_line3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_get_icons to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_show_icon to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hide_icon to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_map_seg7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ringtone to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_P1K to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yealink_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @yealink_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yealink_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @yealink_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %4 = inttoptr i32 %3 to ptr
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint2, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end6

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %usb_endpoint_is_int_in.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 216) #17
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %udev11 = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %udev11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %udev11, align 4
  %intf12 = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %intf12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %intf, ptr %intf12, align 8
  %call13 = tail call ptr @input_allocate_device() #14
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %call7.i.i, align 8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %irq_dma = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 4
  %call18 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 3264, ptr noundef %irq_dma) #14
  %irq_data = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call18, ptr %irq_data, align 4
  %cmp20 = icmp eq ptr %call18, null
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %ctl_dma = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 7
  %call25 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 3264, ptr noundef %ctl_dma) #14
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %ctl_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call25, ptr %ctl_data, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 8) #17
  %ctl_req = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %ctl_req to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %ctl_req, align 8
  %cmp33 = icmp eq ptr %call7.i, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call38 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %urb_irq = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %urb_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38, ptr %urb_irq, align 4
  %cmp40 = icmp eq ptr %call38, null
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call45 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %urb_ctl, align 4
  %cmp47 = icmp eq ptr %call45, null
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef -12)
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv52 = zext i8 %27 to i32
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv52, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or54 = or i32 %or.i, 1073741952
  %call56 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %add.ptr.i, i32 noundef %or54)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %call56)
  %cmp58.not = icmp eq i16 %call56, 16
  br i1 %cmp58.not, label %if.end51.if.end61_crit_edge, label %do.end

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %conv57 = zext i16 %call56 to i32
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv57, i32 noundef 16) #18
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.end51.if.end61_crit_edge
  %30 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb_irq, align 4
  %32 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_data, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 5
  %34 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bInterval, align 1
  %conv64 = zext i8 %35 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or54, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @urb_irq_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %41 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i = icmp eq i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp6.i = icmp ugt i32 %43, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end61.usb_fill_int_urb.exit_crit_edge

if.end61.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %44 = tail call i32 @llvm.smax.i32(i32 %conv64, i32 1) #14
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 16) #14
  %sub.i = add nsw i32 %45, -1
  %shl.i238 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end61.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i238, %if.then.i ], [ %conv64, %if.end61.usb_fill_int_urb.exit_crit_edge ]
  %46 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 25
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %interval.sink.i, ptr %46, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 23
  %48 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %start_frame.i, align 4
  %49 = ptrtoint ptr %irq_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_dma, align 8
  %51 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb_irq, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %transfer_dma, align 4
  %54 = load ptr, ptr %urb_irq, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_flags, align 4
  %or68 = or i32 %56, 4
  store i32 %or68, ptr %transfer_flags, align 4
  %57 = load ptr, ptr %urb_irq, align 4
  %dev70 = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %dev70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %dev70, align 4
  %59 = ptrtoint ptr %ctl_req to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctl_req, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 33, ptr %60, align 1
  %62 = load ptr, ptr %ctl_req, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 9, ptr %bRequest, align 1
  %64 = load ptr, ptr %ctl_req, align 8
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 2, ptr %wValue, align 1
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %66 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bInterfaceNumber, align 2
  %conv75 = zext i8 %67 to i16
  %68 = shl nuw i16 %conv75, 8
  %69 = load ptr, ptr %ctl_req, align 8
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %68, ptr %wIndex, align 1
  %71 = load ptr, ptr %ctl_req, align 8
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 4096, ptr %wLength, align 1
  %73 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %urb_ctl, align 4
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 8
  %shl.i239 = shl i32 %76, 8
  %or80 = or i32 %shl.i239, -2147483648
  %77 = load ptr, ptr %ctl_req, align 8
  %78 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctl_data, align 8
  %dev1.i240 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i240 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i, ptr %dev1.i240, align 4
  %pipe2.i241 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i241 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or80, ptr %pipe2.i241, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 21
  %82 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %77, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %79, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i242 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i242 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %transfer_buffer_length.i242, align 4
  %complete.i243 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i243 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @urb_ctl_callback, ptr %complete.i243, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 27
  %86 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %87 = ptrtoint ptr %ctl_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ctl_dma, align 4
  %89 = load ptr, ptr %urb_ctl, align 4
  %transfer_dma85 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %transfer_dma85 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %88, ptr %transfer_dma85, align 4
  %91 = load ptr, ptr %urb_ctl, align 4
  %transfer_flags87 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %transfer_flags87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %transfer_flags87, align 4
  %or88 = or i32 %93, 4
  store i32 %or88, ptr %transfer_flags87, align 4
  %94 = load ptr, ptr %urb_ctl, align 4
  %dev90 = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %dev90 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i, ptr %dev90, align 4
  %phys = getelementptr inbounds %struct.yealink_dev, ptr %call7.i.i, i32 0, i32 10
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef %99, ptr noundef %devpath.i) #14
  %call94 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.6, i32 noundef 64) #14
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %4, align 4
  %102 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %call13, align 8
  %phys98 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 1
  %103 = ptrtoint ptr %phys98 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %phys, ptr %phys98, align 4
  %id99 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3
  %104 = ptrtoint ptr %id99 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 3, ptr %id99, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %105 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %idVendor.i, align 8
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #14
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %109 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %idProduct.i, align 2
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #14
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3, i32 2
  %112 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %113 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bcdDevice.i, align 4
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #14
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3, i32 3
  %116 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %version.i, align 2
  %dev100 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 40, i32 1
  %117 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %dev100, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 40, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 31
  %119 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 32
  %120 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @input_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 5
  %121 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end117.for.body_crit_edge, %usb_fill_int_urb.exit
  %i.0247 = phi i32 [ 0, %usb_fill_int_urb.exit ], [ %inc, %if.end117.for.body_crit_edge ]
  %call105 = tail call fastcc i32 @map_p1k_to_key(i32 noundef %i.0247)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call105)
  %cmp106 = icmp sgt i32 %call105, -1
  br i1 %cmp106, label %if.then108, label %for.body.if.end117_crit_edge

for.body.if.end117_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then108:                                       ; preds = %for.body
  %and109 = and i32 %call105, 255
  tail call void @_set_bit(i32 noundef %and109, ptr noundef %keybit) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call105)
  %tobool111.not = icmp ult i32 %call105, 256
  br i1 %tobool111.not, label %if.then108.if.end117_crit_edge, label %if.then112

if.then108.if.end117_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then112:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  %shr246 = lshr i32 %call105, 8
  tail call void @_set_bit(i32 noundef %shr246, ptr noundef %keybit) #14
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.then108.if.end117_crit_edge, %for.body.if.end117_crit_edge
  %inc = add nuw nsw i32 %i.0247, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.end117.for.body_crit_edge

if.end117.for.body_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end117
  %122 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call7.i.i, align 8
  %call119 = tail call i32 @input_register_device(ptr noundef %123) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end123, label %if.then121

if.then121:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call122 = tail call fastcc i32 @usb_cleanup(ptr noundef nonnull %call7.i.i, i32 noundef %call119)
  br label %cleanup

if.end123:                                        ; preds = %for.end
  %driver_data.i.i244 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %124 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i, ptr %driver_data.i.i244, align 4
  br label %for.body127

for.body127:                                      ; preds = %for.body127.for.body127_crit_edge, %if.end123
  %i.1248 = phi i32 [ 0, %if.end123 ], [ %inc130, %for.body127.for.body127_crit_edge ]
  tail call fastcc void @setChar(ptr noundef nonnull %call7.i.i, i32 noundef %i.1248, i32 noundef 32)
  %inc130 = add nuw nsw i32 %i.1248, 1
  %exitcond249.not = icmp eq i32 %inc130, 41
  br i1 %exitcond249.not, label %for.end131, label %for.body127.for.body127_crit_edge

for.body127.for.body127_crit_edge:                ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body127

for.end131:                                       ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #16
  %call133 = tail call i32 @store_line3(ptr noundef %dev100, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 13)
  %call135 = tail call i32 @sysfs_create_group(ptr noundef %dev100, ptr noundef nonnull @yld_attr_group) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end131, %if.then121, %if.then49, %if.then42, %if.then35, %if.then28, %if.then22, %if.then15, %if.end6.cleanup_crit_edge, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then22 ], [ -12, %if.then35 ], [ -12, %if.then42 ], [ -12, %if.then49 ], [ %call119, %if.then121 ], [ 0, %for.end131 ], [ -12, %if.then28 ], [ -12, %if.then15 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @yld_attr_group) #14
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  %call1 = tail call fastcc i32 @usb_cleanup(ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_cleanup(ptr noundef %yld, i32 noundef returned %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %yld, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %yld to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %yld, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool2.not = icmp eq i32 %err, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @input_free_device(ptr noundef nonnull %1) #14
  br label %if.end7

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @input_unregister_device(ptr noundef nonnull %1) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3, %if.end.if.end7_crit_edge
  %urb_irq = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 5
  %2 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_irq, align 4
  tail call void @usb_free_urb(ptr noundef %3) #14
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 9
  %4 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_ctl, align 4
  tail call void @usb_free_urb(ptr noundef %5) #14
  %ctl_req = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 8
  %6 = ptrtoint ptr %ctl_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_req, align 4
  tail call void @kfree(ptr noundef %7) #14
  %udev = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 1
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 6
  %10 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_data, align 4
  %ctl_dma = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 7
  %12 = ptrtoint ptr %ctl_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctl_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 16, ptr noundef %11, i32 noundef %13) #14
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %irq_data = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 3
  %16 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_data, align 4
  %irq_dma = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 4
  %18 = ptrtoint ptr %irq_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef 16, ptr noundef %17, i32 noundef %19) #14
  tail call void @kfree(ptr noundef nonnull %yld) #14
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  ret i32 %err
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @usb_maxpacket(ptr nocapture noundef readonly %udev, i32 noundef %pipe) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = lshr i32 %pipe, 15
  %and = and i32 %0, 15
  %and24 = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end43, label %entry.if.end49_crit_edge, !prof !118

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1984, i32 noundef 9, ptr noundef null) #14
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %entry.if.end49_crit_edge
  %arrayidx57 = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 21, i32 %and
  %1 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx57, align 4
  %tobool59.not = icmp eq ptr %2, null
  br i1 %tobool59.not, label %if.end49.cleanup_crit_edge, label %if.end61

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end61:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wMaxPacketSize.i, align 1
  %5 = and i16 %4, -249
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end49.cleanup_crit_edge
  %retval.0 = phi i16 [ %6, %if.end61 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @urb_irq_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %intf = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %irq_data = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end25 [
    i8 -128, label %sw.bb
    i8 -127, label %do.body4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.yld_ctl_packet, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %keynum = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 4
  %13 = ptrtoint ptr %keynum to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %keynum, align 1
  br label %sw.epilog

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @urb_irq_callback.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@urb_irq_callback, %if.then8)) #14
          to label %do.end17 [label %if.then8], !srcloc !119

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %intf9 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %intf9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf9, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_data, align 4
  %data12 = getelementptr inbounds %struct.yld_ctl_packet, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %data12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data12, align 1
  %conv14 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @urb_irq_callback.__UNIQUE_ID_ddebug232, ptr noundef %dev10, ptr noundef nonnull @.str.11, i32 noundef %conv14) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then8, %do.body4
  %20 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_data, align 4
  %data19 = getelementptr inbounds %struct.yld_ctl_packet, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %data19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data19, align 1
  %conv21 = zext i8 %23 to i32
  %call22 = tail call fastcc i32 @map_p1k_to_key(i32 noundef %conv21), !range !120
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %key_code.i = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %key_code.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i = icmp sgt i32 %27, -1
  br i1 %cmp.i, label %if.then.i, label %do.end17.if.end7.i_crit_edge

do.end17.if.end7.i_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i:                                        ; preds = %do.end17
  %and.i = and i32 %27, 255
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %and.i, i32 noundef 0) #14
  %28 = ptrtoint ptr %key_code.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %tobool.not.i = icmp ult i32 %29, 256
  br i1 %tobool.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then4.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = ashr i32 %29, 8
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %shr.i, i32 noundef 0) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then.i.if.end7.i_crit_edge, %do.end17.if.end7.i_crit_edge
  %30 = ptrtoint ptr %key_code.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call22, ptr %key_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp9.i = icmp sgt i32 %call22, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.report_key.exit_crit_edge

if.end7.i.report_key.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %report_key.exit

if.then10.i:                                      ; preds = %if.end7.i
  %and11.i = and i32 %call22, 255
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %and11.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call22)
  %tobool13.not.i = icmp ult i32 %call22, 256
  br i1 %tobool13.not.i, label %if.then10.i.report_key.exit_crit_edge, label %if.then14.i

if.then10.i.report_key.exit_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %report_key.exit

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr1231.i = lshr i32 %call22, 8
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %shr1231.i, i32 noundef 1) #14
  br label %report_key.exit

report_key.exit:                                  ; preds = %if.then14.i, %if.then10.i.report_key.exit_crit_edge, %if.end7.i.report_key.exit_crit_edge
  tail call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %sw.epilog

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %9 to i32
  %intf26 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf26, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.13, i32 noundef %conv) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %report_key.exit, %sw.bb
  tail call fastcc void @yealink_do_idle_tasks(ptr noundef %1)
  %shutdown = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool32.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool32.not, label %if.then33, label %sw.epilog.if.end44_crit_edge

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then33:                                        ; preds = %sw.epilog
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urb_ctl, align 4
  %call34 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 2592) #14
  %36 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call34, label %do.end40 [
    i32 0, label %if.then33.if.end44_crit_edge
    i32 -1, label %if.then33.if.end44_crit_edge63
  ]

if.then33.if.end44_crit_edge63:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %intf41 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %intf41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf41, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef %call34) #18
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.then33.if.end44_crit_edge, %if.then33.if.end44_crit_edge63, %sw.epilog.if.end44_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @urb_ctl_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %intf = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18, i32 noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %9)
  %switch = icmp slt i8 %9, -126
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %shutdown = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.then3, label %sw.bb.if.end22_crit_edge

sw.bb.if.end22_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %urb_irq = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call fastcc void @yealink_do_idle_tasks(ptr noundef %1)
  %shutdown6 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %shutdown6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7 = load i8, ptr %shutdown6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7)
  %tobool10.not = icmp sgt i8 %bf.load7, -1
  br i1 %tobool10.not, label %if.then11, label %sw.default.if.end22_crit_edge

sw.default.if.end22_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then11:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %if.then3
  %urb_ctl.sink = phi ptr [ %urb_ctl, %if.then11 ], [ %urb_irq, %if.then3 ]
  %12 = ptrtoint ptr %urb_ctl.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb_ctl.sink, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 2592) #14
  %14 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call12, label %do.end19 [
    i32 0, label %sw.epilog.if.end22_crit_edge
    i32 -1, label %sw.epilog.if.end22_crit_edge35
  ]

sw.epilog.if.end22_crit_edge35:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %intf20 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %intf20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef %call12) #18
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %sw.epilog.if.end22_crit_edge, %sw.epilog.if.end22_crit_edge35, %sw.default.if.end22_crit_edge, %sw.bb.if.end22_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @input_open.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@input_open, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %intf = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @input_open.__UNIQUE_ID_ddebug233, ptr noundef %dev4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %master = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 15
  %copy = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %master, align 1
  %neg = xor i8 %5, -1
  %6 = ptrtoint ptr %copy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %neg, ptr %copy, align 1
  %arrayidx.1 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %neg.1 = xor i8 %8, -1
  %arrayidx6.1 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %neg.1, ptr %arrayidx6.1, align 1
  %arrayidx.2 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %neg.2 = xor i8 %11, -1
  %arrayidx6.2 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %neg.2, ptr %arrayidx6.2, align 1
  %arrayidx.3 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  %neg.3 = xor i8 %14, -1
  %arrayidx6.3 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %neg.3, ptr %arrayidx6.3, align 1
  %arrayidx.4 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %neg.4 = xor i8 %17, -1
  %arrayidx6.4 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %neg.4, ptr %arrayidx6.4, align 1
  %arrayidx.5 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.5, align 1
  %neg.5 = xor i8 %20, -1
  %arrayidx6.5 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %neg.5, ptr %arrayidx6.5, align 1
  %arrayidx.6 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.6, align 1
  %neg.6 = xor i8 %23, -1
  %arrayidx6.6 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %neg.6, ptr %arrayidx6.6, align 1
  %arrayidx.7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.7, align 1
  %neg.7 = xor i8 %26, -1
  %arrayidx6.7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %neg.7, ptr %arrayidx6.7, align 1
  %arrayidx.8 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.8, align 1
  %neg.8 = xor i8 %29, -1
  %arrayidx6.8 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %neg.8, ptr %arrayidx6.8, align 1
  %arrayidx.9 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.9, align 1
  %neg.9 = xor i8 %32, -1
  %arrayidx6.9 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx6.9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %neg.9, ptr %arrayidx6.9, align 1
  %arrayidx.10 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 10
  %34 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.10, align 1
  %neg.10 = xor i8 %35, -1
  %arrayidx6.10 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 10
  %36 = ptrtoint ptr %arrayidx6.10 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %neg.10, ptr %arrayidx6.10, align 1
  %arrayidx.11 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.11, align 1
  %neg.11 = xor i8 %38, -1
  %arrayidx6.11 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx6.11 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %neg.11, ptr %arrayidx6.11, align 1
  %arrayidx.12 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 12
  %40 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.12, align 1
  %neg.12 = xor i8 %41, -1
  %arrayidx6.12 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 12
  %42 = ptrtoint ptr %arrayidx6.12 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %neg.12, ptr %arrayidx6.12, align 1
  %arrayidx.13 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.13, align 1
  %neg.13 = xor i8 %44, -1
  %arrayidx6.13 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 13
  %45 = ptrtoint ptr %arrayidx6.13 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %neg.13, ptr %arrayidx6.13, align 1
  %arrayidx.14 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 14
  %46 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.14, align 1
  %neg.14 = xor i8 %47, -1
  %arrayidx6.14 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 14
  %48 = ptrtoint ptr %arrayidx6.14 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %neg.14, ptr %arrayidx6.14, align 1
  %arrayidx.15 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 15
  %49 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.15, align 1
  %neg.15 = xor i8 %50, -1
  %arrayidx6.15 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 15
  %51 = ptrtoint ptr %arrayidx6.15 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %neg.15, ptr %arrayidx6.15, align 1
  %arrayidx.16 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 16
  %52 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.16, align 1
  %neg.16 = xor i8 %53, -1
  %arrayidx6.16 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 16
  %54 = ptrtoint ptr %arrayidx6.16 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %neg.16, ptr %arrayidx6.16, align 1
  %arrayidx.17 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 17
  %55 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.17, align 1
  %neg.17 = xor i8 %56, -1
  %arrayidx6.17 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 17
  %57 = ptrtoint ptr %arrayidx6.17 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %neg.17, ptr %arrayidx6.17, align 1
  %arrayidx.18 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 18
  %58 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.18, align 1
  %neg.18 = xor i8 %59, -1
  %arrayidx6.18 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 18
  %60 = ptrtoint ptr %arrayidx6.18 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %neg.18, ptr %arrayidx6.18, align 1
  %arrayidx.19 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 19
  %61 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.19, align 1
  %neg.19 = xor i8 %62, -1
  %arrayidx6.19 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 19
  %63 = ptrtoint ptr %arrayidx6.19 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %neg.19, ptr %arrayidx6.19, align 1
  %arrayidx.20 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 20
  %64 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.20, align 1
  %neg.20 = xor i8 %65, -1
  %arrayidx6.20 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 20
  %66 = ptrtoint ptr %arrayidx6.20 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %neg.20, ptr %arrayidx6.20, align 1
  %arrayidx.21 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 21
  %67 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.21, align 1
  %neg.21 = xor i8 %68, -1
  %arrayidx6.21 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 21
  %69 = ptrtoint ptr %arrayidx6.21 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %neg.21, ptr %arrayidx6.21, align 1
  %arrayidx.22 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 22
  %70 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.22, align 1
  %neg.22 = xor i8 %71, -1
  %arrayidx6.22 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 22
  %72 = ptrtoint ptr %arrayidx6.22 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %neg.22, ptr %arrayidx6.22, align 1
  %arrayidx.23 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 23
  %73 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.23, align 1
  %neg.23 = xor i8 %74, -1
  %arrayidx6.23 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 23
  %75 = ptrtoint ptr %arrayidx6.23 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %neg.23, ptr %arrayidx6.23, align 1
  %arrayidx.24 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.24, align 1
  %neg.24 = xor i8 %77, -1
  %arrayidx6.24 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx6.24 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %neg.24, ptr %arrayidx6.24, align 1
  %arrayidx.25 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.25, align 1
  %neg.25 = xor i8 %80, -1
  %arrayidx6.25 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx6.25 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %neg.25, ptr %arrayidx6.25, align 1
  %arrayidx.26 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.26, align 1
  %neg.26 = xor i8 %83, -1
  %arrayidx6.26 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx6.26 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %neg.26, ptr %arrayidx6.26, align 1
  %arrayidx.27 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 15, i32 0, i32 4
  %85 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.27, align 1
  %neg.27 = xor i8 %86, -1
  %arrayidx6.27 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 16, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx6.27 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %neg.27, ptr %arrayidx6.27, align 1
  %key_code = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 12
  %88 = ptrtoint ptr %key_code to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %key_code, align 4
  tail call fastcc void @yealink_set_ringtone(ptr noundef %1, ptr noundef nonnull @default_ringtone, i32 noundef 39)
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctl_data, align 4
  %91 = call ptr @memset(ptr %90, i32 0, i32 16)
  %92 = load ptr, ptr %ctl_data, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -114, ptr %92, align 1
  %94 = load ptr, ptr %ctl_data, align 4
  %size = getelementptr inbounds %struct.yld_ctl_packet, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 10, ptr %size, align 1
  %96 = load ptr, ptr %ctl_data, align 4
  %sum = getelementptr inbounds %struct.yld_ctl_packet, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %sum to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 104, ptr %sum, align 1
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 9
  %98 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %urb_ctl, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %99, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %do.end.cleanup_crit_edge, label %do.body15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @input_open.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@input_open, %if.then27)) #14
          to label %cleanup [label %if.then27], !srcloc !119

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  %intf28 = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 2
  %100 = ptrtoint ptr %intf28 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %intf28, align 4
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %101, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @input_open.__UNIQUE_ID_ddebug234, ptr noundef %dev29, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %call11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %do.end.cleanup_crit_edge
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shutdown = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %shutdown, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !121
  %urb_ctl = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb_ctl, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #14
  %urb_irq = getelementptr inbounds %struct.yealink_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb_irq, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #14
  %7 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load5 = load i8, ptr %shutdown, align 4
  %bf.clear6 = and i8 %bf.load5, 127
  store i8 %bf.clear6, ptr %shutdown, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @map_p1k_to_key(i32 noundef %scancode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %scancode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %scancode, label %sw.epilog [
    i32 35, label %entry.return_crit_edge
    i32 51, label %sw.bb1
    i32 4, label %sw.bb2
    i32 36, label %sw.bb3
    i32 3, label %sw.bb4
    i32 20, label %sw.bb5
    i32 19, label %sw.bb6
    i32 0, label %sw.bb7
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 16, label %sw.bb10
    i32 17, label %sw.bb11
    i32 18, label %sw.bb12
    i32 32, label %sw.bb13
    i32 33, label %sw.bb14
    i32 34, label %sw.bb15
    i32 48, label %sw.bb16
    i32 49, label %sw.bb17
    i32 50, label %sw.bb18
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 1066, %sw.bb18 ], [ 11, %sw.bb17 ], [ 55, %sw.bb16 ], [ 10, %sw.bb15 ], [ 9, %sw.bb14 ], [ 8, %sw.bb13 ], [ 7, %sw.bb12 ], [ 6, %sw.bb11 ], [ 5, %sw.bb10 ], [ 4, %sw.bb9 ], [ 3, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.bb6 ], [ 14, %sw.bb5 ], [ 28, %sw.bb4 ], [ 108, %sw.bb3 ], [ 106, %sw.bb2 ], [ 103, %sw.bb1 ], [ 105, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setChar(ptr nocapture noundef %yld, i32 noundef %el, i32 noundef %chr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %el)
  %cmp = icmp ugt i32 %el, 40
  %chr.off = add i32 %chr, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chr.off)
  %switch = icmp ult i32 %chr.off, 2
  %or.cond = or i1 %cmp, %switch
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %conv = trunc i32 %chr to i8
  %arrayidx = getelementptr %struct.yealink_dev, ptr %yld, i32 0, i32 11, i32 %el
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %el
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %2)
  %cmp7 = icmp eq i8 %2, 46
  br i1 %cmp7, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.end4
  %u = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %el, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %u, align 1
  %conv12 = zext i8 %4 to i32
  %m15 = getelementptr inbounds %struct.pictogram_map, ptr %u, i32 0, i32 1
  %5 = ptrtoint ptr %m15 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %chr)
  %cmp17.not = icmp eq i32 %chr, 32
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %master = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 15
  %arrayidx20 = getelementptr [28 x i8], ptr %master, i32 0, i32 %conv12
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx20, align 1
  %or2 = or i8 %8, %6
  store i8 %or2, ptr %arrayidx20, align 1
  br label %cleanup

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i8 %6, -1
  %master23 = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 15
  %arrayidx24 = getelementptr [28 x i8], ptr %master23, i32 0, i32 %conv12
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %and = and i8 %10, %neg
  store i8 %and, ptr %arrayidx24, align 1
  br label %cleanup

if.end28:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %chr)
  %cmp1.i = icmp ult i32 %chr, 128
  br i1 %cmp1.i, label %cond.true.i, label %if.end28.map_to_seg7.exit_crit_edge

if.end28.map_to_seg7.exit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_to_seg7.exit

cond.true.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [128 x i8], ptr @map_seg7, i32 0, i32 %chr
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  br label %map_to_seg7.exit

map_to_seg7.exit:                                 ; preds = %cond.true.i, %if.end28.map_to_seg7.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ -22, %if.end28.map_to_seg7.exit_crit_edge ]
  %u32 = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %el, i32 1
  %master47 = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 15
  %m34 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %m34 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp36 = icmp eq i8 %14, 0
  br i1 %cmp36, label %map_to_seg7.exit.for.inc_crit_edge, label %if.end39

map_to_seg7.exit.for.inc_crit_edge:               ; preds = %map_to_seg7.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end39:                                         ; preds = %map_to_seg7.exit
  %15 = ptrtoint ptr %u32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %u32, align 1
  %conv44 = zext i8 %16 to i32
  %and45 = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not = icmp eq i32 %and45, 0
  br i1 %tobool.not, label %if.else52, label %if.then46

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44
  %17 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx48, align 1
  %or501 = or i8 %18, %14
  store i8 %or501, ptr %arrayidx48, align 1
  br label %if.end59

if.else52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %neg53 = xor i8 %14, -1
  %arrayidx55 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44
  %19 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx55, align 1
  %and57 = and i8 %20, %neg53
  store i8 %and57, ptr %arrayidx55, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else52, %if.then46
  %shr = ashr i32 %cond.i, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %map_to_seg7.exit.for.inc_crit_edge
  %val.1 = phi i32 [ %cond.i, %map_to_seg7.exit.for.inc_crit_edge ], [ %shr, %if.end59 ]
  %m34.1 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %m34.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %m34.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp36.1 = icmp eq i8 %22, 0
  br i1 %cmp36.1, label %for.inc.for.inc.1_crit_edge, label %if.end39.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end39.1:                                       ; preds = %for.inc
  %arrayidx33.1 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx33.1, align 1
  %conv44.1 = zext i8 %24 to i32
  %and45.1 = and i32 %val.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.1)
  %tobool.not.1 = icmp eq i32 %and45.1, 0
  br i1 %tobool.not.1, label %if.else52.1, label %if.then46.1

if.then46.1:                                      ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.1 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.1
  %25 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx48.1, align 1
  %or501.1 = or i8 %26, %22
  store i8 %or501.1, ptr %arrayidx48.1, align 1
  br label %if.end59.1

if.else52.1:                                      ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.1 = xor i8 %22, -1
  %arrayidx55.1 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.1
  %27 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55.1, align 1
  %and57.1 = and i8 %28, %neg53.1
  store i8 %and57.1, ptr %arrayidx55.1, align 1
  br label %if.end59.1

if.end59.1:                                       ; preds = %if.else52.1, %if.then46.1
  %shr.1 = ashr i32 %val.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end59.1, %for.inc.for.inc.1_crit_edge
  %val.1.1 = phi i32 [ %val.1, %for.inc.for.inc.1_crit_edge ], [ %shr.1, %if.end59.1 ]
  %m34.2 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %m34.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %m34.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp36.2 = icmp eq i8 %30, 0
  br i1 %cmp36.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end39.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end39.2:                                       ; preds = %for.inc.1
  %arrayidx33.2 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx33.2, align 1
  %conv44.2 = zext i8 %32 to i32
  %and45.2 = and i32 %val.1.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.2)
  %tobool.not.2 = icmp eq i32 %and45.2, 0
  br i1 %tobool.not.2, label %if.else52.2, label %if.then46.2

if.then46.2:                                      ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.2 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.2
  %33 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx48.2, align 1
  %or501.2 = or i8 %34, %30
  store i8 %or501.2, ptr %arrayidx48.2, align 1
  br label %if.end59.2

if.else52.2:                                      ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.2 = xor i8 %30, -1
  %arrayidx55.2 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.2
  %35 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx55.2, align 1
  %and57.2 = and i8 %36, %neg53.2
  store i8 %and57.2, ptr %arrayidx55.2, align 1
  br label %if.end59.2

if.end59.2:                                       ; preds = %if.else52.2, %if.then46.2
  %shr.2 = ashr i32 %val.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end59.2, %for.inc.1.for.inc.2_crit_edge
  %val.1.2 = phi i32 [ %val.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %shr.2, %if.end59.2 ]
  %m34.3 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %m34.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %m34.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp36.3 = icmp eq i8 %38, 0
  br i1 %cmp36.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end39.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.end39.3:                                       ; preds = %for.inc.2
  %arrayidx33.3 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx33.3, align 1
  %conv44.3 = zext i8 %40 to i32
  %and45.3 = and i32 %val.1.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.3)
  %tobool.not.3 = icmp eq i32 %and45.3, 0
  br i1 %tobool.not.3, label %if.else52.3, label %if.then46.3

if.then46.3:                                      ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.3 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.3
  %41 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx48.3, align 1
  %or501.3 = or i8 %42, %38
  store i8 %or501.3, ptr %arrayidx48.3, align 1
  br label %if.end59.3

if.else52.3:                                      ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.3 = xor i8 %38, -1
  %arrayidx55.3 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.3
  %43 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx55.3, align 1
  %and57.3 = and i8 %44, %neg53.3
  store i8 %and57.3, ptr %arrayidx55.3, align 1
  br label %if.end59.3

if.end59.3:                                       ; preds = %if.else52.3, %if.then46.3
  %shr.3 = ashr i32 %val.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end59.3, %for.inc.2.for.inc.3_crit_edge
  %val.1.3 = phi i32 [ %val.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %shr.3, %if.end59.3 ]
  %m34.4 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %m34.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %m34.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp36.4 = icmp eq i8 %46, 0
  br i1 %cmp36.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end39.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.end39.4:                                       ; preds = %for.inc.3
  %arrayidx33.4 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx33.4, align 1
  %conv44.4 = zext i8 %48 to i32
  %and45.4 = and i32 %val.1.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.4)
  %tobool.not.4 = icmp eq i32 %and45.4, 0
  br i1 %tobool.not.4, label %if.else52.4, label %if.then46.4

if.then46.4:                                      ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.4 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.4
  %49 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx48.4, align 1
  %or501.4 = or i8 %50, %46
  store i8 %or501.4, ptr %arrayidx48.4, align 1
  br label %if.end59.4

if.else52.4:                                      ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.4 = xor i8 %46, -1
  %arrayidx55.4 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.4
  %51 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx55.4, align 1
  %and57.4 = and i8 %52, %neg53.4
  store i8 %and57.4, ptr %arrayidx55.4, align 1
  br label %if.end59.4

if.end59.4:                                       ; preds = %if.else52.4, %if.then46.4
  %shr.4 = ashr i32 %val.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end59.4, %for.inc.3.for.inc.4_crit_edge
  %val.1.4 = phi i32 [ %val.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %shr.4, %if.end59.4 ]
  %m34.5 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %m34.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %m34.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp36.5 = icmp eq i8 %54, 0
  br i1 %cmp36.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end39.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.end39.5:                                       ; preds = %for.inc.4
  %arrayidx33.5 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx33.5, align 1
  %conv44.5 = zext i8 %56 to i32
  %and45.5 = and i32 %val.1.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.5)
  %tobool.not.5 = icmp eq i32 %and45.5, 0
  br i1 %tobool.not.5, label %if.else52.5, label %if.then46.5

if.then46.5:                                      ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.5 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.5
  %57 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx48.5, align 1
  %or501.5 = or i8 %58, %54
  store i8 %or501.5, ptr %arrayidx48.5, align 1
  br label %if.end59.5

if.else52.5:                                      ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.5 = xor i8 %54, -1
  %arrayidx55.5 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.5
  %59 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx55.5, align 1
  %and57.5 = and i8 %60, %neg53.5
  store i8 %and57.5, ptr %arrayidx55.5, align 1
  br label %if.end59.5

if.end59.5:                                       ; preds = %if.else52.5, %if.then46.5
  %shr.5 = ashr i32 %val.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end59.5, %for.inc.4.for.inc.5_crit_edge
  %val.1.5 = phi i32 [ %val.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %shr.5, %if.end59.5 ]
  %m34.6 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %m34.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %m34.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp36.6 = icmp eq i8 %62, 0
  br i1 %cmp36.6, label %for.inc.5.cleanup_crit_edge, label %if.end39.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39.6:                                       ; preds = %for.inc.5
  %arrayidx33.6 = getelementptr [7 x %struct.segment_map], ptr %u32, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx33.6, align 1
  %conv44.6 = zext i8 %64 to i32
  %and45.6 = and i32 %val.1.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.6)
  %tobool.not.6 = icmp eq i32 %and45.6, 0
  br i1 %tobool.not.6, label %if.else52.6, label %if.then46.6

if.then46.6:                                      ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx48.6 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.6
  %65 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx48.6, align 1
  %or501.6 = or i8 %66, %62
  store i8 %or501.6, ptr %arrayidx48.6, align 1
  br label %cleanup

if.else52.6:                                      ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #16
  %neg53.6 = xor i8 %62, -1
  %arrayidx55.6 = getelementptr [28 x i8], ptr %master47, i32 0, i32 %conv44.6
  %67 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx55.6, align 1
  %and57.6 = and i8 %68, %neg53.6
  store i8 %and57.6, ptr %arrayidx55.6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else52.6, %if.then46.6, %for.inc.5.cleanup_crit_edge, %if.else, %if.then19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_line3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.store_line.exit_crit_edge, label %if.end.i

entry.store_line.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp414.not.i = icmp eq i32 %2, 0
  br i1 %cmp414.not.i, label %if.end.i.store_line.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.store_line.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %el.addr.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 26, %if.end.i.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %el.addr.015.i, 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.016.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  tail call fastcc void @setChar(ptr noundef nonnull %1, i32 noundef %el.addr.015.i, i32 noundef %conv.i) #14
  %inc6.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %2
  br i1 %exitcond.not.i, label %for.body.i.store_line.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.store_line.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

store_line.exit:                                  ; preds = %for.body.i.store_line.exit_crit_edge, %if.end.i.store_line.exit_crit_edge, %entry.store_line.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.store_line.exit_crit_edge ], [ %count, %if.end.i.store_line.exit_crit_edge ], [ %count, %for.body.i.store_line.exit_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yealink_do_idle_tasks(ptr noundef %yld) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_ix = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 14
  %0 = ptrtoint ptr %stat_ix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_ix, align 4
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 6
  %2 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_data, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = load ptr, ptr %ctl_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %5, align 1
  %7 = load ptr, ptr %ctl_data, align 4
  %size = getelementptr inbounds %struct.yld_ctl_packet, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %size, align 1
  %9 = load ptr, ptr %ctl_data, align 4
  %sum = getelementptr inbounds %struct.yld_ctl_packet, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %sum, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %1)
  %cmp = icmp ugt i32 %1, 27
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %master = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 15
  %copy = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %ix.0 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %arrayidx = getelementptr [28 x i8], ptr %master, i32 0, i32 %ix.0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr [28 x i8], ptr %copy, i32 0, i32 %ix.0
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp7.not = icmp eq i8 %12, %14
  br i1 %cmp7.not, label %do.cond, label %send_update

do.cond:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %ix.0, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

send_update:                                      ; preds = %do.body
  %arrayidx5.le = getelementptr [28 x i8], ptr %copy, i32 0, i32 %ix.0
  %15 = ptrtoint ptr %arrayidx5.le to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %arrayidx5.le, align 1
  %16 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_data, align 4
  %data = getelementptr inbounds %struct.yld_ctl_packet, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %data, align 1
  %19 = zext i32 %ix.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %ix.0, label %sw.default [
    i32 24, label %sw.bb
    i32 25, label %sw.bb24
    i32 26, label %sw.bb32
    i32 27, label %sw.bb40
  ]

sw.bb:                                            ; preds = %send_update
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctl_data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %21, align 1
  %sub = sub i8 -6, %12
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %send_update
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl_data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %24, align 1
  %sub28 = sub i8 -10, %12
  br label %sw.epilog.sink.split

sw.bb32:                                          ; preds = %send_update
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl_data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %27, align 1
  %sub36 = sub i8 -4, %12
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %send_update
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i8 %12, 31
  %29 = and i8 %dec, 31
  %30 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl_data, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -127, ptr %31, align 1
  %conv45 = zext i8 %29 to i16
  %33 = load ptr, ptr %ctl_data, align 4
  %offset = getelementptr inbounds %struct.yld_ctl_packet, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv45, ptr %offset, align 1
  %35 = load ptr, ptr %ctl_data, align 4
  %data48 = getelementptr inbounds %struct.yld_ctl_packet, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %data48 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %data48, align 1
  %sub51 = sub nuw nsw i8 126, %29
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %send_update
  %conv.le = zext i8 %12 to i32
  %sub55 = sub nuw nsw i32 24, %ix.0
  %37 = tail call i32 @llvm.umin.i32(i32 %sub55, i32 11)
  %38 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl_data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %39, align 1
  %conv62 = trunc i32 %ix.0 to i16
  %41 = load ptr, ptr %ctl_data, align 4
  %offset64 = getelementptr inbounds %struct.yld_ctl_packet, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %offset64 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %conv62, ptr %offset64, align 1
  %conv65 = trunc i32 %37 to i8
  %43 = load ptr, ptr %ctl_data, align 4
  %size67 = getelementptr inbounds %struct.yld_ctl_packet, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %size67 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv65, ptr %size67, align 1
  %45 = add nuw nsw i32 %ix.0, %conv.le
  %46 = add nuw nsw i32 %45, %37
  %47 = trunc i32 %46 to i8
  %conv72 = sub i8 -4, %47
  %48 = load ptr, ptr %ctl_data, align 4
  %sum74 = getelementptr inbounds %struct.yld_ctl_packet, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %sum74 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv72, ptr %sum74, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp7510 = icmp ugt i32 %37, 1
  br i1 %cmp7510, label %sw.default.for.body_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.default.for.body_crit_edge
  %ix.112 = phi i32 [ %inc77, %for.body.for.body_crit_edge ], [ %ix.0, %sw.default.for.body_crit_edge ]
  %i.011 = phi i32 [ %inc91, %for.body.for.body_crit_edge ], [ 1, %sw.default.for.body_crit_edge ]
  %inc77 = add i32 %ix.112, 1
  %arrayidx79 = getelementptr [28 x i8], ptr %master, i32 0, i32 %inc77
  %50 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx79, align 1
  %arrayidx81 = getelementptr [28 x i8], ptr %copy, i32 0, i32 %inc77
  %52 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx81, align 1
  %53 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctl_data, align 4
  %arrayidx84 = getelementptr %struct.yld_ctl_packet, ptr %54, i32 0, i32 3, i32 %i.011
  %55 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %51, ptr %arrayidx84, align 1
  %56 = load ptr, ptr %ctl_data, align 4
  %sum87 = getelementptr inbounds %struct.yld_ctl_packet, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sum87 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sum87, align 1
  %sub89 = sub i8 %58, %51
  store i8 %sub89, ptr %sum87, align 1
  %inc91 = add nuw nsw i32 %i.011, 1
  %exitcond15.not = icmp eq i32 %inc91, %37
  br i1 %exitcond15.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb40, %sw.bb32, %sw.bb24, %sw.bb
  %sub51.sink = phi i8 [ %sub51, %sw.bb40 ], [ %sub36, %sw.bb32 ], [ %sub28, %sw.bb24 ], [ %sub, %sw.bb ]
  %59 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctl_data, align 4
  %sum54 = getelementptr inbounds %struct.yld_ctl_packet, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %sum54 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %sub51.sink, ptr %sum54, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge
  %ix.2 = phi i32 [ %ix.0, %sw.default.sw.epilog_crit_edge ], [ %ix.0, %sw.epilog.sink.split ], [ %inc77, %for.body.sw.epilog_crit_edge ]
  %add = add i32 %ix.2, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %add.sink = phi i32 [ %add, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ]
  %62 = ptrtoint ptr %stat_ix to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.sink, ptr %stat_ix, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yealink_set_ringtone(ptr nocapture noundef readonly %yld, ptr nocapture noundef readonly %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_data = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 6
  %0 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %4, align 1
  %6 = load ptr, ptr %ctl_data, align 4
  %size4 = getelementptr inbounds %struct.yld_ctl_packet, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %size4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %size4, align 1
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %10 = load ptr, ptr %ctl_data, align 4
  %data = getelementptr inbounds %struct.yld_ctl_packet, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %data, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1.i, align 1
  %16 = add i8 %13, %15
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  %19 = add i8 %16, %18
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3.i, align 1
  %22 = add i8 %19, %21
  %arrayidx.4.i = getelementptr i8, ptr %1, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.4.i, align 1
  %25 = add i8 %22, %24
  %arrayidx.5.i = getelementptr i8, ptr %1, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5.i, align 1
  %28 = add i8 %25, %27
  %arrayidx.6.i = getelementptr i8, ptr %1, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.6.i, align 1
  %31 = add i8 %28, %30
  %arrayidx.7.i = getelementptr i8, ptr %1, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.7.i, align 1
  %34 = add i8 %31, %33
  %arrayidx.8.i = getelementptr i8, ptr %1, i32 8
  %35 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.8.i, align 1
  %37 = add i8 %34, %36
  %arrayidx.9.i = getelementptr i8, ptr %1, i32 9
  %38 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.9.i, align 1
  %40 = add i8 %37, %39
  %arrayidx.10.i = getelementptr i8, ptr %1, i32 10
  %41 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.10.i, align 1
  %43 = add i8 %40, %42
  %arrayidx.11.i = getelementptr i8, ptr %1, i32 11
  %44 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.11.i, align 1
  %46 = add i8 %43, %45
  %arrayidx.12.i = getelementptr i8, ptr %1, i32 12
  %47 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.12.i, align 1
  %49 = add i8 %46, %48
  %arrayidx.13.i = getelementptr i8, ptr %1, i32 13
  %50 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.13.i, align 1
  %52 = add i8 %49, %51
  %arrayidx.14.i = getelementptr i8, ptr %1, i32 14
  %53 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.14.i, align 1
  %55 = add i8 %52, %54
  %sub.14.i = sub i8 0, %55
  %sum3.i = getelementptr inbounds %struct.yld_ctl_packet, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %sum3.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %sub.14.i, ptr %sum3.i, align 1
  %udev.i = getelementptr inbounds %struct.yealink_dev, ptr %yld, i32 0, i32 1
  %57 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i = shl i32 %60, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 3, ptr noundef %1, i16 noundef zeroext 16, i32 noundef 5000) #14
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %dec = add i32 %size, -1
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8.not21 = icmp eq i32 %dec, 0
  br i1 %cmp8.not21, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %ix.022 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %sub = sub i32 %dec, %ix.022
  %62 = tail call i32 @llvm.umin.i32(i32 %sub, i32 11)
  %conv = trunc i32 %62 to i8
  %63 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv, ptr %arrayidx.1.i, align 1
  %conv13 = trunc i32 %ix.022 to i16
  %64 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %conv13, ptr %arrayidx.2.i, align 1
  %arrayidx15 = getelementptr i8, ptr %incdec.ptr, i32 %ix.022
  %65 = call ptr @memcpy(ptr %arrayidx.4.i, ptr %arrayidx15, i32 %62)
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %1, align 1
  %68 = add i8 %67, %conv
  %69 = lshr i32 %ix.022, 8
  %70 = trunc i32 %69 to i8
  %71 = add i8 %68, %70
  %72 = trunc i32 %ix.022 to i8
  %73 = add i8 %71, %72
  %74 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.4.i, align 1
  %76 = add i8 %73, %75
  %77 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.5.i, align 1
  %79 = add i8 %76, %78
  %80 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.6.i, align 1
  %82 = add i8 %79, %81
  %83 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.7.i, align 1
  %85 = add i8 %82, %84
  %86 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.8.i, align 1
  %88 = add i8 %85, %87
  %89 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.9.i, align 1
  %91 = add i8 %88, %90
  %92 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.10.i, align 1
  %94 = add i8 %91, %93
  %95 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.11.i, align 1
  %97 = add i8 %94, %96
  %98 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.12.i, align 1
  %100 = add i8 %97, %99
  %101 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.13.i, align 1
  %103 = add i8 %100, %102
  %104 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.14.i, align 1
  %106 = add i8 %103, %105
  %sub.14.i15 = sub i8 0, %106
  %107 = ptrtoint ptr %sum3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %sub.14.i15, ptr %sum3.i, align 1
  %108 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udev.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i18 = shl i32 %111, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %call5.i20 = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %or.i19, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 3, ptr noundef %1, i16 noundef zeroext 16, i32 noundef 5000) #14
  %add = add i32 %62, %ix.022
  %cmp8.not = icmp eq i32 %dec, %add
  br i1 %cmp8.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_line1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.show_line.exit_crit_edge, label %for.body.i.preheader

entry.show_line.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %show_line.exit

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 49, ptr %buf, align 1
  %incdec.ptr.i.1 = getelementptr i8, ptr %buf, i32 2
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 56, ptr %incdec.ptr.i, align 1
  %incdec.ptr.i.2 = getelementptr i8, ptr %buf, i32 3
  %4 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %incdec.ptr.i.1, align 1
  %incdec.ptr.i.3 = getelementptr i8, ptr %buf, i32 4
  %5 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 101, ptr %incdec.ptr.i.2, align 1
  %incdec.ptr.i.4 = getelementptr i8, ptr %buf, i32 5
  %6 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 56, ptr %incdec.ptr.i.3, align 1
  %incdec.ptr.i.5 = getelementptr i8, ptr %buf, i32 6
  %7 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 46, ptr %incdec.ptr.i.4, align 1
  %incdec.ptr.i.6 = getelementptr i8, ptr %buf, i32 7
  %8 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 77, ptr %incdec.ptr.i.5, align 1
  %incdec.ptr.i.7 = getelementptr i8, ptr %buf, i32 8
  %9 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 56, ptr %incdec.ptr.i.6, align 1
  %incdec.ptr.i.8 = getelementptr i8, ptr %buf, i32 9
  %10 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 46, ptr %incdec.ptr.i.7, align 1
  %incdec.ptr.i.9 = getelementptr i8, ptr %buf, i32 10
  %11 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 56, ptr %incdec.ptr.i.8, align 1
  %incdec.ptr.i.10 = getelementptr i8, ptr %buf, i32 11
  %12 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 56, ptr %incdec.ptr.i.9, align 1
  %incdec.ptr.i.11 = getelementptr i8, ptr %buf, i32 12
  %13 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 46, ptr %incdec.ptr.i.10, align 1
  %incdec.ptr.i.12 = getelementptr i8, ptr %buf, i32 13
  %14 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 46, ptr %incdec.ptr.i.11, align 1
  %incdec.ptr.i.13 = getelementptr i8, ptr %buf, i32 14
  %15 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 46, ptr %incdec.ptr.i.12, align 1
  %incdec.ptr.i.14 = getelementptr i8, ptr %buf, i32 15
  %16 = ptrtoint ptr %incdec.ptr.i.13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 49, ptr %incdec.ptr.i.13, align 1
  %incdec.ptr.i.15 = getelementptr i8, ptr %buf, i32 16
  %17 = ptrtoint ptr %incdec.ptr.i.14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 56, ptr %incdec.ptr.i.14, align 1
  %incdec.ptr.i.16 = getelementptr i8, ptr %buf, i32 17
  %18 = ptrtoint ptr %incdec.ptr.i.15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 56, ptr %incdec.ptr.i.15, align 1
  %19 = ptrtoint ptr %incdec.ptr.i.16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %incdec.ptr.i.16, align 1
  %buf.addr.130.i = getelementptr i8, ptr %buf, i32 18
  %arrayidx6.i = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 0
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.i, align 1
  %22 = ptrtoint ptr %buf.addr.130.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %buf.addr.130.i, align 1
  %buf.addr.1.i = getelementptr i8, ptr %buf, i32 19
  %arrayidx6.i.1 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6.i.1, align 1
  %25 = ptrtoint ptr %buf.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %buf.addr.1.i, align 1
  %buf.addr.1.i.1 = getelementptr i8, ptr %buf, i32 20
  %arrayidx6.i.2 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6.i.2, align 1
  %28 = ptrtoint ptr %buf.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %buf.addr.1.i.1, align 1
  %buf.addr.1.i.2 = getelementptr i8, ptr %buf, i32 21
  %arrayidx6.i.3 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 3
  %29 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx6.i.3, align 1
  %31 = ptrtoint ptr %buf.addr.1.i.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %buf.addr.1.i.2, align 1
  %buf.addr.1.i.3 = getelementptr i8, ptr %buf, i32 22
  %arrayidx6.i.4 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 4
  %32 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.i.4, align 1
  %34 = ptrtoint ptr %buf.addr.1.i.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %buf.addr.1.i.3, align 1
  %buf.addr.1.i.4 = getelementptr i8, ptr %buf, i32 23
  %arrayidx6.i.5 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 5
  %35 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx6.i.5, align 1
  %37 = ptrtoint ptr %buf.addr.1.i.4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %buf.addr.1.i.4, align 1
  %buf.addr.1.i.5 = getelementptr i8, ptr %buf, i32 24
  %arrayidx6.i.6 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 6
  %38 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx6.i.6, align 1
  %40 = ptrtoint ptr %buf.addr.1.i.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %buf.addr.1.i.5, align 1
  %buf.addr.1.i.6 = getelementptr i8, ptr %buf, i32 25
  %arrayidx6.i.7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 7
  %41 = ptrtoint ptr %arrayidx6.i.7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx6.i.7, align 1
  %43 = ptrtoint ptr %buf.addr.1.i.6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %buf.addr.1.i.6, align 1
  %buf.addr.1.i.7 = getelementptr i8, ptr %buf, i32 26
  %arrayidx6.i.8 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 8
  %44 = ptrtoint ptr %arrayidx6.i.8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i.8, align 1
  %46 = ptrtoint ptr %buf.addr.1.i.7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %buf.addr.1.i.7, align 1
  %buf.addr.1.i.8 = getelementptr i8, ptr %buf, i32 27
  %arrayidx6.i.9 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 9
  %47 = ptrtoint ptr %arrayidx6.i.9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx6.i.9, align 1
  %49 = ptrtoint ptr %buf.addr.1.i.8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %buf.addr.1.i.8, align 1
  %buf.addr.1.i.9 = getelementptr i8, ptr %buf, i32 28
  %arrayidx6.i.10 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 10
  %50 = ptrtoint ptr %arrayidx6.i.10 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx6.i.10, align 1
  %52 = ptrtoint ptr %buf.addr.1.i.9 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %buf.addr.1.i.9, align 1
  %buf.addr.1.i.10 = getelementptr i8, ptr %buf, i32 29
  %arrayidx6.i.11 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 11
  %53 = ptrtoint ptr %arrayidx6.i.11 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6.i.11, align 1
  %55 = ptrtoint ptr %buf.addr.1.i.10 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %buf.addr.1.i.10, align 1
  %buf.addr.1.i.11 = getelementptr i8, ptr %buf, i32 30
  %arrayidx6.i.12 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 12
  %56 = ptrtoint ptr %arrayidx6.i.12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6.i.12, align 1
  %58 = ptrtoint ptr %buf.addr.1.i.11 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %buf.addr.1.i.11, align 1
  %buf.addr.1.i.12 = getelementptr i8, ptr %buf, i32 31
  %arrayidx6.i.13 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 13
  %59 = ptrtoint ptr %arrayidx6.i.13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx6.i.13, align 1
  %61 = ptrtoint ptr %buf.addr.1.i.12 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %buf.addr.1.i.12, align 1
  %buf.addr.1.i.13 = getelementptr i8, ptr %buf, i32 32
  %arrayidx6.i.14 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 14
  %62 = ptrtoint ptr %arrayidx6.i.14 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx6.i.14, align 1
  %64 = ptrtoint ptr %buf.addr.1.i.13 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %buf.addr.1.i.13, align 1
  %buf.addr.1.i.14 = getelementptr i8, ptr %buf, i32 33
  %arrayidx6.i.15 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 15
  %65 = ptrtoint ptr %arrayidx6.i.15 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx6.i.15, align 1
  %67 = ptrtoint ptr %buf.addr.1.i.14 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %buf.addr.1.i.14, align 1
  %buf.addr.1.i.15 = getelementptr i8, ptr %buf, i32 34
  %arrayidx6.i.16 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 16
  %68 = ptrtoint ptr %arrayidx6.i.16 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx6.i.16, align 1
  %70 = ptrtoint ptr %buf.addr.1.i.15 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %buf.addr.1.i.15, align 1
  %buf.addr.1.i.16 = getelementptr i8, ptr %buf, i32 35
  %incdec.ptr11.i = getelementptr i8, ptr %buf, i32 36
  %71 = ptrtoint ptr %buf.addr.1.i.16 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 10, ptr %buf.addr.1.i.16, align 1
  %72 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %incdec.ptr11.i, align 1
  br label %show_line.exit

show_line.exit:                                   ; preds = %for.body.i.preheader, %entry.show_line.exit_crit_edge
  %retval.0.i = phi i32 [ 37, %for.body.i.preheader ], [ -19, %entry.show_line.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_line1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.store_line.exit_crit_edge, label %if.end.i

entry.store_line.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp414.not.i = icmp eq i32 %2, 0
  br i1 %cmp414.not.i, label %if.end.i.store_line.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.store_line.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %inc6.i = add nuw nsw i32 %i.016.i, 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.016.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  tail call fastcc void @setChar(ptr noundef nonnull %1, i32 noundef %i.016.i, i32 noundef %conv.i) #14
  %exitcond.not.i = icmp eq i32 %inc6.i, %2
  br i1 %exitcond.not.i, label %for.body.i.store_line.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.store_line.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

store_line.exit:                                  ; preds = %for.body.i.store_line.exit_crit_edge, %if.end.i.store_line.exit_crit_edge, %entry.store_line.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.store_line.exit_crit_edge ], [ %count, %if.end.i.store_line.exit_crit_edge ], [ %count, %for.body.i.store_line.exit_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_line2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.show_line.exit_crit_edge, label %for.body.i.preheader

entry.show_line.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %show_line.exit

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.8 = getelementptr i8, ptr %buf, i32 9
  %2 = call ptr @memset(ptr %buf, i32 46, i32 9)
  %3 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %incdec.ptr.i.8, align 1
  %buf.addr.130.i = getelementptr i8, ptr %buf, i32 10
  %arrayidx6.i = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 17
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6.i, align 1
  %6 = ptrtoint ptr %buf.addr.130.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buf.addr.130.i, align 1
  %buf.addr.1.i = getelementptr i8, ptr %buf, i32 11
  %arrayidx6.i.1 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 18
  %7 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i.1, align 1
  %9 = ptrtoint ptr %buf.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %buf.addr.1.i, align 1
  %buf.addr.1.i.1 = getelementptr i8, ptr %buf, i32 12
  %arrayidx6.i.2 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 19
  %10 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i.2, align 1
  %12 = ptrtoint ptr %buf.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf.addr.1.i.1, align 1
  %buf.addr.1.i.2 = getelementptr i8, ptr %buf, i32 13
  %arrayidx6.i.3 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 20
  %13 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i.3, align 1
  %15 = ptrtoint ptr %buf.addr.1.i.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %buf.addr.1.i.2, align 1
  %buf.addr.1.i.3 = getelementptr i8, ptr %buf, i32 14
  %arrayidx6.i.4 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 21
  %16 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i.4, align 1
  %18 = ptrtoint ptr %buf.addr.1.i.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf.addr.1.i.3, align 1
  %buf.addr.1.i.4 = getelementptr i8, ptr %buf, i32 15
  %arrayidx6.i.5 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 22
  %19 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6.i.5, align 1
  %21 = ptrtoint ptr %buf.addr.1.i.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %buf.addr.1.i.4, align 1
  %buf.addr.1.i.5 = getelementptr i8, ptr %buf, i32 16
  %arrayidx6.i.6 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 23
  %22 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6.i.6, align 1
  %24 = ptrtoint ptr %buf.addr.1.i.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %buf.addr.1.i.5, align 1
  %buf.addr.1.i.6 = getelementptr i8, ptr %buf, i32 17
  %arrayidx6.i.7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 24
  %25 = ptrtoint ptr %arrayidx6.i.7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx6.i.7, align 1
  %27 = ptrtoint ptr %buf.addr.1.i.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %buf.addr.1.i.6, align 1
  %buf.addr.1.i.7 = getelementptr i8, ptr %buf, i32 18
  %arrayidx6.i.8 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 25
  %28 = ptrtoint ptr %arrayidx6.i.8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i.8, align 1
  %30 = ptrtoint ptr %buf.addr.1.i.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %buf.addr.1.i.7, align 1
  %buf.addr.1.i.8 = getelementptr i8, ptr %buf, i32 19
  %incdec.ptr11.i = getelementptr i8, ptr %buf, i32 20
  %31 = ptrtoint ptr %buf.addr.1.i.8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %buf.addr.1.i.8, align 1
  %32 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %incdec.ptr11.i, align 1
  br label %show_line.exit

show_line.exit:                                   ; preds = %for.body.i.preheader, %entry.show_line.exit_crit_edge
  %retval.0.i = phi i32 [ 21, %for.body.i.preheader ], [ -19, %entry.show_line.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_line2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.store_line.exit_crit_edge, label %if.end.i

entry.store_line.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp414.not.i = icmp eq i32 %2, 0
  br i1 %cmp414.not.i, label %if.end.i.store_line.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.store_line.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %el.addr.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 17, %if.end.i.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %el.addr.015.i, 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.016.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  tail call fastcc void @setChar(ptr noundef nonnull %1, i32 noundef %el.addr.015.i, i32 noundef %conv.i) #14
  %inc6.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %2
  br i1 %exitcond.not.i, label %for.body.i.store_line.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.store_line.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %store_line.exit

store_line.exit:                                  ; preds = %for.body.i.store_line.exit_crit_edge, %if.end.i.store_line.exit_crit_edge, %entry.store_line.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.store_line.exit_crit_edge ], [ %count, %if.end.i.store_line.exit_crit_edge ], [ %count, %for.body.i.store_line.exit_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_line3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.show_line.exit_crit_edge, label %for.body.i.preheader

entry.show_line.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %show_line.exit

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.11 = getelementptr i8, ptr %buf, i32 12
  %2 = call ptr @memset(ptr %buf, i32 56, i32 12)
  %3 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %incdec.ptr.i.11, align 1
  %buf.addr.130.i = getelementptr i8, ptr %buf, i32 13
  %arrayidx6.i = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 26
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6.i, align 1
  %6 = ptrtoint ptr %buf.addr.130.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buf.addr.130.i, align 1
  %buf.addr.1.i = getelementptr i8, ptr %buf, i32 14
  %arrayidx6.i.1 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 27
  %7 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i.1, align 1
  %9 = ptrtoint ptr %buf.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %buf.addr.1.i, align 1
  %buf.addr.1.i.1 = getelementptr i8, ptr %buf, i32 15
  %arrayidx6.i.2 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 28
  %10 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i.2, align 1
  %12 = ptrtoint ptr %buf.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf.addr.1.i.1, align 1
  %buf.addr.1.i.2 = getelementptr i8, ptr %buf, i32 16
  %arrayidx6.i.3 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 29
  %13 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i.3, align 1
  %15 = ptrtoint ptr %buf.addr.1.i.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %buf.addr.1.i.2, align 1
  %buf.addr.1.i.3 = getelementptr i8, ptr %buf, i32 17
  %arrayidx6.i.4 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 30
  %16 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i.4, align 1
  %18 = ptrtoint ptr %buf.addr.1.i.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf.addr.1.i.3, align 1
  %buf.addr.1.i.4 = getelementptr i8, ptr %buf, i32 18
  %arrayidx6.i.5 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 31
  %19 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6.i.5, align 1
  %21 = ptrtoint ptr %buf.addr.1.i.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %buf.addr.1.i.4, align 1
  %buf.addr.1.i.5 = getelementptr i8, ptr %buf, i32 19
  %arrayidx6.i.6 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 32
  %22 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6.i.6, align 1
  %24 = ptrtoint ptr %buf.addr.1.i.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %buf.addr.1.i.5, align 1
  %buf.addr.1.i.6 = getelementptr i8, ptr %buf, i32 20
  %arrayidx6.i.7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 33
  %25 = ptrtoint ptr %arrayidx6.i.7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx6.i.7, align 1
  %27 = ptrtoint ptr %buf.addr.1.i.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %buf.addr.1.i.6, align 1
  %buf.addr.1.i.7 = getelementptr i8, ptr %buf, i32 21
  %arrayidx6.i.8 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 34
  %28 = ptrtoint ptr %arrayidx6.i.8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i.8, align 1
  %30 = ptrtoint ptr %buf.addr.1.i.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %buf.addr.1.i.7, align 1
  %buf.addr.1.i.8 = getelementptr i8, ptr %buf, i32 22
  %arrayidx6.i.9 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 35
  %31 = ptrtoint ptr %arrayidx6.i.9 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.i.9, align 1
  %33 = ptrtoint ptr %buf.addr.1.i.8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %buf.addr.1.i.8, align 1
  %buf.addr.1.i.9 = getelementptr i8, ptr %buf, i32 23
  %arrayidx6.i.10 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 36
  %34 = ptrtoint ptr %arrayidx6.i.10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.i.10, align 1
  %36 = ptrtoint ptr %buf.addr.1.i.9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %buf.addr.1.i.9, align 1
  %buf.addr.1.i.10 = getelementptr i8, ptr %buf, i32 24
  %arrayidx6.i.11 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 37
  %37 = ptrtoint ptr %arrayidx6.i.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i.11, align 1
  %39 = ptrtoint ptr %buf.addr.1.i.10 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %buf.addr.1.i.10, align 1
  %buf.addr.1.i.11 = getelementptr i8, ptr %buf, i32 25
  %incdec.ptr11.i = getelementptr i8, ptr %buf, i32 26
  %40 = ptrtoint ptr %buf.addr.1.i.11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %buf.addr.1.i.11, align 1
  %41 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %incdec.ptr11.i, align 1
  br label %show_line.exit

show_line.exit:                                   ; preds = %for.body.i.preheader, %entry.show_line.exit_crit_edge
  %retval.0.i = phi i32 [ 27, %for.body.i.preheader ], [ -19, %entry.show_line.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_icons(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.024 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.022
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp2.not = icmp eq i8 %3, 46
  br i1 %cmp2.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %ret.024
  %arrayidx7 = getelementptr %struct.yealink_dev, ptr %1, i32 0, i32 11, i32 %i.022
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp9 = icmp eq i8 %5, 32
  %cond = select i1 %cmp9, ptr @.str.33, ptr @.str.34
  %name = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.022, i32 1, i32 0, i32 1
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx6, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, ptr noundef %name)
  %add = add i32 %call12, %ret.024
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.024, %for.body.for.inc_crit_edge ], [ %add, %if.end5 ]
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_icon(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %conv = zext i8 %1 to i32
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.set_icon.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.set_icon.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_icon.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.021.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 46
  br i1 %cmp2.not.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %name.i = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.021.i, i32 1, i32 0, i32 1
  %call7.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef %name.i, i32 noundef %count) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @setChar(ptr noundef nonnull %3, i32 noundef %i.021.i, i32 noundef %conv) #14
  br label %set_icon.exit

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.inc.i.set_icon.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.set_icon.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_icon.exit

set_icon.exit:                                    ; preds = %for.inc.i.set_icon.exit_crit_edge, %if.then10.i, %entry.set_icon.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.set_icon.exit_crit_edge ], [ %count, %if.then10.i ], [ %count, %for.inc.i.set_icon.exit_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hide_icon(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.set_icon.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.set_icon.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_icon.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.021.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %cmp2.not.i = icmp eq i8 %3, 46
  br i1 %cmp2.not.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %name.i = getelementptr [41 x %struct.lcd_segment_map], ptr @lcdMap, i32 0, i32 %i.021.i, i32 1, i32 0, i32 1
  %call7.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef %name.i, i32 noundef %count) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @setChar(ptr noundef nonnull %1, i32 noundef %i.021.i, i32 noundef 32) #14
  br label %set_icon.exit

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.inc.i.set_icon.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.set_icon.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_icon.exit

set_icon.exit:                                    ; preds = %for.inc.i.set_icon.exit_crit_edge, %if.then10.i, %entry.set_icon.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.set_icon.exit_crit_edge ], [ %count, %if.then10.i ], [ %count, %for.inc.i.set_icon.exit_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_map(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @map_seg7, i32 128)
  ret i32 128
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @store_map(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %cnt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cnt)
  %cmp.not = icmp eq i32 %cnt, 128
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr @map_seg7, ptr %buf, i32 128)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 128, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ringtone(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @sysfs_rwsema) #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @yealink_set_ringtone(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @sysfs_rwsema) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !71, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_yealink__235_990_yealink_driver_init6, !1, !"__initcall__kmod_yealink__235_990_yealink_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/yealink.c", i32 990, i32 1}
!2 = !{ptr @__exitcall_yealink_driver_exit, !1, !"__exitcall_yealink_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/yealink.c", i32 994, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/yealink.c", i32 995, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/yealink.c", i32 996, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @yealink_driver, !12, !"yealink_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/misc/yealink.c", i32 983, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/misc/yealink.c", i32 910, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @usb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/yealink.c", i32 939, i32 22}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/yealink.c", i32 976, i32 4}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/yealink.c", i32 416, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @urb_irq_callback._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @urb_irq_callback._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/yealink.c", i32 426, i32 3}
!34 = !{ptr @urb_irq_callback.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/yealink.c", i32 433, i32 3}
!37 = !{ptr @urb_irq_callback._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @urb_irq_callback._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/yealink.c", i32 442, i32 4}
!41 = !{ptr @urb_irq_callback._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @urb_irq_callback._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/yealink.c", i32 454, i32 3}
!45 = !{ptr @urb_ctl_callback._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @urb_ctl_callback._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @urb_ctl_callback._entry.19, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/yealink.c", i32 473, i32 3}
!49 = !{ptr @urb_ctl_callback._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/usb.h", i32 912, i32 31}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/yealink.c", i32 506, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @input_open.__UNIQUE_ID_ddebug233, !53, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/yealink.c", i32 521, i32 3}
!58 = !{ptr @input_open.__UNIQUE_ID_ddebug234, !57, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!59 = !{ptr @default_ringtone, !60, !"default_ringtone", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/yealink.c", i32 265, i32 11}
!61 = !{ptr @lcdMap, !62, !"lcdMap", i1 false, i1 false}
!62 = !{!"../drivers/input/misc/yealink.c", i32 81, i32 3}
!63 = !{ptr @map_seg7, !64, !"map_seg7", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/yealink.c", i32 123, i32 8}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/misc/yealink.c", i32 551, i32 8}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sysfs_rwsema, !66, !"sysfs_rwsema", i1 false, i1 false}
!69 = !{ptr @yld_attr_group, !70, !"yld_attr_group", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/yealink.c", i32 786, i32 37}
!71 = !{ptr @yld_attributes, !72, !"yld_attributes", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/yealink.c", i32 774, i32 26}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/yealink.c", i32 766, i32 8}
!75 = !{ptr @dev_attr_line1, !74, !"dev_attr_line1", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/yealink.c", i32 767, i32 8}
!78 = !{ptr @dev_attr_line2, !77, !"dev_attr_line2", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/yealink.c", i32 768, i32 8}
!81 = !{ptr @dev_attr_line3, !80, !"dev_attr_line3", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/misc/yealink.c", i32 769, i32 8}
!84 = !{ptr @dev_attr_get_icons, !83, !"dev_attr_get_icons", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/yealink.c", i32 691, i32 29}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/yealink.c", i32 692, i32 29}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/misc/yealink.c", i32 692, i32 36}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/yealink.c", i32 770, i32 8}
!93 = !{ptr @dev_attr_show_icon, !92, !"dev_attr_show_icon", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/yealink.c", i32 771, i32 8}
!96 = !{ptr @dev_attr_hide_icon, !95, !"dev_attr_hide_icon", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/misc/yealink.c", i32 765, i32 8}
!99 = !{ptr @dev_attr_map_seg7, !98, !"dev_attr_map_seg7", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/misc/yealink.c", i32 772, i32 8}
!102 = !{ptr @dev_attr_ringtone, !101, !"dev_attr_ringtone", i1 false, i1 false}
!103 = !{ptr @usb_table, !104, !"usb_table", i1 false, i1 false}
!104 = !{!"../drivers/input/misc/yealink.c", i32 802, i32 35}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/yealink.c", i32 799, i32 10}
!107 = !{ptr @info_P1K, !108, !"info_P1K", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/yealink.c", i32 798, i32 33}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2148714439, i64 2148714444, i64 2148714457, i64 2148714501, i64 2148714535, i64 2148714556}
!120 = !{i32 -22, i32 1067}
!121 = !{i64 2154064004}
!122 = !{i64 2154064160}
