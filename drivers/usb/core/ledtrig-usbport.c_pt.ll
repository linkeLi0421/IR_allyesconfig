; ModuleID = '/llk/IR_all_yes/drivers/usb/core/ledtrig-usbport.c_pt.bc'
source_filename = "../drivers/usb/core/ledtrig-usbport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbport_trig_data = type { ptr, %struct.list_head, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usbport_trig_port = type { ptr, ptr, i32, ptr, i8, %struct.device_attribute, %struct.list_head }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@usbport_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @usbport_trig_activate, ptr @usbport_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ledtrig_usbport__293_363_usbport_trig_init6 = internal global ptr @usbport_trig_init, section ".initcall6.init", align 4
@__exitcall_usbport_trig_exit = internal global ptr @usbport_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [58 x i8] c"ledtrig_usbport.author=Rafa\C5\82 Mi\C5\82ecki <rafal@milecki.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"ledtrig_usbport.description=USB port trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"ledtrig_usbport.file=drivers/usb/core/ledtrig-usbport\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [31 x i8] c"ledtrig_usbport.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbport\00", [24 x i8] zeroinitializer }, align 32
@ports_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.1, ptr null, ptr null, ptr @ports_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@ports_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-port%d\00", [22 x i8] zeroinitializer }, align 32
@usbport_trig_add_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"trigger-sources\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"#trigger-source-cells\00", [42 x i8] zeroinitializer }, align 32
@usbport_trig_port_observed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 157, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get trigger sources for %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usbport_trig_port_observed\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/core/ledtrig-usbport.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbport_trig_port_observed._entry_ptr = internal global ptr @usbport_trig_port_observed._entry, section ".printk_index", align 4
@usbport_trig_port_observed._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 170, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to get trigger source phandle at index %d: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usbport_trig_port_observed._entry_ptr.13 = internal global ptr @usbport_trig_port_observed._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"usbport_led_trigger\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 347, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 348, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"ports_group\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 117, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 118, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"ports_attrs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 113, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 212, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 153, i32 45 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 154, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 156, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 169, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 90, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 101, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 101, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 103, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [38 x i8] c"../drivers/usb/core/ledtrig-usbport.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 103, i32 45 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_usbport_trig_exit, ptr @__initcall__kmod_ledtrig_usbport__293_363_usbport_trig_init6, ptr @usbport_trig_exit, ptr @usbport_trig_port_observed._entry, ptr @usbport_trig_port_observed._entry.10, ptr @usbport_trig_port_observed._entry_ptr, ptr @usbport_trig_port_observed._entry_ptr.13, ptr @usbport_led_trigger, ptr @.str, ptr @ports_group, ptr @.str.1, ptr @ports_attrs, ptr @.str.2, ptr @usbport_trig_add_port.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbport_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbport_trig_add_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbport_trig_port_observed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbport_trig_port_observed._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbport_trig_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_trigger_unregister(ptr noundef nonnull @usbport_led_trigger) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @usbport_led_trigger) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_activate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %led_cdev, ptr %call7.i.i, align 8
  %ports = getelementptr inbounds %struct.usbport_trig_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.usbport_trig_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ports, ptr %prev.i, align 8
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @sysfs_create_group(ptr noundef %5, ptr noundef nonnull @ports_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_free

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @usb_for_each_dev(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @usbport_trig_add_usb_dev_ports) #11
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %count.i = getelementptr inbounds %struct.usbport_trig_data, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count.i, align 8
  %call.i = tail call i32 @usb_for_each_dev(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @usbport_trig_usb_dev_check) #11
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 255
  tail call void @led_set_brightness(ptr noundef %7, i32 noundef %cond.i) #11
  %nb = getelementptr inbounds %struct.usbport_trig_data, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @usbport_trig_notify, ptr %nb, align 4
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %12 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  tail call void @usb_register_notify(ptr noundef %nb) #11
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_free ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbport_trig_deactivate(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %ports = getelementptr inbounds %struct.usbport_trig_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %cmp.not22 = icmp eq ptr %3, %ports
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %usbport_trig_remove_port.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %usbport_trig_remove_port.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn.in23, i32 -48
  %4 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.usbport_trig_remove_port.exit_crit_edge

for.body.usbport_trig_remove_port.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_remove_port.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in23, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %usbport_trig_remove_port.exit

usbport_trig_remove_port.exit:                    ; preds = %if.end.i.i.i, %for.body.usbport_trig_remove_port.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in23, i32 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 11
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %attr.i = getelementptr i8, ptr %.pn.in23, i32 -28
  tail call void @sysfs_remove_file_from_group(ptr noundef %16, ptr noundef %attr.i, ptr noundef nonnull @.str.1) #11
  %port_name.i = getelementptr i8, ptr %.pn.in23, i32 -36
  %17 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_name.i, align 4
  tail call void @kfree(ptr noundef %18) #11
  tail call void @kfree(ptr noundef %port.0) #11
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %usbport_trig_remove_port.exit.for.end_crit_edge, label %usbport_trig_remove_port.exit.for.body_crit_edge

usbport_trig_remove_port.exit.for.body_crit_edge: ; preds = %usbport_trig_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

usbport_trig_remove_port.exit.for.end_crit_edge:  ; preds = %usbport_trig_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %usbport_trig_remove_port.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %20, ptr noundef nonnull @ports_group) #11
  %nb = getelementptr inbounds %struct.usbport_trig_data, ptr %1, i32 0, i32 2
  tail call void @usb_unregister_notify(ptr noundef %nb) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_add_usb_dev_ports(ptr noundef %usb_dev, ptr noundef %data) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 35
  %0 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxchild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not8 = icmp slt i32 %1, 1
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15, i32 3
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  %ports.i = getelementptr inbounds %struct.usbport_trig_data, ptr %data, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.usbport_trig_data, ptr %data, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %usbport_trig_add_port.exit.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %usbport_trig_add_port.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.dev_name.exit_crit_edge

for.body.dev_name.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %for.body.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 56) #14
  %tobool.not.i6 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i6, label %dev_name.exit.usbport_trig_add_port.exit_crit_edge, label %if.end.i7

dev_name.exit.usbport_trig_add_port.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_add_port.exit

if.end.i7:                                        ; preds = %dev_name.exit
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %call7.i.i.i, align 8
  %hub.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %hub.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %usb_dev, ptr %hub.i, align 4
  %portnum2.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %portnum2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.09, ptr %portnum2.i, align 8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %dev1.i.i = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #11
  %18 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i7.usbport_trig_port_observed.exit.i_crit_edge, label %if.end.i.i

if.end.i7.usbport_trig_port_observed.exit.i_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_port_observed.exit.i

if.end.i.i:                                       ; preds = %if.end.i7
  %call.i.i = call ptr @usb_of_get_device_node(ptr noundef %usb_dev, i32 noundef %i.09) #11
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.usbport_trig_port_observed.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.usbport_trig_port_observed.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_port_observed.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @of_node_put(ptr noundef nonnull %call.i.i) #11
  %call5.i.i = call i32 @of_count_phandle_with_args(ptr noundef nonnull %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp839.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp839.not.i.i, label %for.cond.preheader.i.i.usbport_trig_port_observed.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.usbport_trig_port_observed.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_port_observed.exit.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef nonnull %17) #15
  br label %usbport_trig_port_observed.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.040.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %i.040.i.i, ptr noundef nonnull %args.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %i.040.i.i, i32 noundef %call.i.i.i) #15
  br label %for.inc.i.i

if.end15.i.i:                                     ; preds = %for.body.i.i
  %19 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i.i, align 4
  call void @of_node_put(ptr noundef %20) #11
  %21 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i.i, align 4
  %cmp17.i.i = icmp eq ptr %22, %call.i.i
  br i1 %cmp17.i.i, label %if.end15.i.i.usbport_trig_port_observed.exit.i_crit_edge, label %if.end15.i.i.for.inc.i.i_crit_edge

if.end15.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end15.i.i.usbport_trig_port_observed.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_port_observed.exit.i

for.inc.i.i:                                      ; preds = %if.end15.i.i.for.inc.i.i_crit_edge, %do.end14.i.i
  %inc.i.i = add nuw nsw i32 %i.040.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call5.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.usbport_trig_port_observed.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.usbport_trig_port_observed.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_port_observed.exit.i

usbport_trig_port_observed.exit.i:                ; preds = %for.inc.i.i.usbport_trig_port_observed.exit.i_crit_edge, %if.end15.i.i.usbport_trig_port_observed.exit.i_crit_edge, %do.end.i.i, %for.cond.preheader.i.i.usbport_trig_port_observed.exit.i_crit_edge, %if.end.i.i.usbport_trig_port_observed.exit.i_crit_edge, %if.end.i7.usbport_trig_port_observed.exit.i_crit_edge
  %retval.2.i.i = phi i1 [ false, %do.end.i.i ], [ false, %if.end.i7.usbport_trig_port_observed.exit.i_crit_edge ], [ false, %if.end.i.i.usbport_trig_port_observed.exit.i_crit_edge ], [ false, %for.cond.preheader.i.i.usbport_trig_port_observed.exit.i_crit_edge ], [ false, %for.inc.i.i.usbport_trig_port_observed.exit.i_crit_edge ], [ true, %if.end15.i.i.usbport_trig_port_observed.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #11
  %observed.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 4
  %frombool.i = zext i1 %retval.2.i.i to i8
  %23 = ptrtoint ptr %observed.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %observed.i, align 8
  %call4.i = call i32 @strlen(ptr noundef %retval.0.i) #16
  %add.i = add i32 %call4.i, 8
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %port_name.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i.i, ptr %port_name.i, align 4
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %usbport_trig_port_observed.exit.i.err_free_port.i_crit_edge, label %if.end9.i

usbport_trig_port_observed.exit.i.err_free_port.i_crit_edge: ; preds = %usbport_trig_port_observed.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_port.i

if.end9.i:                                        ; preds = %usbport_trig_port_observed.exit.i
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i, i32 noundef %i.09) #11
  %attr.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 5
  %key.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 3
  %25 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @usbport_trig_add_port.__key, ptr %key.i, align 4
  %26 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_name.i, align 4
  %28 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %attr.i, align 4
  %mode.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 384, ptr %mode.i, align 8
  %show.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usbport_trig_port_show, ptr %show.i, align 8
  %store.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @usbport_trig_port_store, ptr %store.i, align 4
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 11
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call22.i = call i32 @sysfs_add_file_to_group(ptr noundef %33, ptr noundef %attr.i, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %err_free_port_name.i

if.end25.i:                                       ; preds = %if.end9.i
  %list.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %call.i.i2.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %35, ptr noundef %ports.i) #11
  br i1 %call.i.i2.i, label %if.end.i.i3.i, label %if.end25.i.usbport_trig_add_port.exit_crit_edge

if.end25.i.usbport_trig_add_port.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_add_port.exit

if.end.i.i3.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ports.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.usbport_trig_port, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i, ptr %35, align 4
  br label %usbport_trig_add_port.exit

err_free_port_name.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_name.i, align 4
  call void @kfree(ptr noundef %41) #11
  br label %err_free_port.i

err_free_port.i:                                  ; preds = %err_free_port_name.i, %usbport_trig_port_observed.exit.i.err_free_port.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %usbport_trig_add_port.exit

usbport_trig_add_port.exit:                       ; preds = %err_free_port.i, %if.end.i.i3.i, %if.end25.i.usbport_trig_add_port.exit_crit_edge, %dev_name.exit.usbport_trig_add_port.exit_crit_edge
  %inc = add i32 %i.09, 1
  %42 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxchild, align 4
  %cmp.not = icmp sgt i32 %inc, %43
  br i1 %cmp.not, label %usbport_trig_add_port.exit.for.end_crit_edge, label %usbport_trig_add_port.exit.for.body_crit_edge

usbport_trig_add_port.exit.for.body_crit_edge:    ; preds = %usbport_trig_add_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

usbport_trig_add_port.exit.for.end_crit_edge:     ; preds = %usbport_trig_add_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %usbport_trig_add_port.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_notify(ptr noundef %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.usbport_trig_usb_dev_observed.exit_crit_edge, label %if.end.i

entry.usbport_trig_usb_dev_observed.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_usb_dev_observed.exit

if.end.i:                                         ; preds = %entry
  %ports.i = getelementptr i8, ptr %nb, i32 -8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn23.i = load ptr, ptr %ports.i, align 4
  %cmp.not24.i = icmp eq ptr %.pn23.i, %ports.i
  br i1 %cmp.not24.i, label %if.end.i.usbport_trig_usb_dev_observed.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.usbport_trig_usb_dev_observed.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_usb_dev_observed.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %portnum.i = getelementptr inbounds %struct.usb_device, ptr %data, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn25.i = phi ptr [ %.pn23.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %hub.i = getelementptr i8, ptr %.pn25.i, i32 -44
  %5 = ptrtoint ptr %hub.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hub.i, align 4
  %cmp3.i = icmp eq ptr %3, %6
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %7 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %8 to i32
  %portnum4.i = getelementptr i8, ptr %.pn25.i, i32 -40
  %9 = ptrtoint ptr %portnum4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portnum4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp5.i = icmp eq i32 %10, %conv.i
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %observed.i = getelementptr i8, ptr %.pn25.i, i32 -32
  %11 = ptrtoint ptr %observed.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %observed.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.i = icmp ne i8 %12, 0
  br label %usbport_trig_usb_dev_observed.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.usbport_trig_usb_dev_observed.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.usbport_trig_usb_dev_observed.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_usb_dev_observed.exit

usbport_trig_usb_dev_observed.exit:               ; preds = %for.inc.i.usbport_trig_usb_dev_observed.exit_crit_edge, %if.then7.i, %if.end.i.usbport_trig_usb_dev_observed.exit_crit_edge, %entry.usbport_trig_usb_dev_observed.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool8.i, %if.then7.i ], [ false, %entry.usbport_trig_usb_dev_observed.exit_crit_edge ], [ false, %if.end.i.usbport_trig_usb_dev_observed.exit_crit_edge ], [ false, %for.inc.i.usbport_trig_usb_dev_observed.exit_crit_edge ]
  %14 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %usbport_trig_usb_dev_observed.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

usbport_trig_usb_dev_observed.exit.cleanup_crit_edge: ; preds = %usbport_trig_usb_dev_observed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %usbport_trig_usb_dev_observed.exit
  %call2 = tail call i32 @usbport_trig_add_usb_dev_ports(ptr noundef %data, ptr noundef %add.ptr)
  br i1 %retval.0.i, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %count = getelementptr i8, ptr %nb, i32 12
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %usbport_trig_usb_dev_observed.exit
  %ports.i22 = getelementptr i8, ptr %nb, i32 -8
  %17 = ptrtoint ptr %ports.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports.i22, align 4
  %cmp.not23.i = icmp eq ptr %18, %ports.i22
  br i1 %cmp.not23.i, label %sw.bb3.usbport_trig_remove_usb_dev_ports.exit_crit_edge, label %sw.bb3.for.body.i24_crit_edge

sw.bb3.for.body.i24_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i24

sw.bb3.usbport_trig_remove_usb_dev_ports.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_remove_usb_dev_ports.exit

for.body.i24:                                     ; preds = %for.inc.i26.for.body.i24_crit_edge, %sw.bb3.for.body.i24_crit_edge
  %.pn.in24.i = phi ptr [ %.pn27.i, %for.inc.i26.for.body.i24_crit_edge ], [ %18, %sw.bb3.for.body.i24_crit_edge ]
  %port.026.i = getelementptr i8, ptr %.pn.in24.i, i32 -48
  %19 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn27.i = load ptr, ptr %.pn.in24.i, align 4
  %hub.i23 = getelementptr i8, ptr %.pn.in24.i, i32 -44
  %20 = ptrtoint ptr %hub.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hub.i23, align 4
  %cmp8.i = icmp eq ptr %21, %data
  br i1 %cmp8.i, label %if.then.i, label %for.body.i24.for.inc.i26_crit_edge

for.body.i24.for.inc.i26_crit_edge:               ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i26

if.then.i:                                        ; preds = %for.body.i24
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.usbport_trig_remove_port.exit.i_crit_edge

if.then.i.usbport_trig_remove_port.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_remove_port.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in24.i, i32 4
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %usbport_trig_remove_port.exit.i

usbport_trig_remove_port.exit.i:                  ; preds = %if.end.i.i.i.i, %if.then.i.usbport_trig_remove_port.exit.i_crit_edge
  %30 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in24.i, i32 4
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.led_classdev, ptr %23, i32 0, i32 11
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %attr.i.i = getelementptr i8, ptr %.pn.in24.i, i32 -28
  tail call void @sysfs_remove_file_from_group(ptr noundef %33, ptr noundef %attr.i.i, ptr noundef nonnull @.str.1) #11
  %port_name.i.i = getelementptr i8, ptr %.pn.in24.i, i32 -36
  %34 = ptrtoint ptr %port_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_name.i.i, align 4
  tail call void @kfree(ptr noundef %35) #11
  tail call void @kfree(ptr noundef %port.026.i) #11
  br label %for.inc.i26

for.inc.i26:                                      ; preds = %usbport_trig_remove_port.exit.i, %for.body.i24.for.inc.i26_crit_edge
  %cmp.not.i25 = icmp eq ptr %.pn27.i, %ports.i22
  br i1 %cmp.not.i25, label %for.inc.i26.usbport_trig_remove_usb_dev_ports.exit_crit_edge, label %for.inc.i26.for.body.i24_crit_edge

for.inc.i26.for.body.i24_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i24

for.inc.i26.usbport_trig_remove_usb_dev_ports.exit_crit_edge: ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %usbport_trig_remove_usb_dev_ports.exit

usbport_trig_remove_usb_dev_ports.exit:           ; preds = %for.inc.i26.usbport_trig_remove_usb_dev_ports.exit_crit_edge, %sw.bb3.usbport_trig_remove_usb_dev_ports.exit_crit_edge
  br i1 %retval.0.i, label %land.lhs.true5, label %usbport_trig_remove_usb_dev_ports.exit.cleanup_crit_edge

usbport_trig_remove_usb_dev_ports.exit.cleanup_crit_edge: ; preds = %usbport_trig_remove_usb_dev_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %usbport_trig_remove_usb_dev_ports.exit
  %count6 = getelementptr i8, ptr %nb, i32 12
  %36 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count6, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %land.lhs.true5.cleanup.sink.split_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true5.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 255, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true5.cleanup.sink.split_crit_edge ]
  tail call void @led_set_brightness(ptr noundef %1, i32 noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true5.cleanup_crit_edge, %usbport_trig_remove_usb_dev_ports.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %usbport_trig_usb_dev_observed.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %land.lhs.true5.cleanup_crit_edge ], [ 1, %usbport_trig_remove_usb_dev_ports.exit.cleanup_crit_edge ], [ 0, %usbport_trig_usb_dev_observed.exit.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_register_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_port_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %observed = getelementptr i8, ptr %attr, i32 -4
  %0 = ptrtoint ptr %observed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %observed, align 4, !range !61
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %2)
  %add = add i32 %call, 1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_port_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -20
  %call = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(2) @.str.15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %lor.lhs.false

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end11_crit_edge, label %if.else

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(2) @.str.17) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end11_crit_edge, label %lor.lhs.false5

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

lor.lhs.false5:                                   ; preds = %if.else
  %call6 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.18) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false5.if.end11_crit_edge, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5.if.end11_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false5.if.end11_crit_edge, %if.else.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge, %entry.if.end11_crit_edge
  %.sink = phi i8 [ 0, %lor.lhs.false.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ], [ 1, %lor.lhs.false5.if.end11_crit_edge ], [ 1, %if.else.if.end11_crit_edge ]
  %observed9 = getelementptr i8, ptr %attr, i32 -4
  %0 = ptrtoint ptr %observed9 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %observed9, align 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %count.i = getelementptr inbounds %struct.usbport_trig_data, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %count.i, align 4
  %call.i = tail call i32 @usb_for_each_dev(ptr noundef %2, ptr noundef nonnull @usbport_trig_usb_dev_check) #11
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 255
  tail call void @led_set_brightness(ptr noundef %4, i32 noundef %cond.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false5.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end11 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_device_node(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbport_trig_usb_dev_check(ptr nocapture noundef readonly %usb_dev, ptr noundef %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 11
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ports.i = getelementptr inbounds %struct.usbport_trig_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn23.i = load ptr, ptr %ports.i, align 4
  %cmp.not24.i = icmp eq ptr %.pn23.i, %ports.i
  br i1 %cmp.not24.i, label %if.end.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %portnum.i = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn25.i = phi ptr [ %.pn23.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %hub.i = getelementptr i8, ptr %.pn25.i, i32 -44
  %3 = ptrtoint ptr %hub.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hub.i, align 4
  %cmp3.i = icmp eq ptr %1, %4
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %6 to i32
  %portnum4.i = getelementptr i8, ptr %.pn25.i, i32 -40
  %7 = ptrtoint ptr %portnum4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portnum4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp5.i = icmp eq i32 %8, %conv.i
  br i1 %cmp5.i, label %usbport_trig_usb_dev_observed.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

usbport_trig_usb_dev_observed.exit:               ; preds = %land.lhs.true.i
  %observed.i = getelementptr i8, ptr %.pn25.i, i32 -32
  %10 = ptrtoint ptr %observed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %observed.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.i.not = icmp eq i8 %11, 0
  br i1 %tobool8.i.not, label %usbport_trig_usb_dev_observed.exit.if.end_crit_edge, label %if.then

usbport_trig_usb_dev_observed.exit.if.end_crit_edge: ; preds = %usbport_trig_usb_dev_observed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %usbport_trig_usb_dev_observed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.usbport_trig_data, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %usbport_trig_usb_dev_observed.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unregister_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_ledtrig_usbport__293_363_usbport_trig_init6, !1, !"__initcall__kmod_ledtrig_usbport__293_363_usbport_trig_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_usbport_trig_exit, !3, !"__exitcall_usbport_trig_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 364, i32 1}
!4 = !{ptr @__UNIQUE_ID_author294, !5, !"__UNIQUE_ID_author294", i1 false, i1 false}
!5 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 366, i32 1}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 367, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 368, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 348, i32 14}
!13 = !{ptr @usbport_led_trigger, !14, !"usbport_led_trigger", i1 false, i1 false}
!14 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 347, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 118, i32 10}
!17 = !{ptr @ports_group, !18, !"ports_group", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 117, i32 37}
!19 = !{ptr @ports_attrs, !20, !"ports_attrs", i1 false, i1 false}
!20 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 113, i32 26}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 210, i32 33}
!23 = !{ptr @usbport_trig_add_port.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 212, i32 2}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 153, i32 45}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 154, i32 9}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 156, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @usbport_trig_port_observed._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @usbport_trig_port_observed._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 169, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @usbport_trig_port_observed._entry.10, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @usbport_trig_port_observed._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 90, i32 22}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 101, i32 19}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 101, i32 40}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 103, i32 24}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/core/ledtrig-usbport.c", i32 103, i32 45}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
