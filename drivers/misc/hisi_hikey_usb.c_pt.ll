; ModuleID = '/llk/IR_all_yes/drivers/misc/hisi_hikey_usb.c_pt.bc'
source_filename = "../drivers/misc/hisi_hikey_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hisi_hikey_usb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, %struct.work_struct, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_hisi_hikey_usb__288_273_hisi_hikey_usb_driver_init6 = internal global ptr @hisi_hikey_usb_driver_init, section ".initcall6.init", align 4
@hisi_hikey_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_hikey_usb_probe, ptr @hisi_hikey_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @id_table_hisi_hikey_usb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_hikey_usb_driver_exit = internal global ptr @hisi_hikey_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"hisi_hikey_usb.author=Yu Chen <chenyu56@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"hisi_hikey_usb.description=Driver Support for USB functionality of Hikey\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [48 x i8] c"hisi_hikey_usb.file=drivers/misc/hisi_hikey_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"hisi_hikey_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_hikey_usb\00", [17 x i8] zeroinitializer }, align 32
@id_table_hisi_hikey_usb = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,usbhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hisi_hikey_usb->lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hub-vdd\00", [24 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 225, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"waiting for hub-vdd-supply\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_hikey_usb_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/misc/hisi_hikey_usb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_probe._entry_ptr = internal global ptr @hisi_hikey_usb_probe._entry, section ".printk_index", align 4
@hisi_hikey_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 229, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"get hub-vdd-supply failed with error %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_probe._entry_ptr.11 = internal global ptr @hisi_hikey_usb_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"otg-switch\00", [21 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 159, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"get otg-switch failed with error %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hisi_hikey_usb_of_role_switch\00", [34 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry_ptr = internal global ptr @hisi_hikey_usb_of_role_switch._entry, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"typec-vbus\00", [21 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.5, i32 167, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"get typec-vbus failed with error %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry_ptr.19 = internal global ptr @hisi_hikey_usb_of_role_switch._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hub-reset-en\00", [19 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.5, i32 176, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"get hub-reset-en failed with error %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry_ptr.23 = internal global ptr @hisi_hikey_usb_of_role_switch._entry.21, section ".printk_index", align 4
@hisi_hikey_usb_of_role_switch._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.5, i32 185, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"get device role switch failed with error %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry_ptr.26 = internal global ptr @hisi_hikey_usb_of_role_switch._entry.24, section ".printk_index", align 4
@hisi_hikey_usb_of_role_switch.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&hisi_hikey_usb->work)\00", [55 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.5, i32 201, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to register hub role with error %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@hisi_hikey_usb_of_role_switch._entry_ptr.30 = internal global ptr @hisi_hikey_usb_of_role_switch._entry.28, section ".printk_index", align 4
@hub_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 71, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't switch regulator state to %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hub_power_ctrl\00", [17 x i8] zeroinitializer }, align 32
@hub_power_ctrl._entry_ptr = internal global ptr @hub_power_ctrl._entry, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"hisi_hikey_usb_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 264, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 268, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"id_table_hisi_hikey_usb\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 258, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 220, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 222, i32 54 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 225, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 228, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 152, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 155, i32 51 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 158, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 163, i32 51 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 166, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 172, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 175, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 184, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 189, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 199, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [33 x i8] c"../drivers/misc/hisi_hikey_usb.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 69, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hisi_hikey_usb_driver_exit, ptr @__initcall__kmod_hisi_hikey_usb__288_273_hisi_hikey_usb_driver_init6, ptr @hisi_hikey_usb_driver_exit, ptr @hisi_hikey_usb_of_role_switch._entry, ptr @hisi_hikey_usb_of_role_switch._entry.17, ptr @hisi_hikey_usb_of_role_switch._entry.21, ptr @hisi_hikey_usb_of_role_switch._entry.24, ptr @hisi_hikey_usb_of_role_switch._entry.28, ptr @hisi_hikey_usb_of_role_switch._entry_ptr, ptr @hisi_hikey_usb_of_role_switch._entry_ptr.19, ptr @hisi_hikey_usb_of_role_switch._entry_ptr.23, ptr @hisi_hikey_usb_of_role_switch._entry_ptr.26, ptr @hisi_hikey_usb_of_role_switch._entry_ptr.30, ptr @hisi_hikey_usb_probe._entry, ptr @hisi_hikey_usb_probe._entry.8, ptr @hisi_hikey_usb_probe._entry_ptr, ptr @hisi_hikey_usb_probe._entry_ptr.11, ptr @hub_power_ctrl._entry, ptr @hub_power_ctrl._entry_ptr, ptr @hisi_hikey_usb_driver, ptr @.str, ptr @id_table_hisi_hikey_usb, ptr @hisi_hikey_usb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @hisi_hikey_usb_of_role_switch.__key, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_hisi_hikey_usb to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_hikey_usb_of_role_switch._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_hikey_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_hikey_usb_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_hikey_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_hikey_usb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_hikey_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hub_role_switch.i = alloca %struct.usb_role_switch_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 180, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hisi_hikey_usb_probe.__key) #5
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %regulator = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end24

if.then7:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end13, label %do.end19

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

do.end19:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hub_role_switch.i) #5
  %9 = getelementptr inbounds i8, ptr %hub_role_switch.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 32)
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.12) #5
  br i1 %call.i.i, label %if.end.i, label %if.end24.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge

if.end24.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %hisi_hikey_usb_of_role_switch.exit.thread

if.end.i:                                         ; preds = %if.end24
  %call2.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 7) #5
  %otg_switch.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %otg_switch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.i, ptr %otg_switch.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %12) #8
  br label %hisi_hikey_usb_of_role_switch.exit

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef 3) #5
  %typec_vbus.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %typec_vbus.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11.i, ptr %typec_vbus.i, align 4
  %cmp.i111.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111.i, label %do.end17.i, label %if.end22.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call11.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %14) #8
  br label %hisi_hikey_usb_of_role_switch.exit

if.end22.i:                                       ; preds = %if.end10.i
  %call23.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef 7) #5
  %reset.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23.i, ptr %reset.i, align 4
  %cmp.i112.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %do.end29.i, label %if.end34.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call23.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %16) #8
  br label %hisi_hikey_usb_of_role_switch.exit

if.end34.i:                                       ; preds = %if.end22.i
  %call35.i = tail call ptr @usb_role_switch_get(ptr noundef %dev1) #5
  %dev_role_sw.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %dev_role_sw.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35.i, ptr %dev_role_sw.i, align 4
  %tobool.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool.not.i, label %hisi_hikey_usb_of_role_switch.exit.thread50, label %if.end38.i

hisi_hikey_usb_of_role_switch.exit.thread50:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hub_role_switch.i) #5
  br label %cleanup

if.end38.i:                                       ; preds = %if.end34.i
  %cmp.i113.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %do.end44.i, label %do.body50.i

do.end44.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call35.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %18) #8
  br label %hisi_hikey_usb_of_role_switch.exit

do.body50.i:                                      ; preds = %if.end38.i
  %work.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %19 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @hisi_hikey_usb_of_role_switch.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry54.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %entry54.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry54.i, ptr %entry54.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry54.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @relay_set_role_switch, ptr %func.i, align 4
  %call58.i = tail call ptr @dev_fwnode(ptr noundef %dev1) #5
  %23 = ptrtoint ptr %hub_role_switch.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call58.i, ptr %hub_role_switch.i, align 4
  %set.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %hub_role_switch.i, i32 0, i32 4
  %24 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hub_usb_role_switch_set, ptr %set.i, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %hub_role_switch.i, i32 0, i32 7
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call59.i = call ptr @usb_role_switch_register(ptr noundef %dev1, ptr noundef nonnull %hub_role_switch.i) #5
  %hub_role_sw.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %hub_role_sw.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call59.i, ptr %hub_role_sw.i, align 4
  %cmp.i114.i = icmp ugt ptr %call59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i, label %do.end65.i, label %do.body50.i.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge

do.body50.i.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hisi_hikey_usb_of_role_switch.exit.thread

do.end65.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call59.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %27) #8
  %28 = ptrtoint ptr %dev_role_sw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_role_sw.i, align 4
  call void @usb_role_switch_put(ptr noundef %29) #5
  br label %hisi_hikey_usb_of_role_switch.exit

hisi_hikey_usb_of_role_switch.exit.thread:        ; preds = %do.body50.i.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge, %if.end24.hisi_hikey_usb_of_role_switch.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hub_role_switch.i) #5
  br label %if.end28

hisi_hikey_usb_of_role_switch.exit:               ; preds = %do.end65.i, %do.end44.i, %do.end29.i, %do.end17.i, %do.end.i
  %hub_role_sw.sink.i = phi ptr [ %hub_role_sw.i, %do.end65.i ], [ %dev_role_sw.i, %do.end44.i ], [ %reset.i, %do.end29.i ], [ %typec_vbus.i, %do.end17.i ], [ %otg_switch.i, %do.end.i ]
  %30 = ptrtoint ptr %hub_role_sw.sink.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hub_role_sw.sink.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hub_role_switch.i) #5
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %hisi_hikey_usb_of_role_switch.exit.if.end28_crit_edge, label %hisi_hikey_usb_of_role_switch.exit.cleanup_crit_edge

hisi_hikey_usb_of_role_switch.exit.cleanup_crit_edge: ; preds = %hisi_hikey_usb_of_role_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hisi_hikey_usb_of_role_switch.exit.if.end28_crit_edge: ; preds = %hisi_hikey_usb_of_role_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %hisi_hikey_usb_of_role_switch.exit.if.end28_crit_edge, %hisi_hikey_usb_of_role_switch.exit.thread
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %hisi_hikey_usb_of_role_switch.exit.cleanup_crit_edge, %hisi_hikey_usb_of_role_switch.exit.thread50, %do.end19, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end13 ], [ %8, %do.end19 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %32, %hisi_hikey_usb_of_role_switch.exit.cleanup_crit_edge ], [ -517, %hisi_hikey_usb_of_role_switch.exit.thread50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_hikey_usb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hub_role_sw = getelementptr inbounds %struct.hisi_hikey_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hub_role_sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hub_role_sw, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @usb_role_switch_unregister(ptr noundef nonnull %3) #5
  %dev_role_sw = getelementptr inbounds %struct.hisi_hikey_usb, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev_role_sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_role_sw, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_role_switch_put(ptr noundef nonnull %5) #5
  br label %if.end5

if.else:                                          ; preds = %entry
  %regulator.i = getelementptr inbounds %struct.hisi_hikey_usb, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.if.end5_crit_edge, label %if.end.i

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i:                                         ; preds = %if.else
  %call.i = tail call i32 @regulator_is_enabled(ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.if.end5_crit_edge, label %if.end5.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator.i, align 4
  %call11.i = tail call i32 @regulator_disable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end5.i.if.end5_crit_edge, label %do.end.i

if.end5.i.if.end5_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.end5.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %if.else.if.end5_crit_edge, %if.then3, %if.then.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @relay_set_role_switch(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev_role_sw = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %dev_role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_role_sw, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %role2 = getelementptr i8, ptr %work, i32 -96
  %2 = ptrtoint ptr %role2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %typec_vbus.i = getelementptr i8, ptr %work, i32 -116
  %5 = ptrtoint ptr %typec_vbus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %typec_vbus.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb.usb_typec_power_ctrl.exit_crit_edge, label %if.end.i

sw.bb.usb_typec_power_ctrl.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_typec_power_ctrl.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef 0) #5
  br label %usb_typec_power_ctrl.exit

usb_typec_power_ctrl.exit:                        ; preds = %if.end.i, %sw.bb.usb_typec_power_ctrl.exit_crit_edge
  %otg_switch.i = getelementptr i8, ptr %work, i32 -120
  %7 = ptrtoint ptr %otg_switch.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg_switch.i, align 4
  %tobool.not.i25 = icmp eq ptr %8, null
  br i1 %tobool.not.i25, label %usb_typec_power_ctrl.exit.usb_switch_ctrl.exit_crit_edge, label %if.end.i26

usb_typec_power_ctrl.exit.usb_switch_ctrl.exit_crit_edge: ; preds = %usb_typec_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_switch_ctrl.exit

if.end.i26:                                       ; preds = %usb_typec_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %8, i32 noundef 1) #5
  br label %usb_switch_ctrl.exit

usb_switch_ctrl.exit:                             ; preds = %if.end.i26, %usb_typec_power_ctrl.exit.usb_switch_ctrl.exit_crit_edge
  %regulator.i = getelementptr i8, ptr %work, i32 -108
  %9 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regulator.i, align 4
  %tobool.not.i27 = icmp eq ptr %10, null
  br i1 %tobool.not.i27, label %usb_switch_ctrl.exit.sw.epilog_crit_edge, label %if.end.i28

usb_switch_ctrl.exit.sw.epilog_crit_edge:         ; preds = %usb_switch_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i28:                                       ; preds = %usb_switch_ctrl.exit
  %call.i = tail call i32 @regulator_is_enabled(ptr noundef nonnull %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end.i28.sw.epilog_crit_edge, label %if.end5.i

if.end.i28.sw.epilog_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i28
  %11 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regulator.i, align 4
  %call9.i = tail call i32 @regulator_enable(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool13.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool13.not.i, label %if.end5.i.sw.epilog_crit_edge, label %do.end.i

if.end5.i.sw.epilog_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %regulator.i29 = getelementptr i8, ptr %work, i32 -108
  %15 = ptrtoint ptr %regulator.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regulator.i29, align 4
  %tobool.not.i30 = icmp eq ptr %16, null
  br i1 %tobool.not.i30, label %sw.bb3.hub_power_ctrl.exit37_crit_edge, label %if.end.i33

sw.bb3.hub_power_ctrl.exit37_crit_edge:           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit37

if.end.i33:                                       ; preds = %sw.bb3
  %call.i31 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp eq i32 %call.i31, 0
  br i1 %cmp.i32, label %if.end.i33.hub_power_ctrl.exit37_crit_edge, label %if.end5.i34

if.end.i33.hub_power_ctrl.exit37_crit_edge:       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit37

if.end5.i34:                                      ; preds = %if.end.i33
  %17 = ptrtoint ptr %regulator.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regulator.i29, align 4
  %call11.i = tail call i32 @regulator_disable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i35 = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i35, label %if.end5.i34.hub_power_ctrl.exit37_crit_edge, label %do.end.i36

if.end5.i34.hub_power_ctrl.exit37_crit_edge:      ; preds = %if.end5.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit37

do.end.i36:                                       ; preds = %if.end5.i34
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #8
  br label %hub_power_ctrl.exit37

hub_power_ctrl.exit37:                            ; preds = %do.end.i36, %if.end5.i34.hub_power_ctrl.exit37_crit_edge, %if.end.i33.hub_power_ctrl.exit37_crit_edge, %sw.bb3.hub_power_ctrl.exit37_crit_edge
  %otg_switch.i38 = getelementptr i8, ptr %work, i32 -120
  %21 = ptrtoint ptr %otg_switch.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %otg_switch.i38, align 4
  %tobool.not.i39 = icmp eq ptr %22, null
  br i1 %tobool.not.i39, label %hub_power_ctrl.exit37.usb_switch_ctrl.exit41_crit_edge, label %if.end.i40

hub_power_ctrl.exit37.usb_switch_ctrl.exit41_crit_edge: ; preds = %hub_power_ctrl.exit37
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_switch_ctrl.exit41

if.end.i40:                                       ; preds = %hub_power_ctrl.exit37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %22, i32 noundef 0) #5
  br label %usb_switch_ctrl.exit41

usb_switch_ctrl.exit41:                           ; preds = %if.end.i40, %hub_power_ctrl.exit37.usb_switch_ctrl.exit41_crit_edge
  %typec_vbus.i42 = getelementptr i8, ptr %work, i32 -116
  %23 = ptrtoint ptr %typec_vbus.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %typec_vbus.i42, align 4
  %tobool.not.i43 = icmp eq ptr %24, null
  br i1 %tobool.not.i43, label %usb_switch_ctrl.exit41.sw.epilog_crit_edge, label %if.end.i44

usb_switch_ctrl.exit41.sw.epilog_crit_edge:       ; preds = %usb_switch_ctrl.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i44:                                       ; preds = %usb_switch_ctrl.exit41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %24, i32 noundef 1) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %regulator.i46 = getelementptr i8, ptr %work, i32 -108
  %25 = ptrtoint ptr %regulator.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regulator.i46, align 4
  %tobool.not.i47 = icmp eq ptr %26, null
  br i1 %tobool.not.i47, label %sw.bb4.hub_power_ctrl.exit55_crit_edge, label %if.end.i50

sw.bb4.hub_power_ctrl.exit55_crit_edge:           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit55

if.end.i50:                                       ; preds = %sw.bb4
  %call.i48 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp eq i32 %call.i48, 0
  br i1 %cmp.i49, label %if.end.i50.hub_power_ctrl.exit55_crit_edge, label %if.end5.i51

if.end.i50.hub_power_ctrl.exit55_crit_edge:       ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit55

if.end5.i51:                                      ; preds = %if.end.i50
  %27 = ptrtoint ptr %regulator.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regulator.i46, align 4
  %call11.i52 = tail call i32 @regulator_disable(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i52)
  %tobool13.not.i53 = icmp eq i32 %call11.i52, 0
  br i1 %tobool13.not.i53, label %if.end5.i51.hub_power_ctrl.exit55_crit_edge, label %do.end.i54

if.end5.i51.hub_power_ctrl.exit55_crit_edge:      ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %hub_power_ctrl.exit55

do.end.i54:                                       ; preds = %if.end5.i51
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #8
  br label %hub_power_ctrl.exit55

hub_power_ctrl.exit55:                            ; preds = %do.end.i54, %if.end5.i51.hub_power_ctrl.exit55_crit_edge, %if.end.i50.hub_power_ctrl.exit55_crit_edge, %sw.bb4.hub_power_ctrl.exit55_crit_edge
  %typec_vbus.i56 = getelementptr i8, ptr %work, i32 -116
  %31 = ptrtoint ptr %typec_vbus.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %typec_vbus.i56, align 4
  %tobool.not.i57 = icmp eq ptr %32, null
  br i1 %tobool.not.i57, label %hub_power_ctrl.exit55.usb_typec_power_ctrl.exit59_crit_edge, label %if.end.i58

hub_power_ctrl.exit55.usb_typec_power_ctrl.exit59_crit_edge: ; preds = %hub_power_ctrl.exit55
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_typec_power_ctrl.exit59

if.end.i58:                                       ; preds = %hub_power_ctrl.exit55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %32, i32 noundef 0) #5
  br label %usb_typec_power_ctrl.exit59

usb_typec_power_ctrl.exit59:                      ; preds = %if.end.i58, %hub_power_ctrl.exit55.usb_typec_power_ctrl.exit59_crit_edge
  %otg_switch.i60 = getelementptr i8, ptr %work, i32 -120
  %33 = ptrtoint ptr %otg_switch.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %otg_switch.i60, align 4
  %tobool.not.i61 = icmp eq ptr %34, null
  br i1 %tobool.not.i61, label %usb_typec_power_ctrl.exit59.sw.epilog_crit_edge, label %if.end.i62

usb_typec_power_ctrl.exit59.sw.epilog_crit_edge:  ; preds = %usb_typec_power_ctrl.exit59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i62:                                       ; preds = %usb_typec_power_ctrl.exit59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %34, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i62, %usb_typec_power_ctrl.exit59.sw.epilog_crit_edge, %if.end.i44, %usb_switch_ctrl.exit41.sw.epilog_crit_edge, %do.end.i, %if.end5.i.sw.epilog_crit_edge, %if.end.i28.sw.epilog_crit_edge, %usb_switch_ctrl.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %35 = ptrtoint ptr %dev_role_sw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_role_sw, align 4
  %37 = ptrtoint ptr %role2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %role2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call = tail call i32 @usb_role_switch_set_role(ptr noundef %36, i32 noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_usb_role_switch_set(ptr noundef %sw, i32 noundef %role) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev_role_sw = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %dev_role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_role_sw, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %role2 = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %role2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %role, ptr %role2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %work = getelementptr inbounds %struct.hisi_hikey_usb, ptr %call, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_hisi_hikey_usb__288_273_hisi_hikey_usb_driver_init6, !1, !"__initcall__kmod_hisi_hikey_usb__288_273_hisi_hikey_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_hisi_hikey_usb_driver_exit, !1, !"__exitcall_hisi_hikey_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 275, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 276, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 277, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 268, i32 11}
!12 = !{ptr @hisi_hikey_usb_driver, !13, !"hisi_hikey_usb_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 264, i32 31}
!14 = !{ptr @hisi_hikey_usb_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 220, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 222, i32 54}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 225, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hisi_hikey_usb_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @hisi_hikey_usb_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 228, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hisi_hikey_usb_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hisi_hikey_usb_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 152, i32 38}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 155, i32 51}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 158, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hisi_hikey_usb_of_role_switch._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hisi_hikey_usb_of_role_switch._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 163, i32 51}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 166, i32 3}
!45 = !{ptr @hisi_hikey_usb_of_role_switch._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @hisi_hikey_usb_of_role_switch._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 172, i32 8}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 175, i32 3}
!51 = !{ptr @hisi_hikey_usb_of_role_switch._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hisi_hikey_usb_of_role_switch._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 184, i32 3}
!55 = !{ptr @hisi_hikey_usb_of_role_switch._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hisi_hikey_usb_of_role_switch._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @hisi_hikey_usb_of_role_switch.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 189, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 199, i32 3}
!62 = !{ptr @hisi_hikey_usb_of_role_switch._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hisi_hikey_usb_of_role_switch._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 69, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hub_power_ctrl._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @hub_power_ctrl._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @id_table_hisi_hikey_usb, !72, !"id_table_hisi_hikey_usb", i1 false, i1 false}
!72 = !{!"../drivers/misc/hisi_hikey_usb.c", i32 258, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
