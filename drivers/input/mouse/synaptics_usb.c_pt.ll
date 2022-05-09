; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/synaptics_usb.c_pt.bc'
source_filename = "../drivers/input/mouse/synaptics_usb.c"
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.synusb = type { ptr, ptr, ptr, ptr, %struct.mutex, i8, ptr, [128 x i8], [64 x i8], i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_synaptics_usb__234_559_synusb_driver_init6 = internal global ptr @synusb_driver_init, section ".initcall6.init", align 4
@synusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @synusb_probe, ptr @synusb_disconnect, ptr null, ptr @synusb_suspend, ptr @synusb_resume, ptr @synusb_reset_resume, ptr @synusb_pre_reset, ptr @synusb_post_reset, ptr @synusb_idtable, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_synusb_driver_exit = internal global ptr @synusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [122 x i8] c"synaptics_usb.author=Rob Miller <rob@inpharmatica.co.uk>, Ron Lee <ron@debian.org>, Jan Steinhoff <cpad@jan-steinhoff.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [54 x i8] c"synaptics_usb.description=Synaptics USB device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [53 x i8] c"synaptics_usb.file=drivers/input/mouse/synaptics_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"synaptics_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"synaptics_usb\00", [18 x i8] zeroinitializer }, align 32
@synusb_idtable = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1739, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 41 }, %struct.usb_device_id { i16 3, i16 1739, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1739, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1739, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 1739, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@synusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Can not set alternate setting to %i, error: %i\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"synusb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/mouse/synaptics_usb.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synusb_probe._entry_ptr = internal global ptr @synusb_probe._entry, section ".printk_index", align 4
@synusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&synusb->pm_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USB Synaptics Device %04x:%04x\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (Stick)\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@synusb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register input device, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@synusb_probe._entry_ptr.13 = internal global ptr @synusb_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@synusb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result: %d\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"synusb_irq\00", [21 x i8] zeroinitializer }, align 32
@synusb_irq._entry_ptr = internal global ptr @synusb_irq._entry, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@synusb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s - usb_autopm_get_interface failed, error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synusb_open\00", [20 x i8] zeroinitializer }, align 32
@synusb_open._entry_ptr = internal global ptr @synusb_open._entry, section ".printk_index", align 4
@synusb_open._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - usb_submit_urb failed, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@synusb_open._entry_ptr.21 = internal global ptr @synusb_open._entry.19, section ".printk_index", align 4
@switch.table.synusb_irq = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@switch.table.synusb_irq.22 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 5, i32 5, i32 5, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"synusb_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 546, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 559, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"synusb_idtable\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 531, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 304, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 324, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 362, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 368, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 373, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 376, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 431, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 218, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 912, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 249, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [39 x i8] c"../drivers/input/mouse/synaptics_usb.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 258, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [24 x i8] c"switch.table.synusb_irq\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"switch.table.synusb_irq.22\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_synusb_driver_exit, ptr @__initcall__kmod_synaptics_usb__234_559_synusb_driver_init6, ptr @synusb_driver_exit, ptr @synusb_irq._entry, ptr @synusb_irq._entry_ptr, ptr @synusb_open._entry, ptr @synusb_open._entry.19, ptr @synusb_open._entry_ptr, ptr @synusb_open._entry_ptr.21, ptr @synusb_probe._entry, ptr @synusb_probe._entry.11, ptr @synusb_probe._entry_ptr, ptr @synusb_probe._entry_ptr.13, ptr @synusb_driver, ptr @.str, ptr @synusb_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @synusb_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @switch.table.synusb_irq, ptr @switch.table.synusb_irq.22], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_idtable to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synusb_open._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.synusb_irq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.synusb_irq.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @synusb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @synusb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i302 = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %6 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  %. = zext i1 %cmp to i32
  %call2 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i302, i32 noundef %conv, i32 noundef %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %., i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp10.not.i = icmp eq i8 %11, 0
  br i1 %cmp10.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %endpoint2.i = getelementptr inbounds %struct.usb_host_interface, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %endpoint2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %endpoint2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %13, i32 %i.011.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %14 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bmAttributes.i.i.i, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp.i.not.i.i = icmp eq i8 %16, 3
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_int_in.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

usb_endpoint_is_int_in.exit.i:                    ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %17 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i = icmp sgt i8 %18, -1
  br i1 %tobool.not.i, label %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, label %synusb_get_in_endpoint.exit

usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

synusb_get_in_endpoint.exit:                      ; preds = %usb_endpoint_is_int_in.exit.i
  %bEndpointAddress.i.i.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %tobool5.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not, label %synusb_get_in_endpoint.exit.cleanup_crit_edge, label %if.end7

synusb_get_in_endpoint.exit.cleanup_crit_edge:    ; preds = %synusb_get_in_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %synusb_get_in_endpoint.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 312) #12
  %call9 = tail call ptr @input_allocate_device() #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  %tobool11.not = icmp eq ptr %call9, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end7.err_free_mem_crit_edge, label %if.end13

if.end7.err_free_mem_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

if.end13:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i302, ptr %call7.i.i, align 8
  %intf15 = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %intf15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %intf, ptr %intf15, align 4
  %input = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9, ptr %input, align 8
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @synusb_probe.__key) #8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %23 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_info, align 4
  %flags = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 9
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp22 = icmp eq i8 %5, 1
  %cond24 = select i1 %cmp22, i32 2, i32 1
  %or = select i1 %tobool20.not, i32 0, i32 %cond24
  %storemerge = or i32 %or, %24
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %flags, align 4
  %call27 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %urb = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call27, ptr %urb, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end13.err_free_mem_crit_edge, label %if.end31

if.end13.err_free_mem_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

if.end31:                                         ; preds = %if.end13
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call27, i32 0, i32 15
  %call33 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i302, i32 noundef 8, i32 noundef 3264, ptr noundef %transfer_dma) #8
  %data = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call33, ptr %data, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end31.err_free_urb_crit_edge, label %if.end37

if.end31.err_free_urb_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_urb

if.end37:                                         ; preds = %if.end31
  %28 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb, align 8
  %30 = ptrtoint ptr %bEndpointAddress.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i.i.le, align 1
  %conv39 = zext i8 %31 to i32
  %32 = ptrtoint ptr %add.ptr.i302 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i302, align 8
  %shl.i = shl i32 %33, 8
  %shl1.i = shl nuw nsw i32 %conv39, 15
  %or.i303 = or i32 %shl1.i, %shl.i
  %or42 = or i32 %or.i303, 1073741952
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %34 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bInterval, align 1
  %conv44 = zext i8 %35 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i302, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or42, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call33, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @synusb_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
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
  br i1 %or.cond.i, label %if.then.i, label %if.end37.usb_fill_int_urb.exit_crit_edge

if.end37.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i32 @llvm.smax.i32(i32 %conv44, i32 1) #8
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 16) #8
  %sub.i = add nsw i32 %45, -1
  %shl.i304 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end37.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i304, %if.then.i ], [ %conv44, %if.end37.usb_fill_int_urb.exit_crit_edge ]
  %46 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 25
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %interval.sink.i, ptr %46, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 23
  %48 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %start_frame.i, align 4
  %49 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %transfer_flags, align 4
  %or46 = or i32 %52, 4
  store i32 %or46, ptr %transfer_flags, align 4
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %53 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %manufacturer, align 4
  %tobool47.not = icmp eq ptr %54, null
  br i1 %tobool47.not, label %usb_fill_int_urb.exit.if.end51_crit_edge, label %if.then48

usb_fill_int_urb.exit.if.end51_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then48:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 7
  %call50 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %54, i32 noundef 128) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %usb_fill_int_urb.exit.if.end51_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %55 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %product, align 8
  %tobool52.not = icmp eq ptr %56, null
  br i1 %tobool52.not, label %if.end51.if.end65_crit_edge, label %if.then53

if.end51.if.end65_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then53:                                        ; preds = %if.end51
  %57 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %manufacturer, align 4
  %tobool55.not = icmp eq ptr %58, null
  br i1 %tobool55.not, label %if.then53.if.end60_crit_edge, label %if.then56

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %name57 = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 7
  %call59 = tail call i32 @strlcat(ptr noundef %name57, ptr noundef nonnull @.str.7, i32 noundef 128) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then53.if.end60_crit_edge
  %name61 = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %product, align 8
  %call64 = tail call i32 @strlcat(ptr noundef %name61, ptr noundef %60, i32 noundef 128) #8
  br label %if.end65

if.end65:                                         ; preds = %if.end60, %if.end51.if.end65_crit_edge
  %name66 = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %name66 to i32
  call void @__asan_load1_noabort(i32 %61)
  %char0 = load i8, ptr %name66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool69.not = icmp eq i8 %char0, 0
  br i1 %tobool69.not, label %if.then70, label %if.end65.if.end77_crit_edge

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %idVendor = getelementptr i8, ptr %1, i32 936
  %62 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %idVendor, align 8
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %conv73 = zext i16 %64 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %65 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %idProduct, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %conv75 = zext i16 %67 to i32
  %call76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name66, i32 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %conv73, i32 noundef %conv75)
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %if.end65.if.end77_crit_edge
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and79 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end85_crit_edge, label %if.then81

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = tail call i32 @strlcat(ptr noundef %name66, ptr noundef nonnull @.str.9, i32 noundef 128) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end77.if.end85_crit_edge
  %phys = getelementptr inbounds %struct.synusb, ptr %call7.i.i, i32 0, i32 8
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef %73, ptr noundef %devpath.i) #8
  %call90 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.10, i32 noundef 64) #8
  %74 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %name66, ptr %call9, align 8
  %phys96 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 1
  %75 = ptrtoint ptr %phys96 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %phys, ptr %phys96, align 4
  %id97 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3
  %76 = ptrtoint ptr %id97 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 3, ptr %id97, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %77 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %idVendor.i, align 8
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %81 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %idProduct.i, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 2
  %84 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %85 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %bcdDevice.i, align 4
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 3, i32 3
  %88 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %version.i, align 2
  %89 = ptrtoint ptr %intf15 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %intf15, align 4
  %dev99 = getelementptr inbounds %struct.usb_interface, ptr %90, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 1
  %91 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev99, ptr %parent, align 8
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 4
  %and102 = and i32 %93, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end85.if.end105_crit_edge

if.end85.if.end105_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then104:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %open = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 31
  %94 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @synusb_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 32
  %95 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @synusb_close, ptr %close, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end85.if.end105_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 40, i32 8
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 5
  %97 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %evbit, align 4
  %or.i282 = or i32 %98, 10
  store i32 %or.i282, ptr %evbit, align 4
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %and110 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else, label %if.then112

if.then112:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %or.i283 = or i32 %98, 14
  %101 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i283, ptr %evbit, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 7
  %102 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %relbit, align 4
  %or.i285 = or i32 %103, 3
  store i32 %or.i285, ptr %relbit, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 4
  %104 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %propbit, align 4
  %or.i286 = or i32 %105, 32
  store i32 %or.i286, ptr %propbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #8
  br label %if.end126

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 0, i32 noundef 1472, i32 noundef 5472, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 1, i32 noundef 1408, i32 noundef 4448, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call9, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #8
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call9, i32 0, i32 6, i32 10
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i, align 4
  %or.i293 = or i32 %107, 25632
  store i32 %or.i293, ptr %add.ptr.i, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then112
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags, align 4
  %and128 = and i32 %109, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  %propbit134 = getelementptr inbounds %struct.input_dev, ptr %call9, i32 0, i32 4
  %110 = ptrtoint ptr %propbit134 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %propbit134, align 4
  %.313 = select i1 %tobool129.not, i32 1, i32 2
  %or.i295 = or i32 %111, %.313
  store i32 %or.i295, ptr %propbit134, align 4
  %add.ptr.i296 = getelementptr %struct.input_dev, ptr %call9, i32 0, i32 6, i32 8
  %112 = ptrtoint ptr %add.ptr.i296 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i296, align 4
  %or.i301 = or i32 %113, 458752
  store i32 %or.i301, ptr %add.ptr.i296, align 4
  %driver_data.i.i305 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %114 = ptrtoint ptr %driver_data.i.i305 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i, ptr %driver_data.i.i305, align 4
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags, align 4
  %and144 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end126.if.end151_crit_edge, label %if.then146

if.end126.if.end151_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then146:                                       ; preds = %if.end126
  %call147 = tail call i32 @synusb_open(ptr noundef nonnull %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then146.if.end151_crit_edge, label %if.then146.err_free_dma_crit_edge

if.then146.err_free_dma_crit_edge:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma

if.then146.if.end151_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.end151:                                        ; preds = %if.then146.if.end151_crit_edge, %if.end126.if.end151_crit_edge
  %call152 = tail call i32 @input_register_device(ptr noundef nonnull %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end151.cleanup_crit_edge, label %do.end157

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end157:                                        ; preds = %if.end151
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call152) #11
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags, align 4
  %and161 = and i32 %118, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.end157.err_free_dma_crit_edge, label %if.then163

do.end157.err_free_dma_crit_edge:                 ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma

if.then163:                                       ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %input, align 8
  tail call void @synusb_close(ptr noundef %120)
  br label %err_free_dma

err_free_dma:                                     ; preds = %if.then163, %do.end157.err_free_dma_crit_edge, %if.then146.err_free_dma_crit_edge
  %error.0 = phi i32 [ %call147, %if.then146.err_free_dma_crit_edge ], [ %call152, %if.then163 ], [ %call152, %do.end157.err_free_dma_crit_edge ]
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %123 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %urb, align 8
  %transfer_dma168 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 15
  %125 = ptrtoint ptr %transfer_dma168 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %transfer_dma168, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i302, i32 noundef 8, ptr noundef %122, i32 noundef %126) #8
  br label %err_free_urb

err_free_urb:                                     ; preds = %err_free_dma, %if.end31.err_free_urb_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_dma ], [ -12, %if.end31.err_free_urb_crit_edge ]
  %127 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %urb, align 8
  tail call void @usb_free_urb(ptr noundef %128) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_urb, %if.end13.err_free_mem_crit_edge, %if.end7.err_free_mem_crit_edge
  %error.2 = phi i32 [ %error.1, %err_free_urb ], [ -12, %if.end7.err_free_mem_crit_edge ], [ -12, %if.end13.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call9) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  %driver_data.i.i306 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %129 = ptrtoint ptr %driver_data.i.i306 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %driver_data.i.i306, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end151.cleanup_crit_edge, %synusb_get_in_endpoint.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %error.2, %err_free_mem ], [ -19, %synusb_get_in_endpoint.exit.cleanup_crit_edge ], [ 0, %if.end151.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %flags = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %intf.i = getelementptr inbounds %struct.synusb, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf.i, align 4
  %call1.i = tail call i32 @usb_autopm_get_interface(ptr noundef %11) #8
  %pm_mutex.i = getelementptr inbounds %struct.synusb, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex.i, i32 noundef 0) #8
  %urb.i = getelementptr inbounds %struct.synusb, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #8
  %14 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i, align 4
  %needs_remote_wakeup.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %needs_remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %needs_remote_wakeup.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %needs_remote_wakeup.i, align 8
  %is_open.i = getelementptr inbounds %struct.synusb, ptr %9, i32 0, i32 5
  %17 = ptrtoint ptr %is_open.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_open.i, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %19) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %input2 = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input2, align 4
  tail call void @input_unregister_device(ptr noundef %21) #8
  %data = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %23, i32 noundef %27) #8
  %28 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %29) #8
  tail call void @kfree(ptr noundef %1) #8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %is_open = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %lor.lhs.false.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pm_mutex.i = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex.i, i32 noundef 0) #8
  %is_open.i = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_open.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.synusb_resume.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

lor.lhs.false.i.synusb_resume.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %synusb_resume.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %urb.i = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb.i, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -5, i32 0
  br label %synusb_resume.exit

synusb_resume.exit:                               ; preds = %land.lhs.true.i, %lor.lhs.false.i.synusb_resume.exit_crit_edge
  %retval1.0.i = phi i32 [ 0, %lor.lhs.false.i.synusb_resume.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex.i) #8
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_open = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %lor.lhs.false.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synusb_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.resubmit_crit_edge [
    i32 0, label %sw.bb
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge34
    i32 -108, label %entry.cleanup_crit_edge35
  ]

entry.cleanup_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.resubmit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %flags = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %input.i14 = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %input.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input.i14, align 4
  %data.i15 = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i15, align 4
  %arrayidx.i16 = getelementptr i8, ptr %13, i32 6
  %14 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i16, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 0
  br i1 %cmp.not.i, label %if.then.synusb_report_stick.exit_crit_edge, label %if.then.i

if.then.synusb_report_stick.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %synusb_report_stick.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %13, i32 2
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i, align 2
  %shl10.i = shl i16 %17, 3
  %20 = ashr i16 %shl10.i, 7
  %shl.i = shl i16 %19, 3
  %21 = ashr i16 %shl.i, 7
  %shr.i = sext i16 %21 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %shr.i) #8
  %narrow.i = sub nsw i16 0, %20
  %sub.i = sext i16 %narrow.i to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 1, i32 noundef %sub.i) #8
  br label %synusb_report_stick.exit

synusb_report_stick.exit:                         ; preds = %if.then.i, %if.then.synusb_report_stick.exit_crit_edge
  %conv.i = zext i8 %15 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 24, i32 noundef %conv.i) #8
  %22 = ptrtoint ptr %input.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i14, align 4
  %24 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i15, align 4
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %28 = lshr i8 %27, 2
  %.lobit.i.i = and i8 %28, 1
  %29 = zext i8 %.lobit.i.i to i32
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 272, i32 noundef %29) #8
  %30 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i15, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i.i, align 1
  %34 = and i8 %33, 1
  %35 = zext i8 %34 to i32
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 273, i32 noundef %35) #8
  br label %resubmit.sink.split.sink.split

if.else:                                          ; preds = %sw.bb
  %conv.i17 = zext i8 %15 to i32
  %arrayidx2.i18 = getelementptr i8, ptr %13, i32 2
  %36 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx2.i18, align 2
  %conv3.i = zext i16 %37 to i32
  %arrayidx5.i = getelementptr i8, ptr %13, i32 4
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx5.i, align 2
  %conv7.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %13, align 1
  %42 = and i8 %41, 15
  %and.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i19 = icmp eq i8 %15, 0
  br i1 %cmp.not.i19, label %if.end20.thread89.i, label %switch.lookup

if.end20.thread89.i:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef 0) #8
  br label %if.end24.i

switch.lookup:                                    ; preds = %if.else
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.synusb_irq, i32 0, i32 %and.i
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep32 = getelementptr inbounds [16 x i32], ptr @switch.table.synusb_irq.22, i32 0, i32 %and.i
  %44 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load33 = load i32, ptr %switch.gep32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %15)
  %cmp13.i = icmp ugt i8 %15, 30
  br i1 %cmp13.i, label %switch.lookup.if.then23.sink.split.i_crit_edge, label %if.end16.i

switch.lookup.if.then23.sink.split.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.sink.split.i

if.end16.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %15)
  %cmp17.i = icmp ult i8 %15, 25
  br i1 %cmp17.i, label %if.end16.i.if.then23.sink.split.i_crit_edge, label %if.end16.i.if.then23.i_crit_edge

if.end16.i.if.then23.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

if.end16.i.if.then23.sink.split.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.sink.split.i

if.then23.sink.split.i:                           ; preds = %if.end16.i.if.then23.sink.split.i_crit_edge, %switch.lookup.if.then23.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %switch.lookup.if.then23.sink.split.i_crit_edge ], [ 0, %if.end16.i.if.then23.sink.split.i_crit_edge ]
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef %.sink.i) #8
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.then23.sink.split.i, %if.end16.i.if.then23.i_crit_edge
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 0, i32 noundef %conv3.i) #8
  %sub.i21 = sub nsw i32 5856, %conv7.i
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 1, i32 noundef %sub.i21) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end20.thread89.i
  %tool_width.0707488.i = phi i32 [ %switch.load33, %if.then23.i ], [ 0, %if.end20.thread89.i ]
  %num_fingers.0697686.i = phi i32 [ %switch.load, %if.then23.i ], [ 0, %if.end20.thread89.i ]
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 24, i32 noundef %conv.i17) #8
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 28, i32 noundef %tool_width.0707488.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fingers.0697686.i)
  %cmp25.i = icmp eq i32 %num_fingers.0697686.i, 1
  %lnot.ext.i.i = zext i1 %cmp25.i to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_fingers.0697686.i)
  %cmp27.i = icmp eq i32 %num_fingers.0697686.i, 2
  %lnot.ext.i63.i = zext i1 %cmp27.i to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i63.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_fingers.0697686.i)
  %cmp29.i = icmp eq i32 %num_fingers.0697686.i, 3
  %lnot.ext.i64.i = zext i1 %cmp29.i to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i64.i) #8
  %45 = ptrtoint ptr %input.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input.i14, align 4
  %47 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i15, align 4
  %arrayidx.i.i22 = getelementptr i8, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i22, align 1
  %51 = lshr i8 %50, 2
  %.lobit.i.i23 = and i8 %51, 1
  %52 = zext i8 %.lobit.i.i23 to i32
  tail call void @input_event(ptr noundef %46, i32 noundef 1, i32 noundef 272, i32 noundef %52) #8
  %53 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i15, align 4
  %arrayidx2.i.i24 = getelementptr i8, ptr %54, i32 1
  %55 = ptrtoint ptr %arrayidx2.i.i24 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx2.i.i24, align 1
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  tail call void @input_event(ptr noundef %46, i32 noundef 1, i32 noundef 273, i32 noundef %58) #8
  %59 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i15, align 4
  %arrayidx6.i.i25 = getelementptr i8, ptr %60, i32 1
  %61 = ptrtoint ptr %arrayidx6.i.i25 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx6.i.i25, align 1
  %63 = lshr i8 %62, 1
  %.lobit18.i.i26 = and i8 %63, 1
  %64 = zext i8 %.lobit18.i.i26 to i32
  tail call void @input_event(ptr noundef %46, i32 noundef 1, i32 noundef 274, i32 noundef %64) #8
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and31.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool.not.i, label %if.end24.i.resubmit.sink.split_crit_edge, label %if.end24.i.resubmit.sink.split.sink.split_crit_edge

if.end24.i.resubmit.sink.split.sink.split_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit.sink.split.sink.split

if.end24.i.resubmit.sink.split_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit.sink.split

resubmit.sink.split.sink.split:                   ; preds = %if.end24.i.resubmit.sink.split.sink.split_crit_edge, %synusb_report_stick.exit
  %.sink30 = phi i8 [ 1, %synusb_report_stick.exit ], [ 3, %if.end24.i.resubmit.sink.split.sink.split_crit_edge ]
  %.sink = phi ptr [ %23, %synusb_report_stick.exit ], [ %11, %if.end24.i.resubmit.sink.split.sink.split_crit_edge ]
  %67 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i15, align 4
  %arrayidx34.i = getelementptr i8, ptr %68, i32 1
  %69 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx34.i, align 1
  %71 = lshr i8 %70, %.sink30
  %.lobit.i = and i8 %71, 1
  %72 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %.sink, i32 noundef 1, i32 noundef 274, i32 noundef %72) #8
  br label %resubmit.sink.split

resubmit.sink.split:                              ; preds = %resubmit.sink.split.sink.split, %if.end24.i.resubmit.sink.split_crit_edge
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %resubmit

resubmit:                                         ; preds = %resubmit.sink.split, %entry.resubmit_crit_edge
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %73 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call, label %do.end [
    i32 0, label %resubmit.cleanup_crit_edge
    i32 -1, label %resubmit.cleanup_crit_edge36
  ]

resubmit.cleanup_crit_edge36:                     ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %resubmit.cleanup_crit_edge, %resubmit.cleanup_crit_edge36, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge34, %entry.cleanup_crit_edge35
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synusb_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %call5) #11
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %is_open = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_open, align 4
  br label %out

out:                                              ; preds = %if.end13, %do.end10
  %retval1.0 = phi i32 [ -5, %do.end10 ], [ 0, %if.end13 ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval1.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synusb_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #8
  %pm_mutex = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #8
  %urb = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #8
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  %is_open = getelementptr inbounds %struct.synusb, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_open, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_synaptics_usb__234_559_synusb_driver_init6, !1, !"__initcall__kmod_synaptics_usb__234_559_synusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 559, i32 1}
!2 = !{ptr @__exitcall_synusb_driver_exit, !1, !"__exitcall_synusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 561, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 565, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @synusb_driver, !12, !"synusb_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 546, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 304, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @synusb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @synusb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @synusb_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 324, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 362, i32 26}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 368, i32 5}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 373, i32 25}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 376, i32 24}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 431, i32 3}
!34 = !{ptr @synusb_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @synusb_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 218, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @synusb_irq._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @synusb_irq._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/usb.h", i32 912, i32 31}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 249, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @synusb_open._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @synusb_open._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 258, i32 3}
!50 = !{ptr @synusb_open._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @synusb_open._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @synusb_idtable, !53, !"synusb_idtable", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/synaptics_usb.c", i32 531, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
