; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-usbc-cros-ec.c_pt.bc'
source_filename = "../drivers/extcon/extcon-usbc-cros-ec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_extcon_info = type { ptr, ptr, i32, ptr, %struct.notifier_block, i32, i8, i8, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }

@__initcall__kmod_extcon_usbc_cros_ec__188_538_extcon_cros_ec_driver_init6 = internal global ptr @extcon_cros_ec_driver_init, section ".initcall6.init", align 4
@extcon_cros_ec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @extcon_cros_ec_probe, ptr @extcon_cros_ec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @extcon_cros_ec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @extcon_cros_ec_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_extcon_cros_ec_driver_exit = internal global ptr @extcon_cros_ec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [75 x i8] c"extcon_usbc_cros_ec.description=ChromeOS Embedded Controller extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [62 x i8] c"extcon_usbc_cros_ec.author=Benson Leung <bleung@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [60 x i8] c"extcon_usbc_cros_ec.file=drivers/extcon/extcon-usbc-cros-ec\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [35 x i8] c"extcon_usbc_cros_ec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"extcon-usbc-cros-ec\00", [44 x i8] zeroinitializer }, align 32
@extcon_cros_ec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,extcon-usbc-cros-ec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@extcon_cros_ec_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @extcon_cros_ec_suspend, ptr @extcon_cros_ec_resume, ptr @extcon_cros_ec_suspend, ptr @extcon_cros_ec_resume, ptr @extcon_cros_ec_suspend, ptr @extcon_cros_ec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"google,usb-port-id\00", [45 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Missing google,usb-port-id property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"extcon_cros_ec_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/extcon/extcon-usbc-cros-ec.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr = internal global ptr @extcon_cros_ec_probe._entry, section ".printk_index", align 4
@extcon_cros_ec_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed getting number of ports! ret = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.9 = internal global ptr @extcon_cros_ec_probe._entry.7, section ".printk_index", align 4
@extcon_cros_ec_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"This system only supports %d ports\0A\00", [60 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.12 = internal global ptr @extcon_cros_ec_probe._entry.10, section ".printk_index", align 4
@usb_type_c_cable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 44, i32 0], [16 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.15 = internal global ptr @extcon_cros_ec_probe._entry.13, section ".printk_index", align 4
@extcon_cros_ec_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.18 = internal global ptr @extcon_cros_ec_probe._entry.16, section ".printk_index", align 4
@extcon_cros_ec_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register notifier\0A\00", [35 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.21 = internal global ptr @extcon_cros_ec_probe._entry.19, section ".printk_index", align 4
@extcon_cros_ec_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to detect initial cable state\0A\00", [58 x i8] zeroinitializer }, align 32
@extcon_cros_ec_probe._entry_ptr.24 = internal global ptr @extcon_cros_ec_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@extcon_cros_ec_detect_cable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed getting power type err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"extcon_cros_ec_detect_cable\00", [36 x i8] zeroinitializer }, align 32
@extcon_cros_ec_detect_cable._entry_ptr = internal global ptr @extcon_cros_ec_detect_cable._entry, section ".printk_index", align 4
@extcon_cros_ec_detect_cable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed getting role err = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@extcon_cros_ec_detect_cable._entry_ptr.29 = internal global ptr @extcon_cros_ec_detect_cable._entry.27, section ".printk_index", align 4
@extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.26, ptr @.str.4, ptr @.str.31, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"extcon_usbc_cros_ec\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.26, ptr @.str.4, ptr @.str.32, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"connected role 0x%x pwr type %d dr %d pr %d pol %d mux %d dp %d hpd %d\0A\00", [56 x i8] zeroinitializer }, align 32
@extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.26, ptr @.str.4, ptr @.str.33, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Type/Role switch! type = %s role = %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB_CHG_TYPE_NONE\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB_CHG_TYPE_PD\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB_CHG_TYPE_PROPRIETARY\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB_CHG_TYPE_C\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_CHG_TYPE_BC12_DCP\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_CHG_TYPE_BC12_CDP\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_CHG_TYPE_BC12_SDP\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB_CHG_TYPE_OTHER\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB_CHG_TYPE_VBUS\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB_CHG_TYPE_UNKNOWN\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DISCONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFP\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UFP\00", [28 x i8] zeroinitializer }, align 32
@extcon_cros_ec_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to detect cable state on resume\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"extcon_cros_ec_resume\00", [42 x i8] zeroinitializer }, align 32
@extcon_cros_ec_resume._entry_ptr = internal global ptr @extcon_cros_ec_resume._entry, section ".printk_index", align 4
@switch.table.extcon_cros_ec_detect_cable = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"extcon_cros_ec_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 528, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 530, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"extcon_cros_ec_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 521, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"extcon_cros_ec_dev_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 511, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 401, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 403, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 413, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 419, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"usb_type_c_cable\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 35, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 425, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 431, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 464, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 471, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 261, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 269, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 272, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 286, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 303, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 198, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 200, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 202, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 204, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 206, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 208, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 210, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 212, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 214, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 216, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 190, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 191, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 191, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [40 x i8] c"../drivers/extcon/extcon-usbc-cros-ec.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 506, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [41 x i8] c"switch.table.extcon_cros_ec_detect_cable\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_extcon_cros_ec_driver_exit, ptr @__initcall__kmod_extcon_usbc_cros_ec__188_538_extcon_cros_ec_driver_init6, ptr @extcon_cros_ec_detect_cable._entry, ptr @extcon_cros_ec_detect_cable._entry.27, ptr @extcon_cros_ec_detect_cable._entry_ptr, ptr @extcon_cros_ec_detect_cable._entry_ptr.29, ptr @extcon_cros_ec_driver_exit, ptr @extcon_cros_ec_probe._entry, ptr @extcon_cros_ec_probe._entry.10, ptr @extcon_cros_ec_probe._entry.13, ptr @extcon_cros_ec_probe._entry.16, ptr @extcon_cros_ec_probe._entry.19, ptr @extcon_cros_ec_probe._entry.22, ptr @extcon_cros_ec_probe._entry.7, ptr @extcon_cros_ec_probe._entry_ptr, ptr @extcon_cros_ec_probe._entry_ptr.12, ptr @extcon_cros_ec_probe._entry_ptr.15, ptr @extcon_cros_ec_probe._entry_ptr.18, ptr @extcon_cros_ec_probe._entry_ptr.21, ptr @extcon_cros_ec_probe._entry_ptr.24, ptr @extcon_cros_ec_probe._entry_ptr.9, ptr @extcon_cros_ec_resume._entry, ptr @extcon_cros_ec_resume._entry_ptr, ptr @extcon_cros_ec_driver, ptr @.str, ptr @extcon_cros_ec_of_match, ptr @extcon_cros_ec_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @usb_type_c_cable, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.extcon_cros_ec_detect_cable], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_type_c_cable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_detect_cable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_detect_cable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_cros_ec_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.extcon_cros_ec_detect_cable to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @extcon_cros_ec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @extcon_cros_ec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @extcon_cros_ec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @extcon_cros_ec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extcon_cros_ec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ec5 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %ec5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %ec5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #7
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %port, align 4, !annotation !113
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %port, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #7
  br label %cleanup81

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %port_id = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %port_id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %port_id11 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %port_id11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port_id11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 21) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end12.do.end18_crit_edge, label %if.end.i.i

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end.i.i:                                       ; preds = %if.end12
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %command2.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %command2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 258, ptr %command2.i.i, align 4
  %outsize3.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %outsize3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %outsize3.i.i, align 8
  %insize4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %insize4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %insize4.i.i, align 4
  %20 = ptrtoint ptr %ec5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ec5, align 4
  %call8.i.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %21, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %cmp9.i.i = icmp sgt i32 %call8.i.i, -1
  br i1 %cmp9.i.i, label %cros_ec_pd_get_num_ports.exit, label %cros_ec_pd_command.exit.thread6.i

cros_ec_pd_command.exit.thread6.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %do.end18

cros_ec_pd_get_num_ports.exit:                    ; preds = %if.end.i.i
  %data12.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %data12.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %resp.sroa.0.0.copyload.i = load i8, ptr %data12.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %conv.i = zext i8 %resp.sroa.0.0.copyload.i to i32
  %port_id20 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %port_id20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_id20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp21.not = icmp slt i32 %24, %conv.i
  br i1 %cmp21.not, label %if.end26, label %do.end25

do.end18:                                         ; preds = %cros_ec_pd_command.exit.thread6.i, %if.end12.do.end18_crit_edge
  %retval.0.i142 = phi i32 [ -12, %if.end12.do.end18_crit_edge ], [ %call8.i.i, %cros_ec_pd_command.exit.thread6.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i142) #10
  br label %cleanup81

do.end25:                                         ; preds = %cros_ec_pd_get_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #10
  br label %cleanup81

if.end26:                                         ; preds = %cros_ec_pd_get_num_ports.exit
  %call27 = call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @usb_type_c_cable) #7
  %edev = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call27, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end34

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup81

if.end34:                                         ; preds = %if.end26
  %call36 = call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup81

if.end42:                                         ; preds = %if.end34
  %26 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edev, align 4
  %call44 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 1, i32 noundef 0) #7
  %call46 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 2, i32 noundef 0) #7
  %call48 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 1, i32 noundef 1) #7
  %call50 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 2, i32 noundef 1) #7
  %call52 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 44, i32 noundef 1) #7
  %call54 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 1, i32 noundef 2) #7
  %call56 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 2, i32 noundef 2) #7
  %call58 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 44, i32 noundef 2) #7
  %call60 = call i32 @extcon_set_property_capability(ptr noundef %27, i32 noundef 44, i32 noundef 150) #7
  %dr = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dr, align 4
  %pr = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %pr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %pr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @extcon_cros_ec_event, ptr %notifier, align 4
  %32 = ptrtoint ptr %ec5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ec5, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %33, i32 0, i32 22
  %call63 = call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end69

do.end68:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup81

if.end69:                                         ; preds = %if.end42
  %call70 = call fastcc i32 @extcon_cros_ec_detect_cable(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end69.cleanup81_crit_edge

if.end69.cleanup81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %34 = ptrtoint ptr %ec5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ec5, align 4
  %event_notifier78 = getelementptr inbounds %struct.cros_ec_device, ptr %35, i32 0, i32 22
  %call80 = call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier78, ptr noundef %notifier) #7
  br label %cleanup81

cleanup81:                                        ; preds = %do.end75, %if.end69.cleanup81_crit_edge, %do.end68, %do.end41, %do.end33, %do.end25, %do.end18, %do.end, %entry.cleanup81_crit_edge
  %retval.1 = phi i32 [ %retval.0.i142, %do.end18 ], [ -19, %do.end25 ], [ -12, %do.end33 ], [ %call36, %do.end41 ], [ %call63, %do.end68 ], [ %call70, %do.end75 ], [ -12, %entry.cleanup81_crit_edge ], [ %call.i.i, %do.end ], [ 0, %if.end69.cleanup81_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extcon_cros_ec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ec = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_property_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extcon_cros_ec_event(ptr nocapture noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ec1 = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec1, align 4
  %call = tail call i32 @cros_ec_get_host_event(ptr noundef %1) #7
  %2 = and i32 %call, 136314880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %nb, i32 -16
  %call2 = tail call fastcc i32 @extcon_cros_ec_detect_cable(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @extcon_cros_ec_detect_cable(ptr nocapture noundef %info, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %port_id.i = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %if.end.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %conv.i = trunc i32 %3 to i8
  %5 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %command2.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 259, ptr %command2.i.i, align 4
  %outsize3.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %outsize3.i.i, align 8
  %insize4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %insize4.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %data.i.i, align 4
  %ec.i.i = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %ec.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ec.i.i, align 4
  %call8.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %cmp9.i.i = icmp sgt i32 %call8.i.i, -1
  br i1 %cmp9.i.i, label %cros_ec_usb_get_power_type.exit, label %cros_ec_pd_command.exit.thread10.i

cros_ec_pd_command.exit.thread10.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %do.end

cros_ec_usb_get_power_type.exit:                  ; preds = %if.end.i.i
  %resp.sroa.4.0.data12.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %12 = ptrtoint ptr %resp.sroa.4.0.data12.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %resp.sroa.4.0.copyload.i = load i8, ptr %resp.sroa.4.0.data12.i.sroa_idx.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %conv2.i = zext i8 %resp.sroa.4.0.copyload.i to i32
  %13 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i321 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 55) #11
  %tobool.not.i.i322 = icmp eq ptr %call7.i.i.i.i321, null
  br i1 %tobool.not.i.i322, label %cros_ec_usb_get_power_type.exit.do.end9_crit_edge, label %if.end.i.i331

cros_ec_usb_get_power_type.exit.do.end9_crit_edge: ; preds = %cros_ec_usb_get_power_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %cros_ec_pd_command.exit.thread10.i, %entry.do.end_crit_edge
  %retval.0.i319357 = phi i32 [ -12, %entry.do.end_crit_edge ], [ %call8.i.i, %cros_ec_pd_command.exit.thread10.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i319357) #10
  br label %cleanup

if.end.i.i331:                                    ; preds = %cros_ec_usb_get_power_type.exit
  %conv.i323 = trunc i32 %14 to i8
  %16 = ptrtoint ptr %call7.i.i.i.i321 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call7.i.i.i.i321, align 8
  %command2.i.i324 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i321, i32 0, i32 1
  %17 = ptrtoint ptr %command2.i.i324 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 257, ptr %command2.i.i324, align 4
  %outsize3.i.i325 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i321, i32 0, i32 2
  %18 = ptrtoint ptr %outsize3.i.i325 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %outsize3.i.i325, align 8
  %insize4.i.i326 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i321, i32 0, i32 3
  %19 = ptrtoint ptr %insize4.i.i326 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 35, ptr %insize4.i.i326, align 4
  %data.i.i327 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i321, i32 0, i32 5
  %20 = ptrtoint ptr %data.i.i327 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i323, ptr %data.i.i327, align 4
  %pd_control.sroa.5.0.data.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i327, i32 1
  %21 = ptrtoint ptr %pd_control.sroa.5.0.data.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pd_control.sroa.5.0.data.i.sroa_idx.i, align 1
  %pd_control.sroa.7.0.data.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i327, i32 2
  %22 = ptrtoint ptr %pd_control.sroa.7.0.data.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pd_control.sroa.7.0.data.i.sroa_idx.i, align 2
  %pd_control.sroa.9.0.data.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i327, i32 3
  %23 = ptrtoint ptr %pd_control.sroa.9.0.data.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pd_control.sroa.9.0.data.i.sroa_idx.i, align 1
  %24 = ptrtoint ptr %ec.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ec.i.i, align 4
  %call8.i.i329 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %25, ptr noundef nonnull %call7.i.i.i.i321) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i329)
  %cmp9.i.i330 = icmp sgt i32 %call8.i.i329, -1
  br i1 %cmp9.i.i330, label %if.end.i332, label %if.then4

if.end.i332:                                      ; preds = %if.end.i.i331
  %26 = ptrtoint ptr %data.i.i327 to i32
  call void @__asan_load1_noabort(i32 %26)
  %resp.sroa.0.0.copyload.i = load i8, ptr %data.i.i327, align 4
  %27 = ptrtoint ptr %pd_control.sroa.5.0.data.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %resp.sroa.5.0.copyload.i = load i8, ptr %pd_control.sroa.5.0.data.i.sroa_idx.i, align 1
  %28 = ptrtoint ptr %pd_control.sroa.7.0.data.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %resp.sroa.6.0.copyload.i = load i8, ptr %pd_control.sroa.7.0.data.i.sroa_idx.i, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i321) #7
  %29 = and i8 %resp.sroa.0.0.copyload.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end.i332.do.body11_crit_edge, label %cros_ec_usb_get_role.exit

if.end.i332.do.body11_crit_edge:                  ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

cros_ec_usb_get_role.exit:                        ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %resp.sroa.6.0.copyload.i)
  %tobool6.i = icmp ne i8 %resp.sroa.6.0.copyload.i, 0
  %frombool.i = zext i1 %tobool6.i to i8
  %conv8.i = zext i8 %resp.sroa.5.0.copyload.i to i32
  %and = and i32 %conv8.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool20.not, i32 2, i32 1
  %30 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i335 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 21) #11
  %tobool.not.i.i336 = icmp eq ptr %call7.i.i.i.i335, null
  br i1 %tobool.not.i.i336, label %cros_ec_usb_get_role.exit.cros_ec_usb_get_pd_mux_state.exit.thread_crit_edge, label %if.end.i.i345

cros_ec_usb_get_role.exit.cros_ec_usb_get_pd_mux_state.exit.thread_crit_edge: ; preds = %cros_ec_usb_get_role.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_usb_get_pd_mux_state.exit.thread

if.then4:                                         ; preds = %if.end.i.i331
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i321) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -107, i32 %call8.i.i329)
  %cmp5.not = icmp eq i32 %call8.i.i329, -107
  br i1 %cmp5.not, label %if.then4.do.body11_crit_edge, label %if.then4.do.end9_crit_edge

if.then4.do.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.then4.do.body11_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end9:                                          ; preds = %if.then4.do.end9_crit_edge, %cros_ec_usb_get_power_type.exit.do.end9_crit_edge
  %retval.0.i333363367 = phi i32 [ %call8.i.i329, %if.then4.do.end9_crit_edge ], [ -12, %cros_ec_usb_get_power_type.exit.do.end9_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i333363367) #10
  br label %cleanup

do.body11:                                        ; preds = %if.then4.do.body11_crit_edge, %if.end.i332.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_cros_ec_detect_cable, %if.end62.thread)) #7
          to label %if.end62 [label %if.end62.thread], !srcloc !114

if.end62.thread:                                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug185, ptr noundef %1, ptr noundef nonnull @.str.31) #7
  br label %if.end68

if.end.i.i345:                                    ; preds = %cros_ec_usb_get_role.exit
  %conv.i337 = trunc i32 %31 to i8
  %33 = ptrtoint ptr %call7.i.i.i.i335 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call7.i.i.i.i335, align 8
  %command2.i.i338 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i335, i32 0, i32 1
  %34 = ptrtoint ptr %command2.i.i338 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 282, ptr %command2.i.i338, align 4
  %outsize3.i.i339 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i335, i32 0, i32 2
  %35 = ptrtoint ptr %outsize3.i.i339 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %outsize3.i.i339, align 8
  %insize4.i.i340 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i335, i32 0, i32 3
  %36 = ptrtoint ptr %insize4.i.i340 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %insize4.i.i340, align 4
  %data.i.i341 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i335, i32 0, i32 5
  %37 = ptrtoint ptr %data.i.i341 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i337, ptr %data.i.i341, align 4
  %38 = ptrtoint ptr %ec.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ec.i.i, align 4
  %call8.i.i343 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %39, ptr noundef nonnull %call7.i.i.i.i335) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i343)
  %cmp9.i.i344 = icmp sgt i32 %call8.i.i343, -1
  br i1 %cmp9.i.i344, label %cros_ec_usb_get_pd_mux_state.exit, label %cros_ec_pd_command.exit.thread10.i346

cros_ec_pd_command.exit.thread10.i346:            ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i335) #7
  br label %cros_ec_usb_get_pd_mux_state.exit.thread

cros_ec_usb_get_pd_mux_state.exit:                ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %data.i.i341 to i32
  call void @__asan_load1_noabort(i32 %40)
  %resp.sroa.0.0.copyload.i347 = load i8, ptr %data.i.i341, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i335) #7
  %conv2.i348 = zext i8 %resp.sroa.0.0.copyload.i347 to i32
  br label %cros_ec_usb_get_pd_mux_state.exit.thread

cros_ec_usb_get_pd_mux_state.exit.thread:         ; preds = %cros_ec_usb_get_pd_mux_state.exit, %cros_ec_pd_command.exit.thread10.i346, %cros_ec_usb_get_role.exit.cros_ec_usb_get_pd_mux_state.exit.thread_crit_edge
  %41 = phi i32 [ %conv2.i348, %cros_ec_usb_get_pd_mux_state.exit ], [ 1, %cros_ec_usb_get_role.exit.cros_ec_usb_get_pd_mux_state.exit.thread_crit_edge ], [ 1, %cros_ec_pd_command.exit.thread10.i346 ]
  %and28 = and i32 %41, 2
  %and34 = and i32 %41, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_cros_ec_detect_cable, %if.then49)) #7
          to label %do.end61 [label %if.then49], !srcloc !114

if.then49:                                        ; preds = %cros_ec_usb_get_pd_mux_state.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = and i32 %conv8.i, 1
  %and31 = and i32 %41, 1
  %42 = zext i1 %tobool6.i to i32
  %and28.lobit = lshr exact i32 %and28, 1
  %and34.lobit = lshr exact i32 %and34, 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug186, ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %conv8.i, i32 noundef %conv2.i, i32 noundef %cond, i32 noundef %and21, i32 noundef %42, i32 noundef %and31, i32 noundef %and28.lobit, i32 noundef %and34.lobit) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then49, %cros_ec_usb_get_pd_mux_state.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %extract.t = icmp ne i32 %and34, 0
  %43 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %extract.t309 = icmp ne i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %extract.t310 = icmp ne i32 %and28, 0
  %44 = and i32 %conv8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %extract.t311 = icmp ne i32 %44, 0
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %do.body11
  %polarity.0361 = phi i8 [ %frombool.i, %do.end61 ], [ 0, %do.body11 ]
  %hpd.0.off0 = phi i1 [ %extract.t, %do.end61 ], [ false, %do.body11 ]
  %mux.0.off0 = phi i1 [ %extract.t309, %do.end61 ], [ false, %do.body11 ]
  %dp.0.off0 = phi i1 [ %extract.t310, %do.end61 ], [ false, %do.body11 ]
  %pr.0.off0 = phi i1 [ %extract.t311, %do.end61 ], [ false, %do.body11 ]
  %dr.0 = phi i32 [ %cond, %do.end61 ], [ 0, %do.body11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dr.0)
  %cmp63 = icmp eq i32 %dr.0, 2
  br i1 %cmp63, label %land.lhs.true, label %if.end62.if.end68_crit_edge

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %type.off.i = add nsw i32 %conv2.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 2
  %spec.select = select i1 %switch.i, i32 0, i32 2
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true, %if.end62.if.end68_crit_edge, %if.end62.thread
  %pr.0.off0390 = phi i1 [ %pr.0.off0, %if.end62.if.end68_crit_edge ], [ %pr.0.off0, %land.lhs.true ], [ false, %if.end62.thread ]
  %dp.0.off0389 = phi i1 [ %dp.0.off0, %if.end62.if.end68_crit_edge ], [ %dp.0.off0, %land.lhs.true ], [ false, %if.end62.thread ]
  %mux.0.off0388 = phi i1 [ %mux.0.off0, %if.end62.if.end68_crit_edge ], [ %mux.0.off0, %land.lhs.true ], [ false, %if.end62.thread ]
  %hpd.0.off0386 = phi i1 [ %hpd.0.off0, %if.end62.if.end68_crit_edge ], [ %hpd.0.off0, %land.lhs.true ], [ false, %if.end62.thread ]
  %polarity.0361385 = phi i8 [ %polarity.0361, %if.end62.if.end68_crit_edge ], [ %polarity.0361, %land.lhs.true ], [ 0, %if.end62.thread ]
  %dr.1 = phi i32 [ %dr.0, %if.end62.if.end68_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %if.end62.thread ]
  br i1 %force, label %if.end68.if.then102_crit_edge, label %lor.lhs.false

if.end68.if.then102_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false:                                    ; preds = %if.end68
  %dr71 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 5
  %45 = ptrtoint ptr %dr71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dr71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %dr.1)
  %cmp72.not = icmp eq i32 %46, %dr.1
  br i1 %cmp72.not, label %lor.lhs.false74, label %lor.lhs.false.if.then102_crit_edge

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false74:                                  ; preds = %lor.lhs.false
  %pr75 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 6
  %47 = ptrtoint ptr %pr75 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pr75, align 4, !range !115
  %49 = zext i1 %pr.0.off0390 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp80.not = icmp eq i8 %48, %49
  br i1 %cmp80.not, label %lor.lhs.false82, label %lor.lhs.false74.if.then102_crit_edge

lor.lhs.false74.if.then102_crit_edge:             ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false82:                                  ; preds = %lor.lhs.false74
  %dp83 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 7
  %50 = ptrtoint ptr %dp83 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp83, align 1, !range !115
  %52 = zext i1 %dp.0.off0389 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %52)
  %cmp88.not = icmp eq i8 %51, %52
  br i1 %cmp88.not, label %lor.lhs.false90, label %lor.lhs.false82.if.then102_crit_edge

lor.lhs.false82.if.then102_crit_edge:             ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false90:                                  ; preds = %lor.lhs.false82
  %mux91 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 8
  %53 = ptrtoint ptr %mux91 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mux91, align 2, !range !115
  %55 = zext i1 %mux.0.off0388 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %55)
  %cmp96.not = icmp eq i8 %54, %55
  br i1 %cmp96.not, label %lor.lhs.false98, label %lor.lhs.false90.if.then102_crit_edge

lor.lhs.false90.if.then102_crit_edge:             ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false98:                                  ; preds = %lor.lhs.false90
  %power_type99 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 9
  %56 = ptrtoint ptr %power_type99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %power_type99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv2.i)
  %cmp100.not = icmp eq i32 %57, %conv2.i
  br i1 %cmp100.not, label %if.else207, label %lor.lhs.false98.if.then102_crit_edge

lor.lhs.false98.if.then102_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false98.if.then102_crit_edge, %lor.lhs.false90.if.then102_crit_edge, %lor.lhs.false82.if.then102_crit_edge, %lor.lhs.false74.if.then102_crit_edge, %lor.lhs.false.if.then102_crit_edge, %if.end68.if.then102_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extcon_cros_ec_detect_cable, %if.then115)) #7
          to label %do.end120 [label %if.then115], !srcloc !114

if.then115:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %resp.sroa.4.0.copyload.i)
  %58 = icmp ult i8 %resp.sroa.4.0.copyload.i, 10
  br i1 %58, label %switch.lookup, label %if.then115.cros_ec_usb_power_type_string.exit_crit_edge

if.then115.cros_ec_usb_power_type_string.exit_crit_edge: ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_usb_power_type_string.exit

switch.lookup:                                    ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  %59 = sext i8 %resp.sroa.4.0.copyload.i to i32
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.extcon_cros_ec_detect_cable, i32 0, i32 %59
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cros_ec_usb_power_type_string.exit

cros_ec_usb_power_type_string.exit:               ; preds = %switch.lookup, %if.then115.cros_ec_usb_power_type_string.exit_crit_edge
  %retval.0.i351 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %if.then115.cros_ec_usb_power_type_string.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dr.1)
  %cmp.i = icmp eq i32 %dr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dr.1)
  %cmp1.i = icmp eq i32 %dr.1, 1
  %cond.i = select i1 %cmp1.i, ptr @.str.45, ptr @.str.46
  %cond2.i = select i1 %cmp.i, ptr @.str.44, ptr %cond.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug187, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i351, ptr noundef nonnull %cond2.i) #7
  br label %do.end120

do.end120:                                        ; preds = %cros_ec_usb_power_type_string.exit, %if.then102
  %dr121 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 5
  %61 = ptrtoint ptr %dr121 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dr.1, ptr %dr121, align 4
  %pr123 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 6
  %frombool124 = zext i1 %pr.0.off0390 to i8
  %62 = ptrtoint ptr %pr123 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool124, ptr %pr123, align 4
  %dp126 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 7
  %frombool127 = zext i1 %dp.0.off0389 to i8
  %63 = ptrtoint ptr %dp126 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %frombool127, ptr %dp126, align 1
  %mux129 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 8
  %frombool130 = zext i1 %mux.0.off0388 to i8
  %64 = ptrtoint ptr %mux129 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool130, ptr %mux129, align 2
  %power_type131 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 9
  %65 = ptrtoint ptr %power_type131 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv2.i, ptr %power_type131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dr.1)
  %cmp132 = icmp eq i32 %dr.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dr.1)
  %cmp136 = icmp eq i32 %dr.1, 1
  %edev = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 1
  %66 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %edev, align 4
  %call142 = tail call i32 @extcon_set_state(ptr noundef %67, i32 noundef 1, i1 noundef zeroext %cmp132) #7
  %68 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %edev, align 4
  %call145 = tail call i32 @extcon_set_state(ptr noundef %69, i32 noundef 2, i1 noundef zeroext %cmp136) #7
  %70 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %edev, align 4
  %call148 = tail call i32 @extcon_set_state(ptr noundef %71, i32 noundef 44, i1 noundef zeroext %dp.0.off0389) #7
  %72 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %edev, align 4
  %conv151 = zext i1 %pr.0.off0390 to i32
  %.fca.0.insert236 = insertvalue [1 x i32] poison, i32 %conv151, 0
  %call152 = tail call i32 @extcon_set_property(ptr noundef %73, i32 noundef 1, i32 noundef 0, [1 x i32] %.fca.0.insert236) #7
  %74 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %edev, align 4
  %call158 = tail call i32 @extcon_set_property(ptr noundef %75, i32 noundef 2, i32 noundef 0, [1 x i32] %.fca.0.insert236) #7
  %76 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %edev, align 4
  %78 = zext i8 %polarity.0361385 to i32
  %.fca.0.insert234 = insertvalue [1 x i32] poison, i32 %78, 0
  %call164 = tail call i32 @extcon_set_property(ptr noundef %77, i32 noundef 1, i32 noundef 1, [1 x i32] %.fca.0.insert234) #7
  %79 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %edev, align 4
  %call170 = tail call i32 @extcon_set_property(ptr noundef %80, i32 noundef 2, i32 noundef 1, [1 x i32] %.fca.0.insert234) #7
  %81 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %edev, align 4
  %call176 = tail call i32 @extcon_set_property(ptr noundef %82, i32 noundef 44, i32 noundef 1, [1 x i32] %.fca.0.insert234) #7
  %83 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %edev, align 4
  %conv180 = zext i1 %mux.0.off0388 to i32
  %.fca.0.insert231 = insertvalue [1 x i32] poison, i32 %conv180, 0
  %call182 = tail call i32 @extcon_set_property(ptr noundef %84, i32 noundef 1, i32 noundef 2, [1 x i32] %.fca.0.insert231) #7
  %85 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %edev, align 4
  %call188 = tail call i32 @extcon_set_property(ptr noundef %86, i32 noundef 2, i32 noundef 2, [1 x i32] %.fca.0.insert231) #7
  %87 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %edev, align 4
  %call194 = tail call i32 @extcon_set_property(ptr noundef %88, i32 noundef 44, i32 noundef 2, [1 x i32] %.fca.0.insert231) #7
  %89 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %edev, align 4
  %conv198 = zext i1 %hpd.0.off0386 to i32
  %.fca.0.insert228 = insertvalue [1 x i32] poison, i32 %conv198, 0
  %call200 = tail call i32 @extcon_set_property(ptr noundef %90, i32 noundef 44, i32 noundef 150, [1 x i32] %.fca.0.insert228) #7
  %91 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %edev, align 4
  %call202 = tail call i32 @extcon_sync(ptr noundef %92, i32 noundef 1) #7
  %93 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %edev, align 4
  %call204 = tail call i32 @extcon_sync(ptr noundef %94, i32 noundef 2) #7
  %95 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %edev, align 4
  %call206 = tail call i32 @extcon_sync(ptr noundef %96, i32 noundef 44) #7
  br label %cleanup

if.else207:                                       ; preds = %lor.lhs.false98
  br i1 %hpd.0.off0386, label %if.then209, label %if.else207.cleanup_crit_edge

if.else207.cleanup_crit_edge:                     ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then209:                                       ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #9
  %edev210 = getelementptr inbounds %struct.cros_ec_extcon_info, ptr %info, i32 0, i32 1
  %97 = ptrtoint ptr %edev210 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %edev210, align 4
  %call215 = tail call i32 @extcon_set_property(ptr noundef %98, i32 noundef 44, i32 noundef 150, [1 x i32] [i32 1]) #7
  %99 = ptrtoint ptr %edev210 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %edev210, align 4
  %call217 = tail call i32 @extcon_sync(ptr noundef %100, i32 noundef 44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %if.else207.cleanup_crit_edge, %do.end120, %do.end9, %do.end
  %retval.0 = phi i32 [ %retval.0.i319357, %do.end ], [ %retval.0.i333363367, %do.end9 ], [ 0, %if.else207.cleanup_crit_edge ], [ 0, %if.then209 ], [ 0, %do.end120 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_property(ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_sync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @extcon_cros_ec_suspend(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extcon_cros_ec_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @extcon_cros_ec_detect_cable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_extcon_usbc_cros_ec__188_538_extcon_cros_ec_driver_init6, !1, !"__initcall__kmod_extcon_usbc_cros_ec__188_538_extcon_cros_ec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 538, i32 1}
!2 = !{ptr @__exitcall_extcon_cros_ec_driver_exit, !1, !"__exitcall_extcon_cros_ec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description189, !4, !"__UNIQUE_ID_description189", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 540, i32 1}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 542, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 530, i32 12}
!12 = !{ptr @extcon_cros_ec_driver, !13, !"extcon_cros_ec_driver", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 528, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 401, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 403, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @extcon_cros_ec_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @extcon_cros_ec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 413, i32 3}
!26 = !{ptr @extcon_cros_ec_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @extcon_cros_ec_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 419, i32 3}
!30 = !{ptr @extcon_cros_ec_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @extcon_cros_ec_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 425, i32 3}
!34 = !{ptr @extcon_cros_ec_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @extcon_cros_ec_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 431, i32 3}
!38 = !{ptr @extcon_cros_ec_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @extcon_cros_ec_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 464, i32 3}
!42 = !{ptr @extcon_cros_ec_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @extcon_cros_ec_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 471, i32 3}
!46 = !{ptr @extcon_cros_ec_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @extcon_cros_ec_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @usb_type_c_cable, !49, !"usb_type_c_cable", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 35, i32 27}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 261, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @extcon_cros_ec_detect_cable._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @extcon_cros_ec_detect_cable._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 269, i32 4}
!57 = !{ptr @extcon_cros_ec_detect_cable._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @extcon_cros_ec_detect_cable._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 272, i32 3}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug185, !60, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 286, i32 3}
!65 = !{ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug186, !64, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 303, i32 3}
!68 = !{ptr @extcon_cros_ec_detect_cable.__UNIQUE_ID_ddebug187, !67, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 198, i32 10}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 200, i32 10}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 202, i32 10}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 204, i32 10}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 206, i32 10}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 208, i32 10}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 210, i32 10}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 212, i32 10}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 214, i32 10}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 216, i32 10}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 190, i32 27}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 191, i32 22}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 191, i32 30}
!95 = !{ptr @extcon_cros_ec_of_match, !96, !"extcon_cros_ec_of_match", i1 false, i1 false}
!96 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 521, i32 34}
!97 = !{ptr @extcon_cros_ec_dev_pm_ops, !98, !"extcon_cros_ec_dev_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 511, i32 32}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/extcon/extcon-usbc-cros-ec.c", i32 506, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @extcon_cros_ec_resume._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @extcon_cros_ec_resume._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2148304306, i64 2148304311, i64 2148304324, i64 2148304368, i64 2148304402, i64 2148304423}
!115 = !{i8 0, i8 2}
