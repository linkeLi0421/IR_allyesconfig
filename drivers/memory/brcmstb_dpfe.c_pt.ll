; ModuleID = '/llk/IR_all_yes/drivers/memory/brcmstb_dpfe.c_pt.bc'
source_filename = "../drivers/memory/brcmstb_dpfe.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.brcmstb_dpfe_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.dpfe_api = type { i32, ptr, ptr, [3 x [16 x i32]] }
%struct.firmware = type { i32, ptr, ptr }
%struct.dpfe_firmware_header = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_brcmstb_dpfe__170_946_brcmstb_dpfe_driver_init6 = internal global ptr @brcmstb_dpfe_driver_init, section ".initcall6.init", align 4
@brcmstb_dpfe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcmstb_dpfe_probe, ptr @brcmstb_dpfe_remove, ptr null, ptr null, ptr @brcmstb_dpfe_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_dpfe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcmstb_dpfe_driver_exit = internal global ptr @brcmstb_dpfe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [55 x i8] c"brcmstb_dpfe.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [58 x i8] c"brcmstb_dpfe.description=BRCMSTB DDR PHY Front End Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"brcmstb_dpfe.file=drivers/memory/brcmstb_dpfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [25 x i8] c"brcmstb_dpfe.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmstb-dpfe\00", [19 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7268-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_old_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_new_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,dpfe-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dpfe_api_v3 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpfe-cpu\00", [23 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 875, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't map DCPU registers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmstb_dpfe_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/memory/brcmstb_dpfe.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry_ptr = internal global ptr @brcmstb_dpfe_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dpfe-dmem\00", [22 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 882, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't map DCPU data memory\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry_ptr.11 = internal global ptr @brcmstb_dpfe_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dpfe-imem\00", [22 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 889, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't map DCPU instruction memory\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry_ptr.15 = internal global ptr @brcmstb_dpfe_probe._entry.13, section ".printk_index", align 4
@brcmstb_dpfe_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 899, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't determine API\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry_ptr.18 = internal global ptr @brcmstb_dpfe_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't download firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 910, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registered with API v%d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcmstb_dpfe_probe._entry_ptr.23 = internal global ptr @brcmstb_dpfe_probe._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpfe.bin\00", [23 x i8] zeroinitializer }, align 32
@dpfe_v2_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dpfe_v2_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dpfe_api_old_v2 = internal constant { { i32, ptr, ptr, [3 x <{ i32, i32, i32, i32, [12 x i32] }>] }, [52 x i8] } { { i32, ptr, ptr, [3 x <{ i32, i32, i32, i32, [12 x i32] }>] } { i32 1, ptr @.str.24, ptr @dpfe_v2_groups, [3 x <{ i32, i32, i32, i32, [12 x i32] }>] [<{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 1, i32 2, [12 x i32] zeroinitializer }>] }, [52 x i8] zeroinitializer }, align 32
@dpfe_v2_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dpfe_v2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dpfe_v2_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_dpfe_info, ptr @dev_attr_dpfe_refresh, ptr @dev_attr_dpfe_vendor, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_dpfe_info = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_info, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dpfe_refresh = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_refresh, ptr @store_refresh }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dpfe_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vendor, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dpfe_info\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%u.%u.%u.%u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERROR: driver private data not set\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@get_error_text.error_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Success\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Header code incorrect\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown command or argument\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Incorrect checksum\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Malformed command\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Timed out\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown error\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dpfe_refresh\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%#x %#x %#x %#x %#x %#x %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@get_msg_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 412, ptr @.str.41, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid message reply from DCPU: %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_msg_ptr\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@get_msg_ptr._entry_ptr = internal global ptr @get_msg_ptr._entry, section ".printk_index", align 4
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FATAL: communication error with DCPU\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpfe_vendor\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%#x %#x %#x %#x %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@dpfe_api_new_v2 = internal constant { { i32, ptr, ptr, [3 x <{ i32, i32, [14 x i32] }>] }, [52 x i8] } { { i32, ptr, ptr, [3 x <{ i32, i32, [14 x i32] }>] } { i32 2, ptr null, ptr @dpfe_v2_groups, [3 x <{ i32, i32, [14 x i32] }>] [<{ i32, i32, [14 x i32] }> <{ i32 1, i32 257, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 513, [14 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 514, [14 x i32] zeroinitializer }>] }, [52 x i8] zeroinitializer }, align 32
@dpfe_v3_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dpfe_v3_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dpfe_api_v3 = internal constant { { i32, ptr, ptr, <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32] }> }, [52 x i8] } { { i32, ptr, ptr, <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32] }> } { i32 3, ptr null, ptr @dpfe_v3_groups, <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, [14 x i32] }>, [16 x i32] }> <{ <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 257, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 514, [14 x i32] zeroinitializer }>, [16 x i32] zeroinitializer }> }, [52 x i8] zeroinitializer }, align 32
@dpfe_v3_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dpfe_v3_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dpfe_v3_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_dpfe_info, ptr @dev_attr_dpfe_dram, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_dpfe_dram = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_dram, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dpfe_dram\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%#x %#x %#x %#x %#x %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4261478910, i64 4262465790]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"brcmstb_dpfe_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 936, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 938, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"brcmstb_dpfe_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 924, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 869, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 872, i32 59 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 875, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 879, i32 59 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 882, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 886, i32 59 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 889, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 899, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 905, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 909, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 236, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"dpfe_v2_groups\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"dpfe_api_old_v2\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 234, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"dpfe_v2_group\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 219, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"dpfe_v2_attrs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 213, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"dev_attr_dpfe_info\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"dev_attr_dpfe_refresh\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"dev_attr_dpfe_vendor\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 207, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 727, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 703, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 707, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"error_text\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 307, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 308, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 308, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 309, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 309, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 24 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 208, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 762, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 411, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 415, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 209, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 822, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"dpfe_api_new_v2\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 264, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant [15 x i8] c"dpfe_v3_groups\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"dpfe_api_v3\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 285, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant [14 x i8] c"dpfe_v3_group\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 227, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"dpfe_v3_attrs\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 222, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"dev_attr_dpfe_dram\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 210, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [33 x i8] c"../drivers/memory/brcmstb_dpfe.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 845, i32 22 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_brcmstb_dpfe_driver_exit, ptr @__initcall__kmod_brcmstb_dpfe__170_946_brcmstb_dpfe_driver_init6, ptr @brcmstb_dpfe_driver_exit, ptr @brcmstb_dpfe_probe._entry, ptr @brcmstb_dpfe_probe._entry.13, ptr @brcmstb_dpfe_probe._entry.16, ptr @brcmstb_dpfe_probe._entry.20, ptr @brcmstb_dpfe_probe._entry.9, ptr @brcmstb_dpfe_probe._entry_ptr, ptr @brcmstb_dpfe_probe._entry_ptr.11, ptr @brcmstb_dpfe_probe._entry_ptr.15, ptr @brcmstb_dpfe_probe._entry_ptr.18, ptr @brcmstb_dpfe_probe._entry_ptr.23, ptr @get_msg_ptr._entry, ptr @get_msg_ptr._entry_ptr, ptr @brcmstb_dpfe_driver, ptr @.str, ptr @brcmstb_dpfe_of_match, ptr @brcmstb_dpfe_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @dpfe_v2_groups, ptr @dpfe_api_old_v2, ptr @dpfe_v2_group, ptr @dpfe_v2_attrs, ptr @dev_attr_dpfe_info, ptr @dev_attr_dpfe_refresh, ptr @dev_attr_dpfe_vendor, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @get_error_text.error_text, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @dpfe_api_new_v2, ptr @dpfe_v3_groups, ptr @dpfe_api_v3, ptr @dpfe_v3_group, ptr @dpfe_v3_attrs, ptr @dev_attr_dpfe_dram, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_dpfe_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v2_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_api_old_v2 to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v2_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v2_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dpfe_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dpfe_refresh to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dpfe_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_error_text.error_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_msg_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_api_new_v2 to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v3_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_api_v3 to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v3_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpfe_v3_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dpfe_dram to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_dpfe_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_dpfe_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_dpfe_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %lock = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmstb_dpfe_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #7
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #7
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #7
  %dmem = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dmem to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %dmem, align 4
  %cmp.i94 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call21 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.12) #7
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call21) #7
  %imem = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %imem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call22, ptr %imem, align 4
  %cmp.i95 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %call30 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %dpfe_api = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call30, ptr %dpfe_api, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %do.end39, label %if.end40, !prof !127

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %call41 = tail call fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call41, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %6 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpfe_api, align 4
  %sysfs_attrs = getelementptr inbounds %struct.dpfe_api, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %sysfs_attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysfs_attrs, align 4
  %call48 = tail call i32 @sysfs_create_groups(ptr noundef %dev1, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpfe_api, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end45.cleanup_crit_edge, %if.then43, %do.end39, %do.end28, %do.end19, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end10 ], [ -2, %do.end19 ], [ -2, %do.end28 ], [ -2, %do.end39 ], [ %call44, %if.then43 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end53 ], [ %call48, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dpfe_api = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpfe_api, align 4
  %sysfs_attrs = getelementptr inbounds %struct.dpfe_api, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sysfs_attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysfs_attrs, align 4
  tail call void @sysfs_remove_groups(ptr noundef %dev, ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_dpfe_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_dpfe_download_firmware(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %response = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !128
  %lock.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !129
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %7 = call ptr @memset(ptr %response, i32 255, i32 64)
  %call2 = call fastcc i32 @__send_command(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull %response)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  br i1 %tobool.not, label %if.then.cleanup38_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %dpfe_api = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpfe_api, align 4
  %fw_name = getelementptr inbounds %struct.dpfe_api, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_name, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.cleanup38_crit_edge, label %if.end7

if.end4.cleanup38_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end7:                                          ; preds = %if.end4
  %call10 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull %11, ptr noundef %1) #7
  %12 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %cond.false [
    i32 0, label %if.end13
    i32 -2, label %if.end7.cleanup38_crit_edge
  ]

if.end7.cleanup38_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end13:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32501506, i32 %18)
  %cmp.i = icmp eq i32 %18, -32501506
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %18, label %if.end13.release_fw_crit_edge [
    i32 -32501506, label %if.end13.if.end4.i_crit_edge
    i32 -33488386, label %if.end13.if.end4.i_crit_edge137
  ]

if.end13.if.end4.i_crit_edge137:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end13.if.end4.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end13.release_fw_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

if.end4.i:                                        ; preds = %if.end13.if.end4.i_crit_edge, %if.end13.if.end4.i_crit_edge137
  %dmem_size6.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %dmem_size6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dmem_size6.i, align 4
  br i1 %cmp.i, label %if.then5.i, label %if.else8.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %imem_size7.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %imem_size7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imem_size7.i, align 4
  br label %if.end11.i

if.else8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call i32 @llvm.bswap.i32(i32 %21) #7
  %imem_size10.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %16, i32 0, i32 3
  %25 = ptrtoint ptr %imem_size10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %imem_size10.i, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else8.i, %if.then5.i
  %dmem_size.0.i = phi i32 [ %21, %if.then5.i ], [ %24, %if.else8.i ]
  %imem_size.0.i = phi i32 [ %23, %if.then5.i ], [ %27, %if.else8.i ]
  %rem.i = and i32 %dmem_size.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp12.not.i = icmp eq i32 %rem.i, 0
  %rem13.i = and i32 %imem_size.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %cmp14.not.i = icmp eq i32 %rem13.i, 0
  %or.cond52.i = select i1 %cmp12.not.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond52.i, label %if.end16.i, label %if.end11.i.release_fw_crit_edge

if.end11.i.release_fw_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

if.end16.i:                                       ; preds = %if.end11.i
  %add.i = add i32 %imem_size.0.i, %dmem_size.0.i
  %add18.i = add i32 %add.i, 24
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %29)
  %cmp19.not.i = icmp eq i32 %add18.i, %29
  br i1 %cmp19.not.i, label %if.end17, label %if.end16.i.release_fw_crit_edge

if.end16.i.release_fw_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

if.end17:                                         ; preds = %if.end16.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 20
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 %dmem_size.0.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr23.i, i32 %imem_size.0.i
  %30 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr24.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #7
  %cond.i = select i1 %cmp.i, i32 %31, i32 %32
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !129
  call void @mutex_unlock(ptr noundef %lock.i) #7
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end17.__disable_dcpu.exit_crit_edge

if.end17.__disable_dcpu.exit_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %__disable_dcpu.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !129
  %40 = or i32 %39, 16777216
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !130
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %__disable_dcpu.exit

__disable_dcpu.exit:                              ; preds = %if.end.i, %if.end17.__disable_dcpu.exit_crit_edge
  %43 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 20
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %imem_size.0.i
  %dmem22 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 1
  %47 = ptrtoint ptr %dmem22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmem22, align 4
  %div1.i = lshr i32 %dmem_size.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dmem_size.0.i)
  %cmp3.not.i = icmp ult i32 %dmem_size.0.i, 4
  br i1 %cmp3.not.i, label %__disable_dcpu.exit.__write_firmware.exit_crit_edge, label %for.body.preheader.i

__disable_dcpu.exit.__write_firmware.exit_crit_edge: ; preds = %__disable_dcpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit

for.body.preheader.i:                             ; preds = %__disable_dcpu.exit
  %umax.i = call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i70 = getelementptr i32, ptr %48, i32 %i.04.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 0) #7, !srcloc !130
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %cmp.i, label %for.end.i.for.body3.i_crit_edge, label %for.end.i.for.body10.i_crit_edge

for.end.i.for.body10.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body10.i

for.end.i.for.body3.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.end.i.for.body3.i_crit_edge
  %i.18.i = phi i32 [ %inc6.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.end.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr21, i32 %i.18.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #7
  %add.ptr4.i = getelementptr i32, ptr %48, i32 %i.18.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %51) #7, !srcloc !130
  %inc6.i = add nuw nsw i32 %i.18.i, 1
  %exitcond13.not.i = icmp eq i32 %inc6.i, %umax.i
  br i1 %exitcond13.not.i, label %for.body3.i.__write_firmware.exit_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.body3.i.__write_firmware.exit_crit_edge:      ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.end.i.for.body10.i_crit_edge
  %i.26.i = phi i32 [ %inc14.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.end.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr i32, ptr %add.ptr21, i32 %i.26.i
  %52 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %48, i32 %i.26.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %53) #7, !srcloc !130
  %inc14.i = add nuw nsw i32 %i.26.i, 1
  %exitcond11.not.i = icmp eq i32 %inc14.i, %umax.i
  br i1 %exitcond11.not.i, label %for.body10.i.__write_firmware.exit_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.body10.i.__write_firmware.exit_crit_edge:     ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit

__write_firmware.exit:                            ; preds = %for.body10.i.__write_firmware.exit_crit_edge, %for.body3.i.__write_firmware.exit_crit_edge, %__disable_dcpu.exit.__write_firmware.exit_crit_edge
  %imem28 = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 2
  %54 = ptrtoint ptr %imem28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %imem28, align 4
  %div1.i72 = lshr i32 %imem_size.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %imem_size.0.i)
  %cmp3.not.i73 = icmp ult i32 %imem_size.0.i, 4
  br i1 %cmp3.not.i73, label %__write_firmware.exit.__write_firmware.exit101_crit_edge, label %for.body.preheader.i75

__write_firmware.exit.__write_firmware.exit101_crit_edge: ; preds = %__write_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit101

for.body.preheader.i75:                           ; preds = %__write_firmware.exit
  %umax.i74 = call i32 @llvm.umax.i32(i32 %div1.i72, i32 1) #7
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %for.body.preheader.i75
  %i.04.i76 = phi i32 [ %inc.i78, %for.body.i80.for.body.i80_crit_edge ], [ 0, %for.body.preheader.i75 ]
  %add.ptr.i77 = getelementptr i32, ptr %55, i32 %i.04.i76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 0) #7, !srcloc !130
  %inc.i78 = add nuw nsw i32 %i.04.i76, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, %umax.i74
  br i1 %exitcond.not.i79, label %for.end.i81, label %for.body.i80.for.body.i80_crit_edge

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i80

for.end.i81:                                      ; preds = %for.body.i80
  br i1 %cmp.i, label %for.end.i81.for.body3.i93_crit_edge, label %for.end.i81.for.body10.i99_crit_edge

for.end.i81.for.body10.i99_crit_edge:             ; preds = %for.end.i81
  br label %for.body10.i99

for.end.i81.for.body3.i93_crit_edge:              ; preds = %for.end.i81
  br label %for.body3.i93

for.body3.i93:                                    ; preds = %for.body3.i93.for.body3.i93_crit_edge, %for.end.i81.for.body3.i93_crit_edge
  %i.18.i88 = phi i32 [ %inc6.i91, %for.body3.i93.for.body3.i93_crit_edge ], [ 0, %for.end.i81.for.body3.i93_crit_edge ]
  %arrayidx.i89 = getelementptr i32, ptr %add.ptr, i32 %i.18.i88
  %56 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i89, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  %add.ptr4.i90 = getelementptr i32, ptr %55, i32 %i.18.i88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i90, i32 %58) #7, !srcloc !130
  %inc6.i91 = add nuw nsw i32 %i.18.i88, 1
  %exitcond13.not.i92 = icmp eq i32 %inc6.i91, %umax.i74
  br i1 %exitcond13.not.i92, label %for.body3.i93.__write_firmware.exit101_crit_edge, label %for.body3.i93.for.body3.i93_crit_edge

for.body3.i93.for.body3.i93_crit_edge:            ; preds = %for.body3.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i93

for.body3.i93.__write_firmware.exit101_crit_edge: ; preds = %for.body3.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit101

for.body10.i99:                                   ; preds = %for.body10.i99.for.body10.i99_crit_edge, %for.end.i81.for.body10.i99_crit_edge
  %i.26.i94 = phi i32 [ %inc14.i97, %for.body10.i99.for.body10.i99_crit_edge ], [ 0, %for.end.i81.for.body10.i99_crit_edge ]
  %arrayidx11.i95 = getelementptr i32, ptr %add.ptr, i32 %i.26.i94
  %59 = ptrtoint ptr %arrayidx11.i95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx11.i95, align 4
  %add.ptr12.i96 = getelementptr i32, ptr %55, i32 %i.26.i94
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i96, i32 %60) #7, !srcloc !130
  %inc14.i97 = add nuw nsw i32 %i.26.i94, 1
  %exitcond11.not.i98 = icmp eq i32 %inc14.i97, %umax.i74
  br i1 %exitcond11.not.i98, label %for.body10.i99.__write_firmware.exit101_crit_edge, label %for.body10.i99.for.body10.i99_crit_edge

for.body10.i99.for.body10.i99_crit_edge:          ; preds = %for.body10.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i99

for.body10.i99.__write_firmware.exit101_crit_edge: ; preds = %for.body10.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %__write_firmware.exit101

__write_firmware.exit101:                         ; preds = %for.body10.i99.__write_firmware.exit101_crit_edge, %for.body3.i93.__write_firmware.exit101_crit_edge, %__write_firmware.exit.__write_firmware.exit101_crit_edge
  %61 = ptrtoint ptr %dmem22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dmem22, align 4
  %63 = ptrtoint ptr %imem28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %imem28, align 4
  %65 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %46, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %__write_firmware.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %sequence4.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %46, i32 0, i32 1
  %67 = ptrtoint ptr %sequence4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sequence4.i, align 4
  %version5.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %46, i32 0, i32 2
  %69 = ptrtoint ptr %version5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %version5.i, align 4
  br label %if.end.i105

if.else.i:                                        ; preds = %__write_firmware.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %71 = call i32 @llvm.bswap.i32(i32 %66) #7
  %sequence7.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %46, i32 0, i32 1
  %72 = ptrtoint ptr %sequence7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sequence7.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #7
  %version8.i = getelementptr inbounds %struct.dpfe_firmware_header, ptr %46, i32 0, i32 2
  %75 = ptrtoint ptr %version8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %version8.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #7
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.else.i, %if.then.i
  %version.0.i = phi i32 [ %70, %if.then.i ], [ %77, %if.else.i ]
  %sequence.0.i = phi i32 [ %68, %if.then.i ], [ %74, %if.else.i ]
  %magic.0.i = phi i32 [ %66, %if.then.i ], [ %71, %if.else.i ]
  %add9.i = add i32 %add.i, %version.0.i
  %add10.i = add i32 %add9.i, %sequence.0.i
  %add11.i = add i32 %add10.i, %magic.0.i
  br i1 %cmp3.not.i, label %if.end.i105.for.cond14.preheader.i_crit_edge, label %for.body.i109.preheader

if.end.i105.for.cond14.preheader.i_crit_edge:     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader.i

for.body.i109.preheader:                          ; preds = %if.end.i105
  %umax = call i32 @llvm.umax.i32(i32 %div1.i, i32 1)
  br label %for.body.i109

for.cond14.preheader.i:                           ; preds = %for.body.i109.for.cond14.preheader.i_crit_edge, %if.end.i105.for.cond14.preheader.i_crit_edge
  %sum.0.lcssa.i = phi i32 [ %add11.i, %if.end.i105.for.cond14.preheader.i_crit_edge ], [ %add13.i, %for.body.i109.for.cond14.preheader.i_crit_edge ]
  br i1 %cmp3.not.i73, label %for.cond14.preheader.i.__verify_fw_checksum.exit_crit_edge, label %for.body18.i.preheader

for.cond14.preheader.i.__verify_fw_checksum.exit_crit_edge: ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__verify_fw_checksum.exit

for.body18.i.preheader:                           ; preds = %for.cond14.preheader.i
  %umax129 = call i32 @llvm.umax.i32(i32 %div1.i72, i32 1)
  br label %for.body18.i

for.body.i109:                                    ; preds = %for.body.i109.for.body.i109_crit_edge, %for.body.i109.preheader
  %sum.050.i = phi i32 [ %add13.i, %for.body.i109.for.body.i109_crit_edge ], [ %add11.i, %for.body.i109.preheader ]
  %i.049.i = phi i32 [ %inc.i107, %for.body.i109.for.body.i109_crit_edge ], [ 0, %for.body.i109.preheader ]
  %add.ptr.i106 = getelementptr i32, ptr %62, i32 %i.049.i
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #7, !srcloc !129
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %add13.i = add i32 %79, %sum.050.i
  %inc.i107 = add nuw nsw i32 %i.049.i, 1
  %exitcond.not = icmp eq i32 %inc.i107, %umax
  br i1 %exitcond.not, label %for.body.i109.for.cond14.preheader.i_crit_edge, label %for.body.i109.for.body.i109_crit_edge

for.body.i109.for.body.i109_crit_edge:            ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i109

for.body.i109.for.cond14.preheader.i_crit_edge:   ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.i.preheader
  %sum.154.i = phi i32 [ %add23.i, %for.body18.i.for.body18.i_crit_edge ], [ %sum.0.lcssa.i, %for.body18.i.preheader ]
  %i.153.i = phi i32 [ %inc25.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.body18.i.preheader ]
  %add.ptr20.i = getelementptr i32, ptr %64, i32 %i.153.i
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !129
  %81 = call i32 @llvm.bswap.i32(i32 %80) #7
  %add23.i = add i32 %81, %sum.154.i
  %inc25.i = add nuw nsw i32 %i.153.i, 1
  %exitcond130.not = icmp eq i32 %inc25.i, %umax129
  br i1 %exitcond130.not, label %for.body18.i.__verify_fw_checksum.exit_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.body18.i.__verify_fw_checksum.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__verify_fw_checksum.exit

__verify_fw_checksum.exit:                        ; preds = %for.body18.i.__verify_fw_checksum.exit_crit_edge, %for.cond14.preheader.i.__verify_fw_checksum.exit_crit_edge
  %sum.1.lcssa.i = phi i32 [ %sum.0.lcssa.i, %for.cond14.preheader.i.__verify_fw_checksum.exit_crit_edge ], [ %add23.i, %for.body18.i.__verify_fw_checksum.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sum.1.lcssa.i, i32 %cond.i)
  %cmp27.i.not = icmp eq i32 %sum.1.lcssa.i, %cond.i
  br i1 %cmp27.i.not, label %if.end37, label %__verify_fw_checksum.exit.release_fw_crit_edge

__verify_fw_checksum.exit.release_fw_crit_edge:   ; preds = %__verify_fw_checksum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

if.end37:                                         ; preds = %__verify_fw_checksum.exit
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %add.ptr.i112 = getelementptr i8, ptr %83, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #7, !srcloc !130
  %add.ptr2.i = getelementptr i8, ptr %83, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !130
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !129
  %85 = and i32 %84, -67108865
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %85) #7, !srcloc !130
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !129
  %87 = and i32 %86, -16777217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %87) #7, !srcloc !130
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %release_fw

release_fw:                                       ; preds = %if.end37, %__verify_fw_checksum.exit.release_fw_crit_edge, %if.end16.i.release_fw_crit_edge, %if.end11.i.release_fw_crit_edge, %if.end13.release_fw_crit_edge
  %ret.0 = phi i32 [ -1, %__verify_fw_checksum.exit.release_fw_crit_edge ], [ 0, %if.end37 ], [ -14, %if.end13.release_fw_crit_edge ], [ -14, %if.end11.i.release_fw_crit_edge ], [ -14, %if.end16.i.release_fw_crit_edge ]
  %88 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %89) #7
  br label %cleanup38

cleanup38:                                        ; preds = %release_fw, %cond.false, %if.end7.cleanup38_crit_edge, %if.end4.cleanup38_crit_edge, %if.then.cleanup38_crit_edge
  %retval.1 = phi i32 [ %ret.0, %release_fw ], [ 0, %if.then.cleanup38_crit_edge ], [ -19, %if.end4.cleanup38_crit_edge ], [ %call10, %cond.false ], [ -517, %if.end7.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__send_command(ptr noundef %priv, i32 noundef %cmd, ptr nocapture noundef %result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dpfe_api = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpfe_api, align 4
  %arrayidx = getelementptr %struct.dpfe_api, ptr %1, i32 0, i32 3, i32 %cmd
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %priv, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %add.ptr = getelementptr i8, ptr %3, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry
  %i.0136 = phi i32 [ 0, %entry ], [ %inc, %if.end5.for.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.end9, label %if.end5

if.end5:                                          ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #7
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then7.critedge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then7.critedge:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr i32, ptr %arrayidx, i32 2
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11)
  %cmp4.not.i = icmp eq i32 %add11, 0
  br i1 %cmp4.not.i, label %if.end9.get_msg_chksum.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.get_msg_chksum.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_msg_chksum.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %sum.05.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.06.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %sum.05.i
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add11
  br i1 %exitcond.not.i, label %for.body.i.get_msg_chksum.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.get_msg_chksum.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_msg_chksum.exit

get_msg_chksum.exit:                              ; preds = %for.body.i.get_msg_chksum.exit_crit_edge, %if.end9.get_msg_chksum.exit_crit_edge
  %sum.0.lcssa.i = phi i32 [ 0, %if.end9.get_msg_chksum.exit_crit_edge ], [ %add.i, %for.body.i.get_msg_chksum.exit_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %sum.0.lcssa.i)
  %mul = shl nuw nsw i32 %add11, 2
  %add18 = add nuw nsw i32 %mul, 256
  %add.ptr19 = getelementptr i8, ptr %3, i32 %add18
  br label %for.body15

for.body15:                                       ; preds = %for.inc25.for.body15_crit_edge, %get_msg_chksum.exit
  %i.1137 = phi i32 [ 0, %get_msg_chksum.exit ], [ %inc26, %for.inc25.for.body15_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1137, i32 %add11)
  %cmp16 = icmp eq i32 %i.1137, %add11
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #7, !srcloc !130
  br label %for.inc25

if.else:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx20 = getelementptr i32, ptr %arrayidx, i32 %i.1137
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %mul21 = shl nuw nsw i32 %i.1137, 2
  %add22 = add nuw nsw i32 %mul21, 256
  %add.ptr23 = getelementptr i8, ptr %3, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #7, !srcloc !130
  br label %for.inc25

for.inc25:                                        ; preds = %if.else, %if.then17
  %inc26 = add nuw nsw i32 %i.1137, 1
  %exitcond146.not = icmp eq i32 %inc26, 16
  br i1 %exitcond146.not, label %for.end27, label %for.inc25.for.body15_crit_edge

for.inc25.for.body15_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end27:                                        ; preds = %for.inc25
  %add.ptr28 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #7, !srcloc !130
  br label %for.body31

for.body31:                                       ; preds = %if.end38.for.body31_crit_edge, %for.end27
  %i.2142 = phi i32 [ 0, %for.end27 ], [ %inc40, %if.end38.for.body31_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp36.not = icmp eq i32 %13, 0
  br i1 %cmp36.not, label %if.end38, label %for.end41

if.end38:                                         ; preds = %for.body31
  tail call void @msleep(i32 noundef 1) #7
  %inc40 = add nuw nsw i32 %i.2142, 1
  %exitcond147.not = icmp eq i32 %inc40, 1000
  br i1 %exitcond147.not, label %if.end38.if.end61_crit_edge, label %if.end38.for.body31_crit_edge

if.end38.for.body31_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

for.end41:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %i.2142)
  %cmp42 = icmp eq i32 %i.2142, 1000
  br i1 %cmp42, label %for.end41.if.end61_crit_edge, label %for.body47.preheader

for.end41.if.end61_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

for.body47.preheader:                             ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr51 = getelementptr i8, ptr %3, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %result, align 4
  %add.ptr51.1 = getelementptr i8, ptr %3, i32 260
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.1) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx54.1 = getelementptr i32, ptr %result, i32 1
  %20 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx54.1, align 4
  %add.ptr51.2 = getelementptr i8, ptr %3, i32 264
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.2) #7, !srcloc !129
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %arrayidx54.2 = getelementptr i32, ptr %result, i32 2
  %23 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx54.2, align 4
  %add.ptr51.3 = getelementptr i8, ptr %3, i32 268
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.3) #7, !srcloc !129
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx54.3 = getelementptr i32, ptr %result, i32 3
  %26 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx54.3, align 4
  %add.ptr51.4 = getelementptr i8, ptr %3, i32 272
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.4) #7, !srcloc !129
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx54.4 = getelementptr i32, ptr %result, i32 4
  %29 = ptrtoint ptr %arrayidx54.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx54.4, align 4
  %add.ptr51.5 = getelementptr i8, ptr %3, i32 276
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.5) #7, !srcloc !129
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %arrayidx54.5 = getelementptr i32, ptr %result, i32 5
  %32 = ptrtoint ptr %arrayidx54.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx54.5, align 4
  %add.ptr51.6 = getelementptr i8, ptr %3, i32 280
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.6) #7, !srcloc !129
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx54.6 = getelementptr i32, ptr %result, i32 6
  %35 = ptrtoint ptr %arrayidx54.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx54.6, align 4
  %add.ptr51.7 = getelementptr i8, ptr %3, i32 284
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.7) #7, !srcloc !129
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx54.7 = getelementptr i32, ptr %result, i32 7
  %38 = ptrtoint ptr %arrayidx54.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx54.7, align 4
  %add.ptr51.8 = getelementptr i8, ptr %3, i32 288
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.8) #7, !srcloc !129
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %arrayidx54.8 = getelementptr i32, ptr %result, i32 8
  %41 = ptrtoint ptr %arrayidx54.8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx54.8, align 4
  %add.ptr51.9 = getelementptr i8, ptr %3, i32 292
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.9) #7, !srcloc !129
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %arrayidx54.9 = getelementptr i32, ptr %result, i32 9
  %44 = ptrtoint ptr %arrayidx54.9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx54.9, align 4
  %add.ptr51.10 = getelementptr i8, ptr %3, i32 296
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.10) #7, !srcloc !129
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx54.10 = getelementptr i32, ptr %result, i32 10
  %47 = ptrtoint ptr %arrayidx54.10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx54.10, align 4
  %add.ptr51.11 = getelementptr i8, ptr %3, i32 300
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.11) #7, !srcloc !129
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %arrayidx54.11 = getelementptr i32, ptr %result, i32 11
  %50 = ptrtoint ptr %arrayidx54.11 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx54.11, align 4
  %add.ptr51.12 = getelementptr i8, ptr %3, i32 304
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.12) #7, !srcloc !129
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %arrayidx54.12 = getelementptr i32, ptr %result, i32 12
  %53 = ptrtoint ptr %arrayidx54.12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx54.12, align 4
  %add.ptr51.13 = getelementptr i8, ptr %3, i32 308
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.13) #7, !srcloc !129
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %arrayidx54.13 = getelementptr i32, ptr %result, i32 13
  %56 = ptrtoint ptr %arrayidx54.13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx54.13, align 4
  %add.ptr51.14 = getelementptr i8, ptr %3, i32 312
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.14) #7, !srcloc !129
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %arrayidx54.14 = getelementptr i32, ptr %result, i32 14
  %59 = ptrtoint ptr %arrayidx54.14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx54.14, align 4
  %add.ptr51.15 = getelementptr i8, ptr %3, i32 316
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.15) #7, !srcloc !129
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %arrayidx54.15 = getelementptr i32, ptr %result, i32 15
  %62 = ptrtoint ptr %arrayidx54.15 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx54.15, align 4
  %63 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx54.2, align 4
  %add60 = add i32 %64, 3
  br label %if.end61

if.end61:                                         ; preds = %for.body47.preheader, %for.end41.if.end61_crit_edge, %if.end38.if.end61_crit_edge
  %cmp42152 = phi i1 [ false, %for.body47.preheader ], [ true, %for.end41.if.end61_crit_edge ], [ true, %if.end38.if.end61_crit_edge ]
  %ret.0 = phi i32 [ 0, %for.body47.preheader ], [ -5, %for.end41.if.end61_crit_edge ], [ -5, %if.end38.if.end61_crit_edge ]
  %resp.4 = phi i32 [ %14, %for.body47.preheader ], [ 16, %for.end41.if.end61_crit_edge ], [ 16, %if.end38.if.end61_crit_edge ]
  %chksum_idx.0 = phi i32 [ %add60, %for.body47.preheader ], [ %add11, %for.end41.if.end61_crit_edge ], [ %add11, %if.end38.if.end61_crit_edge ]
  %65 = ptrtoint ptr %dpfe_api to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dpfe_api, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i = icmp slt i32 %68, 2
  %cond.i = select i1 %cmp.i, i32 20, i32 16
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 %cond.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !130
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br i1 %cmp42152, label %if.end61.cleanup_crit_edge, label %if.end64

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chksum_idx.0)
  %cmp4.not.i126 = icmp eq i32 %chksum_idx.0, 0
  br i1 %cmp4.not.i126, label %if.end64.get_msg_chksum.exit135_crit_edge, label %if.end64.for.body.i133_crit_edge

if.end64.for.body.i133_crit_edge:                 ; preds = %if.end64
  br label %for.body.i133

if.end64.get_msg_chksum.exit135_crit_edge:        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_msg_chksum.exit135

for.body.i133:                                    ; preds = %for.body.i133.for.body.i133_crit_edge, %if.end64.for.body.i133_crit_edge
  %i.06.i127 = phi i32 [ %inc.i131, %for.body.i133.for.body.i133_crit_edge ], [ 0, %if.end64.for.body.i133_crit_edge ]
  %sum.05.i128 = phi i32 [ %add.i130, %for.body.i133.for.body.i133_crit_edge ], [ 0, %if.end64.for.body.i133_crit_edge ]
  %arrayidx.i129 = getelementptr i32, ptr %result, i32 %i.06.i127
  %71 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i129, align 4
  %add.i130 = add i32 %72, %sum.05.i128
  %inc.i131 = add nuw i32 %i.06.i127, 1
  %exitcond.not.i132 = icmp eq i32 %inc.i131, %chksum_idx.0
  br i1 %exitcond.not.i132, label %for.body.i133.get_msg_chksum.exit135_crit_edge, label %for.body.i133.for.body.i133_crit_edge

for.body.i133.for.body.i133_crit_edge:            ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i133

for.body.i133.get_msg_chksum.exit135_crit_edge:   ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_msg_chksum.exit135

get_msg_chksum.exit135:                           ; preds = %for.body.i133.get_msg_chksum.exit135_crit_edge, %if.end64.get_msg_chksum.exit135_crit_edge
  %sum.0.lcssa.i134 = phi i32 [ 0, %if.end64.get_msg_chksum.exit135_crit_edge ], [ %add.i130, %for.body.i133.get_msg_chksum.exit135_crit_edge ]
  %arrayidx66 = getelementptr i32, ptr %result, i32 %chksum_idx.0
  %73 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sum.0.lcssa.i134, i32 %74)
  %cmp67.not = icmp eq i32 %sum.0.lcssa.i134, %74
  %spec.select = select i1 %cmp67.not, i32 %resp.4, i32 -2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp70.not = icmp eq i32 %spec.select, 1
  br i1 %cmp70.not, label %get_msg_chksum.exit135.cleanup_crit_edge, label %if.then71

get_msg_chksum.exit135.cleanup_crit_edge:         ; preds = %get_msg_chksum.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %get_msg_chksum.exit135
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %spec.select, 2147483647
  %75 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !131
  %.neg = xor i32 %75, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %iszero72 = icmp eq i32 %and, 0
  %ffs73.neg = select i1 %iszero72, i32 0, i32 %.neg
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %get_msg_chksum.exit135.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then7.critedge
  %retval.0 = phi i32 [ -5, %if.then7.critedge ], [ %ret.0, %if.end61.cleanup_crit_edge ], [ %ffs73.neg, %if.then71 ], [ 0, %get_msg_chksum.exit135.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %response = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %generic_show.exit.thread18, label %if.end.i

generic_show.exit.thread18:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 36)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @__send_command(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %response) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then2.i.generic_show.exit_crit_edge, !prof !127

if.then2.i.generic_show.exit_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

generic_show.exit:                                ; preds = %if.then.i.i, %if.then2.i.generic_show.exit_crit_edge
  %i.addr.0.i.i = phi i32 [ 6, %if.then.i.i ], [ %sub.i, %if.then2.i.generic_show.exit_crit_edge ]
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %i.addr.0.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %generic_show.exit.if.end_crit_edge, label %generic_show.exit.cleanup_crit_edge

generic_show.exit.cleanup_crit_edge:              ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

generic_show.exit.if.end_crit_edge:               ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %generic_show.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %7, 24
  %shr2 = lshr i32 %7, 16
  %and3 = and i32 %shr2, 255
  %shr4 = lshr i32 %7, 8
  %and5 = and i32 %shr4, 255
  %and6 = and i32 %7, 255
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %shr, i32 noundef %and3, i32 noundef %and5, i32 noundef %and6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %generic_show.exit.cleanup_crit_edge, %generic_show.exit.thread18
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call4.i, %generic_show.exit.cleanup_crit_edge ], [ 35, %generic_show.exit.thread18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_refresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef writeonly %buf) #2 align 64 {
entry:
  %response = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %generic_show.exit.thread60, label %if.end.i

generic_show.exit.thread60:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 36)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @__send_command(ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %response) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then2.i.generic_show.exit_crit_edge, !prof !127

if.then2.i.generic_show.exit_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

generic_show.exit:                                ; preds = %if.then.i.i, %if.then2.i.generic_show.exit_crit_edge
  %i.addr.0.i.i = phi i32 [ 6, %if.then.i.i ], [ %sub.i, %if.then2.i.generic_show.exit_crit_edge ]
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %i.addr.0.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %generic_show.exit.if.end_crit_edge, label %generic_show.exit.cleanup_crit_edge

generic_show.exit.cleanup_crit_edge:              ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

generic_show.exit.if.end_crit_edge:               ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %generic_show.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %dpfe_api.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %dpfe_api.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpfe_api.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i54 = icmp sgt i32 %11, 2
  br i1 %cmp.i54, label %if.end.cleanup_crit_edge, label %if.end.i55, !prof !127

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i55:                                       ; preds = %if.end
  %shr.i = lshr i32 %7, 28
  %and3.i = and i32 %7, 268435455
  %12 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 256
  br label %get_msg_ptr.exit

sw.bb5.i:                                         ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  %dmem.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %dmem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmem.i, align 4
  br label %get_msg_ptr.exit

do.end.i:                                         ; preds = %if.end.i55
  %dev.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %7) #10
  %tobool7.not.i = icmp eq ptr %buf, null
  br i1 %tobool7.not.i, label %do.end.i.cleanup_crit_edge, label %if.then9.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 38)
  br label %cleanup

get_msg_ptr.exit:                                 ; preds = %sw.bb5.i, %sw.bb.i
  %.pn = phi ptr [ %16, %sw.bb5.i ], [ %add.ptr.i, %sw.bb.i ]
  %retval.0.i56 = getelementptr i8, ptr %.pn, i32 %and3.i
  %tobool3.not = icmp eq ptr %retval.0.i56, null
  br i1 %tobool3.not, label %get_msg_ptr.exit.cleanup_crit_edge, label %if.end5

get_msg_ptr.exit.cleanup_crit_edge:               ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %retval.0.i56, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  %conv = and i32 %20, 7
  %21 = lshr i32 %20, 3
  %conv11 = and i32 %21, 1
  %22 = lshr i32 %20, 4
  %conv14 = and i32 %22, 1
  %23 = lshr i32 %20, 5
  %conv17 = and i32 %23, 3
  %24 = lshr i32 %20, 7
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %retval.0.i56) #7, !srcloc !129
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %conv29 = and i32 %24, 1
  %add.ptr31 = getelementptr i8, ptr %retval.0.i56, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !129
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %call34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %26, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv29, i32 noundef %28)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %get_msg_ptr.exit.cleanup_crit_edge, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %generic_show.exit.cleanup_crit_edge, %generic_show.exit.thread60
  %retval.0 = phi i32 [ %call34, %if.end5 ], [ %call4.i, %generic_show.exit.cleanup_crit_edge ], [ 35, %generic_show.exit.thread60 ], [ 0, %get_msg_ptr.exit.cleanup_crit_edge ], [ 37, %if.then9.i ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_refresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %response = alloca [16 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !128
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call2 = call fastcc i32 @__send_command(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %response)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %dpfe_api.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dpfe_api.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpfe_api.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp sgt i32 %9, 2
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end.i, !prof !127

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %shr.i = lshr i32 %5, 28
  %and3.i = and i32 %5, 268435455
  %10 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 256
  br label %get_msg_ptr.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dmem.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dmem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmem.i, align 4
  br label %get_msg_ptr.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %16, ptr noundef nonnull @.str.39, i32 noundef %5) #10
  br label %cleanup

get_msg_ptr.exit:                                 ; preds = %sw.bb5.i, %sw.bb.i
  %.pn = phi ptr [ %14, %sw.bb5.i ], [ %add.ptr.i, %sw.bb.i ]
  %retval.0.i = getelementptr i8, ptr %.pn, i32 %and3.i
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %get_msg_ptr.exit.cleanup_crit_edge, label %if.end8

get_msg_ptr.exit.cleanup_crit_edge:               ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i, i32 %19) #7, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %get_msg_ptr.exit.cleanup_crit_edge, %do.end.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -5, %get_msg_ptr.exit.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vendor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef writeonly %buf) #2 align 64 {
entry:
  %response = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %generic_show.exit.thread53, label %if.end.i

generic_show.exit.thread53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 36)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @__send_command(ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %response) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then2.i.generic_show.exit_crit_edge, !prof !127

if.then2.i.generic_show.exit_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

generic_show.exit:                                ; preds = %if.then.i.i, %if.then2.i.generic_show.exit_crit_edge
  %i.addr.0.i.i = phi i32 [ 6, %if.then.i.i ], [ %sub.i, %if.then2.i.generic_show.exit_crit_edge ]
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %i.addr.0.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %generic_show.exit.if.end_crit_edge, label %generic_show.exit.cleanup_crit_edge

generic_show.exit.cleanup_crit_edge:              ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

generic_show.exit.if.end_crit_edge:               ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %generic_show.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %dpfe_api.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %dpfe_api.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpfe_api.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i47 = icmp sgt i32 %11, 2
  br i1 %cmp.i47, label %if.end.cleanup_crit_edge, label %if.end.i48, !prof !127

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i48:                                       ; preds = %if.end
  %shr.i = lshr i32 %7, 28
  %and3.i = and i32 %7, 268435455
  %12 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %shr.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 256
  br label %get_msg_ptr.exit

sw.bb5.i:                                         ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %dmem.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %dmem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmem.i, align 4
  br label %get_msg_ptr.exit

do.end.i:                                         ; preds = %if.end.i48
  %dev.i = getelementptr inbounds %struct.brcmstb_dpfe_priv, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %7) #10
  %tobool7.not.i = icmp eq ptr %buf, null
  br i1 %tobool7.not.i, label %do.end.i.cleanup_crit_edge, label %if.then9.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 38)
  br label %cleanup

get_msg_ptr.exit:                                 ; preds = %sw.bb5.i, %sw.bb.i
  %.pn = phi ptr [ %16, %sw.bb5.i ], [ %add.ptr.i, %sw.bb.i ]
  %retval.0.i49 = getelementptr i8, ptr %.pn, i32 %and3.i
  %tobool3.not = icmp eq ptr %retval.0.i49, null
  br i1 %tobool3.not, label %get_msg_ptr.exit.cleanup_crit_edge, label %if.end5

get_msg_ptr.exit.cleanup_crit_edge:               ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %get_msg_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %retval.0.i49) #7, !srcloc !129
  %21 = and i32 %20, 255
  %add.ptr8 = getelementptr i8, ptr %retval.0.i49, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !129
  %23 = and i32 %22, 255
  %add.ptr14 = getelementptr i8, ptr %retval.0.i49, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !129
  %25 = and i32 %24, 255
  %add.ptr20 = getelementptr i8, ptr %retval.0.i49, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !129
  %27 = and i32 %26, 255
  %add.ptr26 = getelementptr i8, ptr %retval.0.i49, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !129
  %29 = lshr i32 %28, 24
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %get_msg_ptr.exit.cleanup_crit_edge, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %generic_show.exit.cleanup_crit_edge, %generic_show.exit.thread53
  %retval.0 = phi i32 [ %call30, %if.end5 ], [ %call4.i, %generic_show.exit.cleanup_crit_edge ], [ 35, %generic_show.exit.thread53 ], [ 0, %get_msg_ptr.exit.cleanup_crit_edge ], [ 37, %if.then9.i ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_dram(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %response = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #7
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %generic_show.exit.thread25, label %if.end.i

generic_show.exit.thread25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 36)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @__send_command(ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %response) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then2.i.generic_show.exit_crit_edge, !prof !127

if.then2.i.generic_show.exit_crit_edge:           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generic_show.exit

generic_show.exit:                                ; preds = %if.then.i.i, %if.then2.i.generic_show.exit_crit_edge
  %i.addr.0.i.i = phi i32 [ 6, %if.then.i.i ], [ %sub.i, %if.then2.i.generic_show.exit_crit_edge ]
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @get_error_text.error_text, i32 0, i32 %i.addr.0.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %generic_show.exit.if.end_crit_edge, label %generic_show.exit.cleanup_crit_edge

generic_show.exit.cleanup_crit_edge:              ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

generic_show.exit.if.end_crit_edge:               ; preds = %generic_show.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %generic_show.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %7, 255
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %9, 255
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %11, 255
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %13, 255
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %and9 = and i32 %15, 255
  %arrayidx10 = getelementptr inbounds [16 x i32], ptr %response, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %17, 255
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %and, i32 noundef %and3, i32 noundef %and5, i32 noundef %and7, i32 noundef %and9, i32 noundef %and11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %generic_show.exit.cleanup_crit_edge, %generic_show.exit.thread25
  %retval.0 = phi i32 [ %call12, %if.end ], [ %call4.i, %generic_show.exit.cleanup_crit_edge ], [ 35, %generic_show.exit.thread25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !94, !95, !96, !97, !99, !101, !102, !104, !106, !108, !110, !111, !113, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_brcmstb_dpfe__170_946_brcmstb_dpfe_driver_init6, !1, !"__initcall__kmod_brcmstb_dpfe__170_946_brcmstb_dpfe_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 946, i32 1}
!2 = !{ptr @__exitcall_brcmstb_dpfe_driver_exit, !1, !"__exitcall_brcmstb_dpfe_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 948, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 949, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 950, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 938, i32 11}
!12 = !{ptr @brcmstb_dpfe_driver, !13, !"brcmstb_dpfe_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 936, i32 31}
!14 = !{ptr @brcmstb_dpfe_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 869, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 872, i32 59}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 875, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @brcmstb_dpfe_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @brcmstb_dpfe_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 879, i32 59}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 882, i32 3}
!31 = !{ptr @brcmstb_dpfe_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @brcmstb_dpfe_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 886, i32 59}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 889, i32 3}
!37 = !{ptr @brcmstb_dpfe_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @brcmstb_dpfe_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 899, i32 3}
!41 = !{ptr @brcmstb_dpfe_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @brcmstb_dpfe_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 905, i32 34}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 909, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @brcmstb_dpfe_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @brcmstb_dpfe_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @brcmstb_dpfe_of_match, !51, !"brcmstb_dpfe_of_match", i1 false, i1 false}
!51 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 924, i32 34}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 236, i32 13}
!54 = !{ptr @dpfe_api_old_v2, !55, !"dpfe_api_old_v2", i1 false, i1 false}
!55 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 234, i32 30}
!56 = !{ptr @dpfe_v2_groups, !57, !"dpfe_v2_groups", i1 false, i1 false}
!57 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 219, i32 1}
!58 = !{ptr @dpfe_v2_group, !57, !"dpfe_v2_group", i1 false, i1 false}
!59 = !{ptr @dpfe_v2_attrs, !60, !"dpfe_v2_attrs", i1 false, i1 false}
!60 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 213, i32 26}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 207, i32 8}
!63 = !{ptr @dev_attr_dpfe_info, !62, !"dev_attr_dpfe_info", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 727, i32 22}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 703, i32 23}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 707, i32 23}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 308, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 308, i32 14}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 309, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 309, i32 34}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 310, i32 3}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 310, i32 24}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 310, i32 37}
!84 = !{ptr @get_error_text.error_text, !85, !"error_text", i1 false, i1 false}
!85 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 307, i32 28}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 208, i32 8}
!88 = !{ptr @dev_attr_dpfe_refresh, !87, !"dev_attr_dpfe_refresh", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 762, i32 22}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 411, i32 3}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @get_msg_ptr._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @get_msg_ptr._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 415, i32 5}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 209, i32 8}
!101 = !{ptr @dev_attr_dpfe_vendor, !100, !"dev_attr_dpfe_vendor", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 822, i32 22}
!104 = !{ptr @dpfe_api_new_v2, !105, !"dpfe_api_new_v2", i1 false, i1 false}
!105 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 264, i32 30}
!106 = !{ptr @dpfe_api_v3, !107, !"dpfe_api_v3", i1 false, i1 false}
!107 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 285, i32 30}
!108 = !{ptr @dpfe_v3_groups, !109, !"dpfe_v3_groups", i1 false, i1 false}
!109 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 227, i32 1}
!110 = !{ptr @dpfe_v3_group, !109, !"dpfe_v3_group", i1 false, i1 false}
!111 = !{ptr @dpfe_v3_attrs, !112, !"dpfe_v3_attrs", i1 false, i1 false}
!112 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 222, i32 26}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 210, i32 8}
!115 = !{ptr @dev_attr_dpfe_dram, !114, !"dev_attr_dpfe_dram", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/brcmstb_dpfe.c", i32 845, i32 22}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{!"auto-init"}
!129 = !{i64 4192846}
!130 = !{i64 4192428}
!131 = !{i32 0, i32 33}
