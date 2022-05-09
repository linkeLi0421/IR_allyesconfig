; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/usbsevseg.c_pt.bc'
source_filename = "../drivers/usb/misc/usbsevseg.c"
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
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_sevsegdev = type { ptr, ptr, i8, i8, i8, [8 x i8], i8, [8 x i8], i16, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_usbsevseg__236_392_sevseg_driver_init6 = internal global ptr @sevseg_driver_init, section ".initcall6.init", align 4
@sevseg_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sevseg_probe, ptr @sevseg_disconnect, ptr null, ptr @sevseg_suspend, ptr @sevseg_resume, ptr @sevseg_reset_resume, ptr null, ptr null, ptr @id_table, ptr @sevseg_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sevseg_driver_exit = internal global ptr @sevseg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [59 x i8] c"usbsevseg.author=Harrison Metzger <harrisonmetz@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"usbsevseg.description=USB 7 Segment Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"usbsevseg.file=drivers/usb/misc/usbsevseg\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"usbsevseg.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbsevseg\00", [22 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4037, i16 4647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sevseg_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sevseg_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sevseg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"USB 7 Segment device now attached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sevseg_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/misc/usbsevseg.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sevseg_probe._entry_ptr = internal global ptr @sevseg_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sevseg_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USB 7 Segment now disconnected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sevseg_disconnect\00", [46 x i8] zeroinitializer }, align 32
@sevseg_disconnect._entry_ptr = internal global ptr @sevseg_disconnect._entry, section ".printk_index", align 4
@update_display_mode.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_display_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mode retval = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@update_display_visual.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update_display_visual\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write retval = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@update_display_visual.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"decimal retval = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sevseg_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sevseg_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sevseg_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_powered, ptr @dev_attr_text, ptr @dev_attr_textmode, ptr @dev_attr_decimals, ptr @dev_attr_mode_msb, ptr @dev_attr_mode_lsb, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_powered = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powered_show, ptr @powered_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_text = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @text_show, ptr @text_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_textmode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @textmode_show, ptr @textmode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_decimals = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @decimals_show, ptr @decimals_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode_msb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_msb_show, ptr @mode_msb_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode_lsb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_lsb_show, ptr @mode_lsb_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powered\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@update_display_powered.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_display_powered\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power retval = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"text\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"textmode\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" [\00", [29 x i8] zeroinitializer }, align 32
@display_textmodes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"] \00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hex\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ascii\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"decimals\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode_msb\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode_lsb\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"sevseg_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 380, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 392, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 25, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"sevseg_groups\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 328, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 343, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 103, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 126, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 138, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"sevseg_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 302, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"sevseg_attrs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 293, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"dev_attr_powered\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"dev_attr_text\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"dev_attr_textmode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"dev_attr_decimals\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"dev_attr_mode_msb\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"dev_attr_mode_lsb\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 289, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 82, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 193, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 170, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 286, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 255, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"display_textmodes\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 257, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 50 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 32, i32 57 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 242, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 290, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [32 x i8] c"../drivers/usb/misc/usbsevseg.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 291, i32 1 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sevseg_driver_exit, ptr @__initcall__kmod_usbsevseg__236_392_sevseg_driver_init6, ptr @sevseg_disconnect._entry, ptr @sevseg_disconnect._entry_ptr, ptr @sevseg_driver_exit, ptr @sevseg_probe._entry, ptr @sevseg_probe._entry_ptr, ptr @sevseg_driver, ptr @.str, ptr @id_table, ptr @sevseg_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @sevseg_group, ptr @sevseg_attrs, ptr @dev_attr_powered, ptr @dev_attr_text, ptr @dev_attr_textmode, ptr @dev_attr_decimals, ptr @dev_attr_mode_msb, ptr @dev_attr_mode_lsb, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @display_textmodes, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sevseg_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_powered to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_textmode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_decimals to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode_msb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode_lsb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_textmodes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sevseg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sevseg_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sevseg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @sevseg_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sevseg_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call2 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #12
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call7.i.i, align 8
  %intf = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %interface, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %shadow_power to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %shadow_power, align 2
  %has_interface_pm = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %has_interface_pm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %has_interface_pm, align 1
  %textmode = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %textmode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %textmode, align 1
  %mode_msb = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %mode_msb to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %mode_msb, align 1
  %mode_lsb = getelementptr inbounds %struct.usb_sevsegdev, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %mode_lsb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 63, ptr %mode_lsb, align 2
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sevseg_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %1) #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sevseg_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shadow_power to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %shadow_power, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sevseg_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shadow_power to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %shadow_power, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mode_msb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mode_msb.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode_msb.i, align 1
  %conv2.i = zext i8 %6 to i16
  %mul.i = shl nuw i16 %conv2.i, 8
  %mode_lsb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %mode_lsb.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode_lsb.i, align 2
  %conv3.i = zext i8 %8 to i16
  %add.i = or i16 %mul.i, %conv3.i
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 21002, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.update_display_mode.exit_crit_edge

if.end.i.update_display_mode.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_mode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sevseg_resume, %if.then11.i)) #12
          to label %update_display_mode.exit [label %if.then11.i], !srcloc !94

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_mode.__UNIQUE_ID_ddebug233, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %call.i) #12
  br label %update_display_mode.exit

update_display_mode.exit:                         ; preds = %if.then11.i, %do.body.i, %if.end.i.update_display_mode.exit_crit_edge
  tail call fastcc void @update_display_visual(ptr noundef %1, i32 noundef 3072)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sevseg_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shadow_power to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %shadow_power, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mode_msb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mode_msb.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode_msb.i, align 1
  %conv2.i = zext i8 %6 to i16
  %mul.i = shl nuw i16 %conv2.i, 8
  %mode_lsb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %mode_lsb.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode_lsb.i, align 2
  %conv3.i = zext i8 %8 to i16
  %add.i = or i16 %mul.i, %conv3.i
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 21002, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.update_display_mode.exit_crit_edge

if.end.i.update_display_mode.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_mode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sevseg_reset_resume, %if.then11.i)) #12
          to label %update_display_mode.exit [label %if.then11.i], !srcloc !94

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_mode.__UNIQUE_ID_ddebug233, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %call.i) #12
  br label %update_display_mode.exit

update_display_mode.exit:                         ; preds = %if.then11.i, %do.body.i, %if.end.i.update_display_mode.exit_crit_edge
  tail call fastcc void @update_display_visual(ptr noundef %1, i32 noundef 3072)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_display_visual(ptr nocapture noundef readonly %mydev, i32 noundef %mf) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #12
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %buffer, align 8
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 9
  %1 = ptrtoint ptr %shadow_power to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %shadow_power, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %textlength = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 8
  %3 = ptrtoint ptr %textlength to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %textlength, align 4
  %conv2 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp391.not = icmp eq i16 %4, 0
  br i1 %cmp391.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = xor i32 %i.092, -1
  %sub7 = add nsw i32 %conv2, %5
  %arrayidx = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 7, i32 %sub7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr [8 x i8], ptr %buffer, i32 0, i32 %i.092
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx8, align 1
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mydev, align 4
  %textmode = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 6
  %11 = ptrtoint ptr %textmode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %textmode, align 1
  %conv10 = zext i8 %12 to i16
  %call = call i32 @usb_control_msg_send(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 21770, i16 noundef zeroext %conv10, ptr noundef nonnull %buffer, i16 noundef zeroext %4, i32 noundef 2000, i32 noundef %mf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %do.body, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_visual.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_display_visual, %if.then18)) #12
          to label %if.end21 [label %if.then18], !srcloc !94

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mydev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_visual.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body, %for.end.if.end21_crit_edge
  %arrayidx27 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 0
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %arrayidx27.1 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx27.1, align 1
  %shl.1 = shl i8 %18, 1
  %conv30.1 = or i8 %16, %shl.1
  %arrayidx27.2 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27.2, align 1
  %shl.2 = shl i8 %20, 2
  %conv30.2 = or i8 %conv30.1, %shl.2
  %arrayidx27.3 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27.3, align 1
  %shl.3 = shl i8 %22, 3
  %conv30.3 = or i8 %conv30.2, %shl.3
  %arrayidx27.4 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx27.4, align 1
  %shl.4 = shl i8 %24, 4
  %conv30.4 = or i8 %conv30.3, %shl.4
  %arrayidx27.5 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx27.5, align 1
  %shl.5 = shl i8 %26, 5
  %conv30.5 = or i8 %conv30.4, %shl.5
  %arrayidx27.6 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 6
  %27 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27.6, align 1
  %shl.6 = shl i8 %28, 6
  %conv30.6 = or i8 %conv30.5, %shl.6
  %arrayidx27.7 = getelementptr %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 5, i32 7
  %29 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27.7, align 1
  %shl.7 = shl i8 %30, 7
  %conv30.7 = or i8 %conv30.6, %shl.7
  %31 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mydev, align 4
  %conv37 = zext i8 %conv30.7 to i16
  %call38 = call i32 @usb_control_msg_send(ptr noundef %32, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 22026, i16 noundef zeroext %conv37, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef %mf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.body42, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_visual.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_display_visual, %if.then54)) #12
          to label %cleanup [label %if.then54], !srcloc !94

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mydev, align 4
  %dev56 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_visual.__UNIQUE_ID_ddebug235, ptr noundef %dev56, ptr noundef nonnull @.str.12, i32 noundef %call38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body42, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powered_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %powered = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powered_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #12
  %conv = trunc i32 %call1 to i8
  %powered = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %powered, align 4
  tail call fastcc void @update_display_powered(ptr noundef %1)
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_display_powered(ptr nocapture noundef %mydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 2
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %has_interface_pm = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 10
  %2 = ptrtoint ptr %has_interface_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_interface_pm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %intf = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %has_interface_pm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %has_interface_pm, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %shadow_power = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 9
  %7 = ptrtoint ptr %shadow_power to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shadow_power, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp7.not = icmp eq i8 %8, 1
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mydev, align 4
  %11 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp ne i8 %12, 0
  %conv14 = zext i1 %tobool13.not to i16
  %call15 = tail call i32 @usb_control_msg_send(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 20490, i16 noundef zeroext %conv14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body, label %if.end10.if.end26_crit_edge

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_powered.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_display_powered, %if.then23)) #12
          to label %if.end26 [label %if.then23], !srcloc !94

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %mydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mydev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_powered.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call15) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.body, %if.end10.if.end26_crit_edge
  %15 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end26
  %has_interface_pm30 = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 10
  %17 = ptrtoint ptr %has_interface_pm30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_interface_pm30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool32.not = icmp eq i8 %18, 0
  br i1 %tobool32.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then33

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %intf34 = getelementptr inbounds %struct.usb_sevsegdev, ptr %mydev, i32 0, i32 1
  %19 = ptrtoint ptr %intf34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf34, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %20) #12
  %21 = ptrtoint ptr %has_interface_pm30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %has_interface_pm30, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %land.lhs.true29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @text_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %textlength = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %textlength to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %textlength, align 4
  %conv = zext i16 %3 to i32
  %text = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 7
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %conv, ptr noundef nonnull @.str.18, ptr noundef %text)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @text_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not.i = icmp eq i32 %count, 0
  br i1 %cmp.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1.i = icmp eq i8 %3, 10
  br i1 %cmp1.i, label %land.lhs.true.i.my_memlen.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i.my_memlen.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %my_memlen.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %my_memlen.exit

my_memlen.exit:                                   ; preds = %if.else.i, %land.lhs.true.i.my_memlen.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.else.i ], [ %sub.i, %land.lhs.true.i.my_memlen.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 8
  br i1 %cmp, label %my_memlen.exit.cleanup_crit_edge, label %if.end

my_memlen.exit.cleanup_crit_edge:                 ; preds = %my_memlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %my_memlen.exit
  %text = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %text to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %text, align 4
  %conv = trunc i32 %retval.0.i to i16
  %textlength = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %textlength to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %textlength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = call ptr @memcpy(ptr %text, ptr %buf, i32 %retval.0.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call fastcc void @update_display_visual(ptr noundef %1, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %my_memlen.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %my_memlen.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @textmode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %textmode = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %textmode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %textmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  %strlen29 = tail call i32 @strlen(ptr %buf) #17
  %endptr30 = getelementptr i8, ptr %buf, i32 %strlen29
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memcpy(ptr %endptr30, ptr @.str.20, i32 3)
  %6 = load ptr, ptr @display_textmodes, align 4
  %call5 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %6)
  %strlen31 = tail call i32 @strlen(ptr %buf) #17
  %endptr32 = getelementptr i8, ptr %buf, i32 %strlen31
  %7 = call ptr @memcpy(ptr %endptr32, ptr @.str.21, i32 3)
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %endptr30 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 8192, ptr %endptr30, align 1
  %9 = load ptr, ptr @display_textmodes, align 4
  %call9 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %9)
  %strlen27 = tail call i32 @strlen(ptr %buf) #17
  %endptr28 = getelementptr i8, ptr %buf, i32 %strlen27
  %10 = ptrtoint ptr %endptr28 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 8192, ptr %endptr28, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %11 = ptrtoint ptr %textmode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %textmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp1.1 = icmp eq i8 %12, 1
  %strlen29.1 = tail call i32 @strlen(ptr %buf) #17
  %endptr30.1 = getelementptr i8, ptr %buf, i32 %strlen29.1
  br i1 %cmp1.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %endptr30.1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 8192, ptr %endptr30.1, align 1
  %14 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @display_textmodes, i32 0, i32 1), align 4
  %call9.1 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %14)
  %strlen27.1 = tail call i32 @strlen(ptr %buf) #17
  %endptr28.1 = getelementptr i8, ptr %buf, i32 %strlen27.1
  %15 = ptrtoint ptr %endptr28.1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 8192, ptr %endptr28.1, align 1
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %16 = call ptr @memcpy(ptr %endptr30.1, ptr @.str.20, i32 3)
  %17 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @display_textmodes, i32 0, i32 1), align 4
  %call5.1 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %17)
  %strlen31.1 = tail call i32 @strlen(ptr %buf) #17
  %endptr32.1 = getelementptr i8, ptr %buf, i32 %strlen31.1
  %18 = call ptr @memcpy(ptr %endptr32.1, ptr @.str.21, i32 3)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %if.else.1
  %19 = ptrtoint ptr %textmode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %textmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp1.2 = icmp eq i8 %20, 2
  %strlen29.2 = tail call i32 @strlen(ptr %buf) #17
  %endptr30.2 = getelementptr i8, ptr %buf, i32 %strlen29.2
  br i1 %cmp1.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %endptr30.2 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 8192, ptr %endptr30.2, align 1
  %22 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @display_textmodes, i32 0, i32 2), align 4
  %call9.2 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %22)
  %strlen27.2 = tail call i32 @strlen(ptr %buf) #17
  %endptr28.2 = getelementptr i8, ptr %buf, i32 %strlen27.2
  %23 = ptrtoint ptr %endptr28.2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 8192, ptr %endptr28.2, align 1
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %24 = call ptr @memcpy(ptr %endptr30.2, ptr @.str.20, i32 3)
  %25 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @display_textmodes, i32 0, i32 2), align 4
  %call5.2 = tail call ptr @strcat(ptr noundef %buf, ptr noundef %25)
  %strlen31.2 = tail call i32 @strlen(ptr %buf) #17
  %endptr32.2 = getelementptr i8, ptr %buf, i32 %strlen31.2
  %26 = call ptr @memcpy(ptr %endptr32.2, ptr @.str.21, i32 3)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %if.else.2
  %strlen = tail call i32 @strlen(ptr %buf) #17
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %27 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call12 = tail call i32 @strlen(ptr noundef %buf) #17
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @textmode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @display_textmodes, i32 noundef 3, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %call1 to i8
  %textmode = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %textmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %textmode, align 1
  tail call fastcc void @update_display_visual(ptr noundef %1, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decimals_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 1
  %switch.select = select i1 %switch.selectcmp, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.selectcmp33 = icmp eq i8 %3, 0
  %switch.select34 = select i1 %switch.selectcmp33, i8 48, i8 %switch.select
  %arrayidx3 = getelementptr i8, ptr %buf, i32 7
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %switch.select34, ptr %arrayidx3, align 1
  %arrayidx.1 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp47 = icmp eq i8 %6, 1
  %switch.select48 = select i1 %switch.selectcmp47, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.selectcmp49 = icmp eq i8 %6, 0
  %switch.select50 = select i1 %switch.selectcmp49, i8 48, i8 %switch.select48
  %arrayidx12.1 = getelementptr i8, ptr %buf, i32 6
  %7 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.select50, ptr %arrayidx12.1, align 1
  %arrayidx.2 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %switch.selectcmp35 = icmp eq i8 %9, 1
  %switch.select36 = select i1 %switch.selectcmp35, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.selectcmp37 = icmp eq i8 %9, 0
  %switch.select38 = select i1 %switch.selectcmp37, i8 48, i8 %switch.select36
  %arrayidx12.2 = getelementptr i8, ptr %buf, i32 5
  %10 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %switch.select38, ptr %arrayidx12.2, align 1
  %arrayidx.3 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %switch.selectcmp55 = icmp eq i8 %12, 1
  %switch.select56 = select i1 %switch.selectcmp55, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.selectcmp57 = icmp eq i8 %12, 0
  %switch.select58 = select i1 %switch.selectcmp57, i8 48, i8 %switch.select56
  %arrayidx12.3 = getelementptr i8, ptr %buf, i32 4
  %13 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %switch.select58, ptr %arrayidx12.3, align 1
  %arrayidx.4 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %switch.selectcmp39 = icmp eq i8 %15, 1
  %switch.select40 = select i1 %switch.selectcmp39, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.selectcmp41 = icmp eq i8 %15, 0
  %switch.select42 = select i1 %switch.selectcmp41, i8 48, i8 %switch.select40
  %arrayidx12.4 = getelementptr i8, ptr %buf, i32 3
  %16 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %switch.select42, ptr %arrayidx12.4, align 1
  %arrayidx.5 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %switch.selectcmp51 = icmp eq i8 %18, 1
  %switch.select52 = select i1 %switch.selectcmp51, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.selectcmp53 = icmp eq i8 %18, 0
  %switch.select54 = select i1 %switch.selectcmp53, i8 48, i8 %switch.select52
  %arrayidx12.5 = getelementptr i8, ptr %buf, i32 2
  %19 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %switch.select54, ptr %arrayidx12.5, align 1
  %arrayidx.6 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %switch.selectcmp43 = icmp eq i8 %21, 1
  %switch.select44 = select i1 %switch.selectcmp43, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.selectcmp45 = icmp eq i8 %21, 0
  %switch.select46 = select i1 %switch.selectcmp45, i8 48, i8 %switch.select44
  %arrayidx12.6 = getelementptr i8, ptr %buf, i32 1
  %22 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %switch.select46, ptr %arrayidx12.6, align 1
  %arrayidx.7 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %switch.selectcmp59 = icmp eq i8 %24, 1
  %switch.select60 = select i1 %switch.selectcmp59, i8 49, i8 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.selectcmp61 = icmp eq i8 %24, 0
  %switch.select62 = select i1 %switch.selectcmp61, i8 48, i8 %switch.select60
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %switch.select62, ptr %buf, align 1
  %arrayidx14 = getelementptr i8, ptr %buf, i32 8
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx14, align 1
  ret i32 9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decimals_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not.i = icmp eq i32 %count, 0
  br i1 %cmp.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1.i = icmp eq i8 %3, 10
  br i1 %cmp1.i, label %land.lhs.true.i.my_memlen.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i.my_memlen.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %my_memlen.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %my_memlen.exit

my_memlen.exit:                                   ; preds = %if.else.i, %land.lhs.true.i.my_memlen.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.else.i ], [ %sub.i, %land.lhs.true.i.my_memlen.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 8
  br i1 %cmp, label %my_memlen.exit.cleanup_crit_edge, label %for.cond.preheader

my_memlen.exit.cleanup_crit_edge:                 ; preds = %my_memlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %my_memlen.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp246.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp246.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %decimals52 = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %decimals52 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %decimals52, align 1
  br label %for.end26

for.cond:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %exitcond.not = icmp eq i32 %retval.0.i, 1
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %7 = and i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %switch.1 = icmp eq i8 %7, 48
  br i1 %switch.1, label %for.cond.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %exitcond.not.1 = icmp eq i32 %retval.0.i, 2
  br i1 %exitcond.not.1, label %for.cond.1.for.end_crit_edge, label %for.body.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %10 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %10)
  %switch.2 = icmp eq i8 %10, 48
  br i1 %switch.2, label %for.cond.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i)
  %exitcond.not.2 = icmp eq i32 %retval.0.i, 3
  br i1 %exitcond.not.2, label %for.cond.2.for.end_crit_edge, label %for.body.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %13 = and i8 %12, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %switch.3 = icmp eq i8 %13, 48
  br i1 %switch.3, label %for.cond.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %exitcond.not.3 = icmp eq i32 %retval.0.i, 4
  br i1 %exitcond.not.3, label %for.cond.3.for.end_crit_edge, label %for.body.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %16 = and i8 %15, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %16)
  %switch.4 = icmp eq i8 %16, 48
  br i1 %switch.4, label %for.cond.4, label %for.body.4.cleanup_crit_edge

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i)
  %exitcond.not.4 = icmp eq i32 %retval.0.i, 5
  br i1 %exitcond.not.4, label %for.cond.4.for.end_crit_edge, label %for.body.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %19 = and i8 %18, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %19)
  %switch.5 = icmp eq i8 %19, 48
  br i1 %switch.5, label %for.cond.5, label %for.body.5.cleanup_crit_edge

for.body.5.cleanup_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.5:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i)
  %exitcond.not.5 = icmp eq i32 %retval.0.i, 6
  br i1 %exitcond.not.5, label %for.cond.5.for.end_crit_edge, label %for.body.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.6:                                       ; preds = %for.cond.5
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %22 = and i8 %21, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %22)
  %switch.6 = icmp eq i8 %22, 48
  br i1 %switch.6, label %for.cond.6, label %for.body.6.cleanup_crit_edge

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.6:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %retval.0.i)
  %exitcond.not.6 = icmp eq i32 %retval.0.i, 7
  br i1 %exitcond.not.6, label %for.cond.6.for.end_crit_edge, label %for.body.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.7:                                       ; preds = %for.cond.6
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %25 = and i8 %24, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %25)
  %switch.7 = icmp eq i8 %25, 48
  br i1 %switch.7, label %for.body.7.for.end_crit_edge, label %for.body.7.cleanup_crit_edge

for.body.7.cleanup_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.7.for.end_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %28 = and i8 %27, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %28)
  %switch = icmp eq i8 %28, 48
  br i1 %switch, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end:                                          ; preds = %for.body.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge
  %decimals = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %decimals to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %decimals, align 1
  br i1 %cmp246.not, label %for.end.for.end26_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end26

for.body14:                                       ; preds = %for.inc24.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %i.149 = phi i32 [ %inc25, %for.inc24.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %arrayidx15 = getelementptr i8, ptr %buf, i32 %i.149
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %31)
  %cmp17 = icmp eq i8 %31, 49
  br i1 %cmp17, label %if.then19, label %for.body14.for.inc24_crit_edge

for.body14.for.inc24_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24

if.then19:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #14
  %32 = xor i32 %i.149, -1
  %sub21 = add i32 %retval.0.i, %32
  %arrayidx22 = getelementptr %struct.usb_sevsegdev, ptr %1, i32 0, i32 5, i32 %sub21
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx22, align 1
  br label %for.inc24

for.inc24:                                        ; preds = %if.then19, %for.body14.for.inc24_crit_edge
  %inc25 = add nuw i32 %i.149, 1
  %exitcond51.not = icmp eq i32 %inc25, %retval.0.i
  br i1 %exitcond51.not, label %for.inc24.for.end26_crit_edge, label %for.inc24.for.body14_crit_edge

for.inc24.for.body14_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14

for.inc24.for.end26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end26

for.end26:                                        ; preds = %for.inc24.for.end26_crit_edge, %for.end.for.end26_crit_edge, %for.end.thread
  tail call fastcc void @update_display_visual(ptr noundef %1, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %for.body.cleanup_crit_edge, %for.body.7.cleanup_crit_edge, %for.body.6.cleanup_crit_edge, %for.body.5.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %my_memlen.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end26 ], [ -22, %my_memlen.exit.cleanup_crit_edge ], [ -22, %for.body.7.cleanup_crit_edge ], [ -22, %for.body.6.cleanup_crit_edge ], [ -22, %for.body.5.cleanup_crit_edge ], [ -22, %for.body.4.cleanup_crit_edge ], [ -22, %for.body.3.cleanup_crit_edge ], [ -22, %for.body.2.cleanup_crit_edge ], [ -22, %for.body.1.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_msb_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode_msb = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode_msb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_msb, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_msb_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #12
  %conv = trunc i32 %call1 to i8
  %mode_msb = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode_msb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %mode_msb, align 1
  %shadow_power.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %shadow_power.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shadow_power.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.update_display_mode.exit_crit_edge

entry.update_display_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = trunc i32 %call1 to i16
  %conv2.i = shl i16 %7, 8
  %mode_lsb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mode_lsb.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode_lsb.i, align 2
  %conv3.i = zext i8 %9 to i16
  %add.i = or i16 %conv2.i, %conv3.i
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 21002, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.update_display_mode.exit_crit_edge

if.end.i.update_display_mode.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_mode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mode_msb_store, %if.then11.i)) #12
          to label %update_display_mode.exit [label %if.then11.i], !srcloc !94

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_mode.__UNIQUE_ID_ddebug233, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %call.i) #12
  br label %update_display_mode.exit

update_display_mode.exit:                         ; preds = %if.then11.i, %do.body.i, %if.end.i.update_display_mode.exit_crit_edge, %entry.update_display_mode.exit_crit_edge
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_lsb_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode_lsb = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode_lsb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_lsb, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_lsb_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #12
  %conv = trunc i32 %call1 to i8
  %mode_lsb = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode_lsb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %mode_lsb, align 2
  %shadow_power.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %shadow_power.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shadow_power.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.update_display_mode.exit_crit_edge

entry.update_display_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %mode_msb.i = getelementptr inbounds %struct.usb_sevsegdev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mode_msb.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode_msb.i, align 1
  %conv2.i = zext i8 %8 to i16
  %mul.i = shl nuw i16 %conv2.i, 8
  %9 = trunc i32 %call1 to i16
  %conv3.i = and i16 %9, 255
  %add.i = or i16 %mul.i, %conv3.i
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 18, i8 noundef zeroext 72, i16 noundef zeroext 21002, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %do.body.i, label %if.end.i.update_display_mode.exit_crit_edge

if.end.i.update_display_mode.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_display_mode.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_display_mode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mode_lsb_store, %if.then11.i)) #12
          to label %update_display_mode.exit [label %if.then11.i], !srcloc !94

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_display_mode.__UNIQUE_ID_ddebug233, ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %call.i) #12
  br label %update_display_mode.exit

update_display_mode.exit:                         ; preds = %if.then11.i, %do.body.i, %if.end.i.update_display_mode.exit_crit_edge, %entry.update_display_mode.exit_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !82, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_usbsevseg__236_392_sevseg_driver_init6, !1, !"__initcall__kmod_usbsevseg__236_392_sevseg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/usbsevseg.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_sevseg_driver_exit, !1, !"__exitcall_sevseg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/usbsevseg.c", i32 394, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/usbsevseg.c", i32 395, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/usbsevseg.c", i32 396, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sevseg_driver, !12, !"sevseg_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/usbsevseg.c", i32 380, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/usbsevseg.c", i32 328, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sevseg_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sevseg_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/usbsevseg.c", i32 343, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sevseg_disconnect._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @sevseg_disconnect._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/usbsevseg.c", i32 103, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @update_display_mode.__UNIQUE_ID_ddebug233, !27, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/usbsevseg.c", i32 126, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @update_display_visual.__UNIQUE_ID_ddebug234, !31, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/usbsevseg.c", i32 138, i32 3}
!36 = !{ptr @update_display_visual.__UNIQUE_ID_ddebug235, !35, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!37 = !{ptr @id_table, !38, !"id_table", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/usbsevseg.c", i32 25, i32 35}
!39 = !{ptr @sevseg_groups, !40, !"sevseg_groups", i1 false, i1 false}
!40 = !{!"../drivers/usb/misc/usbsevseg.c", i32 302, i32 1}
!41 = !{ptr @sevseg_group, !40, !"sevseg_group", i1 false, i1 false}
!42 = !{ptr @sevseg_attrs, !43, !"sevseg_attrs", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/usbsevseg.c", i32 293, i32 26}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/usbsevseg.c", i32 289, i32 1}
!46 = !{ptr @dev_attr_powered, !45, !"dev_attr_powered", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/usbsevseg.c", i32 82, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @update_display_powered.__UNIQUE_ID_ddebug232, !49, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/usbsevseg.c", i32 193, i32 8}
!54 = !{ptr @dev_attr_text, !53, !"dev_attr_text", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/misc/usbsevseg.c", i32 170, i32 42}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/usbsevseg.c", i32 286, i32 8}
!59 = !{ptr @dev_attr_textmode, !58, !"dev_attr_textmode", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/usbsevseg.c", i32 255, i32 16}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/usbsevseg.c", i32 257, i32 16}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/misc/usbsevseg.c", i32 259, i32 16}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/misc/usbsevseg.c", i32 264, i32 14}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/usbsevseg.c", i32 32, i32 43}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/usbsevseg.c", i32 32, i32 50}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/usbsevseg.c", i32 32, i32 57}
!74 = !{ptr @display_textmodes, !75, !"display_textmodes", i1 false, i1 false}
!75 = !{!"../drivers/usb/misc/usbsevseg.c", i32 32, i32 20}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/usbsevseg.c", i32 242, i32 8}
!78 = !{ptr @dev_attr_decimals, !77, !"dev_attr_decimals", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/misc/usbsevseg.c", i32 290, i32 1}
!81 = !{ptr @dev_attr_mode_msb, !80, !"dev_attr_mode_msb", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/usbsevseg.c", i32 291, i32 1}
!84 = !{ptr @dev_attr_mode_lsb, !83, !"dev_attr_mode_lsb", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148699289, i64 2148699294, i64 2148699307, i64 2148699351, i64 2148699385, i64 2148699406}
