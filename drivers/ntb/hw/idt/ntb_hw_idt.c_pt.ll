; ModuleID = '/llk/IR_all_yes/drivers/ntb/hw/idt/ntb_hw_idt.c_pt.bc'
source_filename = "../drivers/ntb/hw/idt/ntb_hw_idt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.idt_ntb_port = type { i32, i32, i32, i32, i32, [6 x %struct.idt_ntb_bar] }
%struct.idt_ntb_bar = type { i32, i32, i32, i32 }
%struct.idt_ntb_part = type { i32, i32, [4 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idt_ntb_regs = type { [6 x %struct.idt_ntb_bar], [4 x %struct.idt_ntb_msg] }
%struct.idt_ntb_msg = type { i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
%struct.idt_ntb_dev = type { %struct.ntb_dev, ptr, i8, i8, i8, [8 x %struct.idt_ntb_peer], [24 x i8], [8 x i8], %struct.spinlock, i8, ptr, %struct.spinlock, [4 x %struct.spinlock], ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr }
%struct.idt_ntb_peer = type { i8, i8, i8, ptr }
%struct.idt_89hpes_cfg = type { ptr, i8, [0 x i8] }
%struct.idt_mw_cfg = type { i32, i8, i8, i64, i64, i64 }
%struct.pci_bus_region = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_description236 = internal constant [63 x i8] c"ntb_hw_idt.description=IDT PCI-E Non-Transparent Bridge Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version237 = internal constant [23 x i8] c"ntb_hw_idt.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntb_hw_idt\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file238 = internal constant [46 x i8] c"ntb_hw_idt.file=drivers/ntb/hw/idt/ntb_hw_idt\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"ntb_hw_idt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [30 x i8] c"ntb_hw_idt.author=T-platforms\00", section ".modinfo", align 1
@__initcall__kmod_ntb_hw_idt__274_2903_idt_pci_driver_init6 = internal global ptr @idt_pci_driver_init, section ".initcall6.init", align 4
@idt_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @idt_pci_tbl, ptr @idt_pci_probe, ptr @idt_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@dbgfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_idt_pci_driver_exit = internal global ptr @idt_pci_driver_exit, section ".exitcall.exit", align 4
@idt_pci_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idt_pci_driver_init\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ntb/hw/idt/ntb_hw_idt.c\00", [32 x i8] zeroinitializer }, align 32
@idt_pci_driver_init._entry_ptr = internal global ptr @idt_pci_driver_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IDT PCI-E Non-Transparent Bridge Driver\00", [56 x i8] zeroinitializer }, align 32
@idt_pci_tbl = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4381, i32 32913, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes24nt6ag2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32911, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes32nt8ag2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32904, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes32nt8bg2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32914, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes12nt12g2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32912, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes16nt16g2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32910, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes24nt24g2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32908, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes32nt24ag2_config to i32), i32 0 }, %struct.pci_device_id { i32 4381, i32 32906, i32 -1, i32 -1, i32 425984, i32 16776960, i32 ptrtoint (ptr @idt_89hpes32nt24bg2_config to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES24NT6AG2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes24nt6ag2_config = internal constant { <{ ptr, i8, [6 x i8] }>, [21 x i8] } { <{ ptr, i8, [6 x i8] }> <{ ptr @.str.7, i8 6, [6 x i8] c"\00\02\04\06\08\0C" }>, [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES32NT8AG2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes32nt8ag2_config = internal constant { <{ ptr, i8, [8 x i8] }>, [19 x i8] } { <{ ptr, i8, [8 x i8] }> <{ ptr @.str.9, i8 8, [8 x i8] c"\00\02\04\06\08\0C\10\14" }>, [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES32NT8BG2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes32nt8bg2_config = internal constant { <{ ptr, i8, [8 x i8] }>, [19 x i8] } { <{ ptr, i8, [8 x i8] }> <{ ptr @.str.11, i8 8, [8 x i8] c"\00\02\04\06\08\0C\10\14" }>, [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES12NT12G2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes12nt12g2_config = internal constant { { ptr, i8, [3 x i8] }, [24 x i8] } { { ptr, i8, [3 x i8] } { ptr @.str.13, i8 3, [3 x i8] c"\00\08\10" }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES16NT16G2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes16nt16g2_config = internal constant { <{ ptr, i8, [4 x i8] }>, [23 x i8] } { <{ ptr, i8, [4 x i8] }> <{ ptr @.str.15, i8 4, [4 x i8] c"\00\08\0C\10" }>, [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"89HPES24NT24G2\00", [17 x i8] zeroinitializer }, align 32
@idt_89hpes24nt24g2_config = internal constant { <{ ptr, i8, [8 x i8] }>, [19 x i8] } { <{ ptr, i8, [8 x i8] }> <{ ptr @.str.17, i8 8, [8 x i8] c"\00\02\04\06\08\0C\10\14" }>, [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"89HPES32NT24AG2\00", [16 x i8] zeroinitializer }, align 32
@idt_89hpes32nt24ag2_config = internal constant { <{ ptr, i8, [8 x i8] }>, [19 x i8] } { <{ ptr, i8, [8 x i8] }> <{ ptr @.str.19, i8 8, [8 x i8] c"\00\02\04\06\08\0C\10\14" }>, [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"89HPES32NT24BG2\00", [16 x i8] zeroinitializer }, align 32
@idt_89hpes32nt24bg2_config = internal constant { <{ ptr, i8, [8 x i8] }>, [19 x i8] } { <{ ptr, i8, [8 x i8] }> <{ ptr @.str.21, i8 8, [8 x i8] c"\00\02\04\06\08\0C\10\14" }>, [19 x i8] zeroinitializer }, align 32
@idt_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 2787, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IDT NTB device is ready\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idt_pci_probe._entry_ptr = internal global ptr @idt_pci_probe._entry, section ".printk_index", align 4
@idt_check_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 2565, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read BARSETUP0 config register\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt_check_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@idt_check_setup._entry_ptr = internal global ptr @idt_check_setup._entry, section ".printk_index", align 4
@idt_check_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.5, i32 2571, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BAR0 doesn't map config space\00", [34 x i8] zeroinitializer }, align 32
@idt_check_setup._entry_ptr.32 = internal global ptr @idt_check_setup._entry.30, section ".printk_index", align 4
@idt_check_setup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.5, i32 2577, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid size of config space\00", [35 x i8] zeroinitializer }, align 32
@idt_check_setup._entry_ptr.35 = internal global ptr @idt_check_setup._entry.33, section ".printk_index", align 4
@idt_check_setup.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.5, ptr @.str.36, i8 2, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NTB device pre-initialized correctly\00", [59 x i8] zeroinitializer }, align 32
@idt_create_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 2607, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Memory allocation failed for descriptor\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_create_dev\00", [17 x i8] zeroinitializer }, align 32
@idt_create_dev._entry_ptr = internal global ptr @idt_create_dev._entry, section ".printk_index", align 4
@idt_create_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ndev->db_mask_lock\00", [44 x i8] zeroinitializer }, align 32
@idt_create_dev.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ndev->msg_mask_lock\00", [43 x i8] zeroinitializer }, align 32
@idt_create_dev.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ndev->gasa_lock\00", [47 x i8] zeroinitializer }, align 32
@idt_create_dev._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.5, i32 2621, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IDT %s discovered\00", [46 x i8] zeroinitializer }, align 32
@idt_create_dev._entry_ptr.46 = internal global ptr @idt_create_dev._entry.44, section ".printk_index", align 4
@idt_create_dev.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.5, ptr @.str.47, i8 2, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NTB device descriptor created\00", [34 x i8] zeroinitializer }, align 32
@idt_init_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 2647, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set DMA bit mask\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt_init_pci\00", [19 x i8] zeroinitializer }, align 32
@idt_init_pci._entry_ptr = internal global ptr @idt_init_pci._entry, section ".printk_index", align 4
@idt_init_pci._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 2650, ptr @.str.52, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot set DMA highmem bit mask\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@idt_init_pci._entry_ptr.53 = internal global ptr @idt_init_pci._entry.50, section ".printk_index", align 4
@idt_init_pci._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.5, i32 2659, ptr @.str.52, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCIe AER capability disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@idt_init_pci._entry_ptr.56 = internal global ptr @idt_init_pci._entry.54, section ".printk_index", align 4
@idt_init_pci._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.5, i32 2666, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable PCIe device\0A\00", [34 x i8] zeroinitializer }, align 32
@idt_init_pci._entry_ptr.59 = internal global ptr @idt_init_pci._entry.57, section ".printk_index", align 4
@idt_init_pci._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.49, ptr @.str.5, i32 2679, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request resources\0A\00", [35 x i8] zeroinitializer }, align 32
@idt_init_pci._entry_ptr.62 = internal global ptr @idt_init_pci._entry.60, section ".printk_index", align 4
@idt_init_pci.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.63, i8 2, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NT-function PCIe interface initialized\00", [57 x i8] zeroinitializer }, align 32
@portdata_tbl = internal constant { [24 x %struct.idt_ntb_port], [672 x i8] } { [24 x %struct.idt_ntb_port] [%struct.idt_ntb_port { i32 4100, i32 4176, i32 5120, i32 254464, i32 254468, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 5232, i32 5236, i32 5240, i32 5244 }, %struct.idt_ntb_bar { i32 5248, i32 5252, i32 5256, i32 5260 }, %struct.idt_ntb_bar { i32 5264, i32 5268, i32 5272, i32 5276 }, %struct.idt_ntb_bar { i32 5280, i32 5284, i32 5288, i32 5292 }, %struct.idt_ntb_bar { i32 5296, i32 5300, i32 5304, i32 5308 }, %struct.idt_ntb_bar { i32 5312, i32 5316, i32 5320, i32 5324 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 20484, i32 20560, i32 21504, i32 254528, i32 254532, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 21616, i32 21620, i32 21624, i32 21628 }, %struct.idt_ntb_bar { i32 21632, i32 21636, i32 21640, i32 21644 }, %struct.idt_ntb_bar { i32 21648, i32 21652, i32 21656, i32 21660 }, %struct.idt_ntb_bar { i32 21664, i32 21668, i32 21672, i32 21676 }, %struct.idt_ntb_bar { i32 21680, i32 21684, i32 21688, i32 21692 }, %struct.idt_ntb_bar { i32 21696, i32 21700, i32 21704, i32 21708 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 36868, i32 36944, i32 37888, i32 254592, i32 254596, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 38000, i32 38004, i32 38008, i32 38012 }, %struct.idt_ntb_bar { i32 38016, i32 38020, i32 38024, i32 38028 }, %struct.idt_ntb_bar { i32 38032, i32 38036, i32 38040, i32 38044 }, %struct.idt_ntb_bar { i32 38048, i32 38052, i32 38056, i32 38060 }, %struct.idt_ntb_bar { i32 38064, i32 38068, i32 38072, i32 38076 }, %struct.idt_ntb_bar { i32 38080, i32 38084, i32 38088, i32 38092 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 53252, i32 53328, i32 54272, i32 254656, i32 254660, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 54384, i32 54388, i32 54392, i32 54396 }, %struct.idt_ntb_bar { i32 54400, i32 54404, i32 54408, i32 54412 }, %struct.idt_ntb_bar { i32 54416, i32 54420, i32 54424, i32 54428 }, %struct.idt_ntb_bar { i32 54432, i32 54436, i32 54440, i32 54444 }, %struct.idt_ntb_bar { i32 54448, i32 54452, i32 54456, i32 54460 }, %struct.idt_ntb_bar { i32 54464, i32 54468, i32 54472, i32 54476 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 69636, i32 69712, i32 70656, i32 254720, i32 254724, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 70768, i32 70772, i32 70776, i32 70780 }, %struct.idt_ntb_bar { i32 70784, i32 70788, i32 70792, i32 70796 }, %struct.idt_ntb_bar { i32 70800, i32 70804, i32 70808, i32 70812 }, %struct.idt_ntb_bar { i32 70816, i32 70820, i32 70824, i32 70828 }, %struct.idt_ntb_bar { i32 70832, i32 70836, i32 70840, i32 70844 }, %struct.idt_ntb_bar { i32 70848, i32 70852, i32 70856, i32 70860 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 102404, i32 102480, i32 103424, i32 254848, i32 254852, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 103536, i32 103540, i32 103544, i32 103548 }, %struct.idt_ntb_bar { i32 103552, i32 103556, i32 103560, i32 103564 }, %struct.idt_ntb_bar { i32 103568, i32 103572, i32 103576, i32 103580 }, %struct.idt_ntb_bar { i32 103584, i32 103588, i32 103592, i32 103596 }, %struct.idt_ntb_bar { i32 103600, i32 103604, i32 103608, i32 103612 }, %struct.idt_ntb_bar { i32 103616, i32 103620, i32 103624, i32 103628 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 135172, i32 135248, i32 136192, i32 254976, i32 254980, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 136304, i32 136308, i32 136312, i32 136316 }, %struct.idt_ntb_bar { i32 136320, i32 136324, i32 136328, i32 136332 }, %struct.idt_ntb_bar { i32 136336, i32 136340, i32 136344, i32 136348 }, %struct.idt_ntb_bar { i32 136352, i32 136356, i32 136360, i32 136364 }, %struct.idt_ntb_bar { i32 136368, i32 136372, i32 136376, i32 136380 }, %struct.idt_ntb_bar { i32 136384, i32 136388, i32 136392, i32 136396 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port { i32 167940, i32 168016, i32 168960, i32 255104, i32 255108, [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 169072, i32 169076, i32 169080, i32 169084 }, %struct.idt_ntb_bar { i32 169088, i32 169092, i32 169096, i32 169100 }, %struct.idt_ntb_bar { i32 169104, i32 169108, i32 169112, i32 169116 }, %struct.idt_ntb_bar { i32 169120, i32 169124, i32 169128, i32 169132 }, %struct.idt_ntb_bar { i32 169136, i32 169140, i32 169144, i32 169148 }, %struct.idt_ntb_bar { i32 169152, i32 169156, i32 169160, i32 169164 }] }, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer, %struct.idt_ntb_port zeroinitializer], [672 x i8] zeroinitializer }, align 32
@partdata_tbl = internal constant { [8 x %struct.idt_ntb_part], [32 x i8] } { [8 x %struct.idt_ntb_part] [%struct.idt_ntb_part { i32 254208, i32 254212, [4 x i32] [i32 257536, i32 257568, i32 257600, i32 257632] }, %struct.idt_ntb_part { i32 254240, i32 254244, [4 x i32] [i32 257540, i32 257572, i32 257604, i32 257636] }, %struct.idt_ntb_part { i32 254272, i32 254276, [4 x i32] [i32 257544, i32 257576, i32 257608, i32 257640] }, %struct.idt_ntb_part { i32 254304, i32 254308, [4 x i32] [i32 257548, i32 257580, i32 257612, i32 257644] }, %struct.idt_ntb_part { i32 254336, i32 254340, [4 x i32] [i32 257552, i32 257584, i32 257616, i32 257648] }, %struct.idt_ntb_part { i32 254368, i32 254372, [4 x i32] [i32 257556, i32 257588, i32 257620, i32 257652] }, %struct.idt_ntb_part { i32 254400, i32 254404, [4 x i32] [i32 257560, i32 257592, i32 257624, i32 257656] }, %struct.idt_ntb_part { i32 254432, i32 254436, [4 x i32] [i32 257564, i32 257596, i32 257628, i32 257660] }], [32 x i8] zeroinitializer }, align 32
@idt_scan_ports.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_scan_ports\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Local port: %hhu, num of peers: %hhu\0A\00", [58 x i8] zeroinitializer }, align 32
@idt_scan_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 535, ptr @.str.52, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No active peer found\0A\00", [42 x i8] zeroinitializer }, align 32
@idt_scan_ports._entry_ptr = internal global ptr @idt_scan_ports._entry, section ".printk_index", align 4
@idt_init_link.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ndev->mtbl_lock\00", [47 x i8] zeroinitializer }, align 32
@idt_init_link.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt_init_link\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NTB link status events initialized\00", [61 x i8] zeroinitializer }, align 32
@idt_init_mws._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1136, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to scan mws of local port %hhu\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt_init_mws\00", [19 x i8] zeroinitializer }, align 32
@idt_init_mws._entry_ptr = internal global ptr @idt_init_mws._entry, section ".printk_index", align 4
@idt_init_mws._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 1146, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to scan mws of port %hhu\00", [32 x i8] zeroinitializer }, align 32
@idt_init_mws._entry_ptr.74 = internal global ptr @idt_init_mws._entry.72, section ".printk_index", align 4
@idt_init_mws.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ndev->lut_lock\00", [16 x i8] zeroinitializer }, align 32
@idt_init_mws.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.76, i8 1, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Outbound and inbound MWs initialized\00", [59 x i8] zeroinitializer }, align 32
@idt_init_msg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ndev->msg_locks[midx]\00", [41 x i8] zeroinitializer }, align 32
@idt_init_msg.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.5, ptr @.str.79, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt_init_msg\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NTB Messaging initialized\00", [38 x i8] zeroinitializer }, align 32
@idt_init_temp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ndev->hwmon_mtx\00", [47 x i8] zeroinitializer }, align 32
@idt_temp_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @idt_temp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@idt_init_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 2093, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't create hwmon device\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt_init_temp\00", [18 x i8] zeroinitializer }, align 32
@idt_init_temp._entry_ptr = internal global ptr @idt_init_temp._entry, section ".printk_index", align 4
@idt_init_temp.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.5, ptr @.str.83, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Temperature HWmon interface registered\00", [57 x i8] zeroinitializer }, align 32
@idt_temp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @idt_temp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@idt_temp_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_lowest, ptr @sensor_dev_attr_temp1_highest, ptr @sensor_dev_attr_temp1_offset, ptr @dev_attr_temp1_reset_history, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idt_sysfs_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idt_sysfs_show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idt_sysfs_show_temp, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idt_sysfs_show_temp, ptr @idt_sysfs_set_temp }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp1_reset_history = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @idt_sysfs_reset_hist }, [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_lowest\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"temp1_highest\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp1_reset_history\00", [44 x i8] zeroinitializer }, align 32
@idt_init_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 2134, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate IRQ vector\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt_init_isr\00", [19 x i8] zeroinitializer }, align 32
@idt_init_isr._entry_ptr = internal global ptr @idt_init_isr._entry, section ".printk_index", align 4
@idt_init_isr._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.5, i32 2141, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get IRQ vector\00", [39 x i8] zeroinitializer }, align 32
@idt_init_isr._entry_ptr.94 = internal global ptr @idt_init_isr._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ntb_irq_idt\00", [20 x i8] zeroinitializer }, align 32
@idt_init_isr._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.5, i32 2149, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set MSI IRQ handler, %d\00", [62 x i8] zeroinitializer }, align 32
@idt_init_isr._entry_ptr.98 = internal global ptr @idt_init_isr._entry.96, section ".printk_index", align 4
@idt_init_isr.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.5, ptr @.str.99, i8 2, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NTB interrupts initialized\00", [37 x i8] zeroinitializer }, align 32
@idt_thread_isr.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.5, ptr @.str.101, i8 2, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_thread_isr\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IDT IRQs 0x%08x handled\00", [40 x i8] zeroinitializer }, align 32
@idt_msg_isr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 1, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idt_msg_isr\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Message IRQ detected %#08x\00", [37 x i8] zeroinitializer }, align 32
@idt_db_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.5, ptr @.str.105, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idt_db_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DB IRQ detected %#08x\00", [42 x i8] zeroinitializer }, align 32
@idt_se_isr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.5, ptr @.str.107, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idt_se_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SE IRQ detected %#08x (SESTS %#08x)\00", [60 x i8] zeroinitializer }, align 32
@idt_ntb_ops = internal constant { %struct.ntb_dev_ops, [32 x i8] } { %struct.ntb_dev_ops { ptr @idt_ntb_port_number, ptr @idt_ntb_peer_port_count, ptr @idt_ntb_peer_port_number, ptr @idt_ntb_peer_port_idx, ptr @idt_ntb_link_is_up, ptr @idt_ntb_link_enable, ptr @idt_ntb_link_disable, ptr @idt_ntb_mw_count, ptr @idt_ntb_mw_get_align, ptr null, ptr null, ptr @idt_ntb_peer_mw_count, ptr @idt_ntb_peer_mw_get_addr, ptr @idt_ntb_peer_mw_set_trans, ptr @idt_ntb_peer_mw_clear_trans, ptr null, ptr @idt_ntb_db_valid_mask, ptr null, ptr null, ptr @idt_ntb_db_read, ptr null, ptr @idt_ntb_db_clear, ptr @idt_ntb_db_read_mask, ptr @idt_ntb_db_set_mask, ptr @idt_ntb_db_clear_mask, ptr null, ptr null, ptr @idt_ntb_peer_db_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idt_ntb_msg_count, ptr @idt_ntb_msg_inbits, ptr @idt_ntb_msg_outbits, ptr @idt_ntb_msg_read_sts, ptr @idt_ntb_msg_clear_sts, ptr @idt_ntb_msg_set_mask, ptr @idt_ntb_msg_clear_mask, ptr @idt_ntb_msg_read, ptr @idt_ntb_peer_msg_write }, [32 x i8] zeroinitializer }, align 32
@idt_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 2289, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register NTB device\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idt_register_device\00", [44 x i8] zeroinitializer }, align 32
@idt_register_device._entry_ptr = internal global ptr @idt_register_device._entry, section ".printk_index", align 4
@idt_register_device.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 2, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NTB device successfully registered\00", [61 x i8] zeroinitializer }, align 32
@idt_ntb_link_enable.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.111, ptr @.str.5, ptr @.str.112, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idt_ntb_link_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Local NTB link enabled\00", [41 x i8] zeroinitializer }, align 32
@idt_ntb_link_disable.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.113, ptr @.str.5, ptr @.str.114, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idt_ntb_link_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local NTB link disabled\00", [40 x i8] zeroinitializer }, align 32
@ntdata_tbl = internal constant { %struct.idt_ntb_regs, [48 x i8] } { %struct.idt_ntb_regs { [6 x %struct.idt_ntb_bar] [%struct.idt_ntb_bar { i32 1136, i32 1140, i32 1144, i32 1148 }, %struct.idt_ntb_bar { i32 1152, i32 1156, i32 1160, i32 1164 }, %struct.idt_ntb_bar { i32 1168, i32 1172, i32 1176, i32 1180 }, %struct.idt_ntb_bar { i32 1184, i32 1188, i32 1192, i32 1196 }, %struct.idt_ntb_bar { i32 1200, i32 1204, i32 1208, i32 1212 }, %struct.idt_ntb_bar { i32 1216, i32 1220, i32 1224, i32 1228 }], [4 x %struct.idt_ntb_msg] [%struct.idt_ntb_msg { i32 1088, i32 1072, i32 1104 }, %struct.idt_ntb_msg { i32 1092, i32 1076, i32 1108 }, %struct.idt_ntb_msg { i32 1096, i32 1080, i32 1112 }, %struct.idt_ntb_msg { i32 1100, i32 1084, i32 1116 }] }, [48 x i8] zeroinitializer }, align 32
@idt_init_dbgfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.5, i32 2513, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Top DebugFS directory absent\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_init_dbgfs\00", [17 x i8] zeroinitializer }, align 32
@idt_init_dbgfs._entry_ptr = internal global ptr @idt_init_dbgfs._entry, section ".printk_index", align 4
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"info:%s\00", [24 x i8] zeroinitializer }, align 32
@idt_dbgfs_info_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @idt_dbgfs_info_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@idt_init_dbgfs.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.116, ptr @.str.5, ptr @.str.118, i8 2, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create DebugFS node\00", [34 x i8] zeroinitializer }, align 32
@idt_init_dbgfs.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.116, ptr @.str.5, ptr @.str.119, i8 2, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NTB device DebugFS node created\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A\09\09IDT NTB device Information:\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Local Port %hhu, Partition %hhu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Peers:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\09%hhu. Port %hhu, Partition %hhu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NTB link status\09- 0x%08x, \00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCIe Gen %d x%d lanes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NTB Mapping Table:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09%hhu. Partition %d, Requester ID 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Outbound Memory Windows:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09%hhu.\09\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%hhu-%hhu.\09\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s BAR%hhu, \00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Address align 0x%08llx, \00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Size align 0x%08llx, Size max %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Inbound Memory Windows for peer %hhu (Port %hhu):\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Global Doorbell state\09- 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Local  Doorbell state\09- 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Local  Doorbell mask\09- 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Message event valid\09- 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Message event status\09- 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Message event mask\09- 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Message data:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09%hhu. 0x%08x from peer %hhu (Port %hhu)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Switch temperature\09\09- %hhd.%hhuC\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DIR  \00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LUT12\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LUT24\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@idt_deinit_isr.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.149, ptr @.str.5, ptr @.str.150, i8 2, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_deinit_isr\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NTB interrupts deinitialized\00", [35 x i8] zeroinitializer }, align 32
@idt_deinit_link.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.151, ptr @.str.5, ptr @.str.152, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt_deinit_link\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NTB link status events deinitialized\00", [59 x i8] zeroinitializer }, align 32
@idt_deinit_pci.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.5, ptr @.str.154, i8 2, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_deinit_pci\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NT-function PCIe interface cleared\00", [61 x i8] zeroinitializer }, align 32
@idt_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.5, i32 2825, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IDT NTB device is removed\00", [38 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_pci_remove\00", [17 x i8] zeroinitializer }, align 32
@idt_pci_remove._entry_ptr = internal global ptr @idt_pci_remove._entry, section ".printk_index", align 4
@idt_deinit_dbgfs.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.157, ptr @.str.5, ptr @.str.158, i8 2, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt_deinit_dbgfs\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NTB device DebugFS node discarded\00", [62 x i8] zeroinitializer }, align 32
@idt_unregister_device.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.159, ptr @.str.5, ptr @.str.160, i8 2, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"idt_unregister_device\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NTB device unregistered\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 70, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [15 x i8] c"idt_pci_driver\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2885, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"dbgfs_topdir\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 274, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2894, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"idt_pci_tbl\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2869, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2834, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"idt_89hpes24nt6ag2_config\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2833, i32 36 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2838, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant [26 x i8] c"idt_89hpes32nt8ag2_config\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2837, i32 36 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2842, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant [26 x i8] c"idt_89hpes32nt8bg2_config\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2841, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2846, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"idt_89hpes12nt12g2_config\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2845, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2850, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant [26 x i8] c"idt_89hpes16nt16g2_config\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2849, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2854, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"idt_89hpes24nt24g2_config\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2853, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2858, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"idt_89hpes32nt24ag2_config\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2857, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2862, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant [27 x i8] c"idt_89hpes32nt24bg2_config\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2861, i32 36 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2787, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2564, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2571, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2577, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2581, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2607, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2617, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2618, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2619, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2621, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2623, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2647, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2650, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2659, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2666, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2679, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2689, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [13 x i8] c"portdata_tbl\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 101, i32 34 }
@___asan_gen_.367 = private unnamed_addr constant [13 x i8] c"partdata_tbl\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 244, i32 34 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 530, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 535, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 641, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 672, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1135, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1145, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1152, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1154, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1594, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1596, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2088, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"idt_temp_groups\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2093, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2097, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [15 x i8] c"idt_temp_group\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2069, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant [15 x i8] c"idt_temp_attrs\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2061, i32 26 }
@___asan_gen_.457 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_lowest\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_temp1_highest\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [29 x i8] c"dev_attr_temp1_reset_history\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2048, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1983, i32 22 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2050, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2052, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2054, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2056, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2134, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2141, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2147, i32 20 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2149, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2158, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2228, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1615, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1432, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 714, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [12 x i8] c"idt_ntb_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2241, i32 33 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2289, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2293, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 928, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 948, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [11 x i8] c"ntdata_tbl\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 78, i32 34 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2513, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2518, i32 24 }
@___asan_gen_.583 = private unnamed_addr constant [19 x i8] c"idt_dbgfs_info_ops\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2321, i32 37 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2522, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2526, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2357, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2361, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2364, i32 45 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2367, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2374, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2375, i32 45 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2379, i32 45 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2389, i32 5 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2394, i32 45 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2398, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2406, i32 5 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2409, i32 5 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2411, i32 46 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2415, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2418, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2425, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2459, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2462, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2465, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2470, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2473, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2476, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2478, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2483, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2491, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1018, i32 10 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1020, i32 10 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1022, i32 10 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 1027, i32 9 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2189, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 686, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2720, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2825, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2541, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.716 = private constant [35 x i8] c"../drivers/ntb/hw/idt/ntb_hw_idt.c\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 2307, i32 2 }
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_version237, ptr @__exitcall_idt_pci_driver_exit, ptr @__initcall__kmod_ntb_hw_idt__274_2903_idt_pci_driver_init6, ptr @__modver_attr, ptr @idt_check_setup._entry, ptr @idt_check_setup._entry.30, ptr @idt_check_setup._entry.33, ptr @idt_check_setup._entry_ptr, ptr @idt_check_setup._entry_ptr.32, ptr @idt_check_setup._entry_ptr.35, ptr @idt_create_dev._entry, ptr @idt_create_dev._entry.44, ptr @idt_create_dev._entry_ptr, ptr @idt_create_dev._entry_ptr.46, ptr @idt_init_dbgfs._entry, ptr @idt_init_dbgfs._entry_ptr, ptr @idt_init_isr._entry, ptr @idt_init_isr._entry.92, ptr @idt_init_isr._entry.96, ptr @idt_init_isr._entry_ptr, ptr @idt_init_isr._entry_ptr.94, ptr @idt_init_isr._entry_ptr.98, ptr @idt_init_mws._entry, ptr @idt_init_mws._entry.72, ptr @idt_init_mws._entry_ptr, ptr @idt_init_mws._entry_ptr.74, ptr @idt_init_pci._entry, ptr @idt_init_pci._entry.50, ptr @idt_init_pci._entry.54, ptr @idt_init_pci._entry.57, ptr @idt_init_pci._entry.60, ptr @idt_init_pci._entry_ptr, ptr @idt_init_pci._entry_ptr.53, ptr @idt_init_pci._entry_ptr.56, ptr @idt_init_pci._entry_ptr.59, ptr @idt_init_pci._entry_ptr.62, ptr @idt_init_temp._entry, ptr @idt_init_temp._entry_ptr, ptr @idt_pci_driver_exit, ptr @idt_pci_driver_init._entry, ptr @idt_pci_driver_init._entry_ptr, ptr @idt_pci_probe._entry, ptr @idt_pci_probe._entry_ptr, ptr @idt_pci_remove._entry, ptr @idt_pci_remove._entry_ptr, ptr @idt_register_device._entry, ptr @idt_register_device._entry_ptr, ptr @idt_scan_ports._entry, ptr @idt_scan_ports._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @idt_pci_driver, ptr @dbgfs_topdir, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @idt_pci_tbl, ptr @.str.7, ptr @idt_89hpes24nt6ag2_config, ptr @.str.9, ptr @idt_89hpes32nt8ag2_config, ptr @.str.11, ptr @idt_89hpes32nt8bg2_config, ptr @.str.13, ptr @idt_89hpes12nt12g2_config, ptr @.str.15, ptr @idt_89hpes16nt16g2_config, ptr @.str.17, ptr @idt_89hpes24nt24g2_config, ptr @.str.19, ptr @idt_89hpes32nt24ag2_config, ptr @.str.21, ptr @idt_89hpes32nt24bg2_config, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @idt_create_dev.__key, ptr @.str.39, ptr @idt_create_dev.__key.40, ptr @.str.41, ptr @idt_create_dev.__key.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @portdata_tbl, ptr @partdata_tbl, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @idt_init_link.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @idt_init_mws.__key, ptr @.str.75, ptr @.str.76, ptr @idt_init_msg.__key, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @idt_init_temp.__key, ptr @.str.80, ptr @idt_temp_groups, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @idt_temp_group, ptr @idt_temp_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_lowest, ptr @sensor_dev_attr_temp1_highest, ptr @sensor_dev_attr_temp1_offset, ptr @dev_attr_temp1_reset_history, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @idt_ntb_ops, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @ntdata_tbl, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @idt_dbgfs_info_ops, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], section "llvm.metadata"
@0 = internal global [184 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_pci_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_pci_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes24nt6ag2_config to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes32nt8ag2_config to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes32nt8bg2_config to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes12nt12g2_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes16nt16g2_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes24nt24g2_config to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes32nt24ag2_config to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_89hpes32nt24bg2_config to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_setup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_dev.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_dev.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_dev._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_pci._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_pci._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_pci._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_pci._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portdata_tbl to i32), i32 2784, i32 3456, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partdata_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_scan_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_link.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_mws._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_mws._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_mws.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_msg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_temp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_temp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_temp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_temp_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_reset_history to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_isr._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_isr._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_ntb_ops to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntdata_tbl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_init_dbgfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_dbgfs_info_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #14
  %call1 = tail call zeroext i1 @debugfs_initialized() #11
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #11
  store ptr %call2, ptr @dbgfs_topdir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @__pci_register_driver(ptr noundef nonnull @idt_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @idt_pci_driver) #11
  %0 = load ptr, ptr @dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @idt_check_setup(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @idt_create_dev(ptr noundef %pdev, ptr noundef %id)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @idt_init_pci(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call fastcc void @idt_scan_ports(ptr noundef %call1)
  tail call fastcc void @idt_init_link(ptr noundef %call1)
  %call11 = tail call fastcc i32 @idt_init_mws(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %if.end9.err_deinit_link_crit_edge

if.end9.err_deinit_link_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deinit_link

if.end14:                                         ; preds = %if.end9
  tail call fastcc void @idt_init_msg(ptr noundef %call1)
  tail call fastcc void @idt_init_temp(ptr noundef %call1)
  %call15 = tail call fastcc i32 @idt_init_isr(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end18, label %if.end14.err_deinit_link_crit_edge

if.end14.err_deinit_link_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deinit_link

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @idt_register_device(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end22, label %err_deinit_isr

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @idt_init_dbgfs(ptr noundef %call1)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  br label %cleanup

err_deinit_isr:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @idt_deinit_isr(ptr noundef %call1)
  br label %err_deinit_link

err_deinit_link:                                  ; preds = %err_deinit_isr, %if.end14.err_deinit_link_crit_edge, %if.end9.err_deinit_link_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end9.err_deinit_link_crit_edge ], [ %call15, %if.end14.err_deinit_link_crit_edge ], [ %call19, %err_deinit_isr ]
  tail call fastcc void @idt_ntb_local_link_disable(ptr noundef %call1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_link.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_probe, %if.then.i)) #11
          to label %idt_deinit_link.exit [label %if.then.i], !srcloc !367

if.then.i:                                        ; preds = %err_deinit_link
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_link.__UNIQUE_ID_ddebug243, ptr noundef %dev.i, ptr noundef nonnull @.str.152) #11
  br label %idt_deinit_link.exit

idt_deinit_link.exit:                             ; preds = %if.then.i, %err_deinit_link
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @pci_clear_master(ptr noundef %4) #11
  %call.i = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %4) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_pci.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_probe, %if.then.i48)) #11
          to label %cleanup [label %if.then.i48], !srcloc !367

if.then.i48:                                      ; preds = %idt_deinit_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i47 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_pci.__UNIQUE_ID_ddebug273, ptr noundef %dev.i47, ptr noundef nonnull @.str.154) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i48, %idt_deinit_link.exit, %if.end22, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ 0, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %ret.0, %idt_deinit_link.exit ], [ %ret.0, %if.then.i48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dbgfs_info.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %dbgfs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_info.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_dbgfs.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_remove, %if.then.i)) #11
          to label %idt_deinit_dbgfs.exit [label %if.then.i], !srcloc !367

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_dbgfs.__UNIQUE_ID_ddebug269, ptr noundef %dev.i, ptr noundef nonnull @.str.158) #11
  br label %idt_deinit_dbgfs.exit

idt_deinit_dbgfs.exit:                            ; preds = %if.then.i, %entry
  tail call void @ntb_unregister_device(ptr noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_unregister_device.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_remove, %if.then.i8)) #11
          to label %idt_unregister_device.exit [label %if.then.i8], !srcloc !367

if.then.i8:                                       ; preds = %idt_deinit_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i6 = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i6, align 8
  %dev.i7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_unregister_device.__UNIQUE_ID_ddebug264, ptr noundef %dev.i7, ptr noundef nonnull @.str.160) #11
  br label %idt_unregister_device.exit

idt_unregister_device.exit:                       ; preds = %if.then.i8, %idt_deinit_dbgfs.exit
  tail call fastcc void @idt_deinit_isr(ptr noundef %1)
  tail call fastcc void @idt_ntb_local_link_disable(ptr noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_link.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_remove, %if.then.i11)) #11
          to label %idt_deinit_link.exit [label %if.then.i11], !srcloc !367

if.then.i11:                                      ; preds = %idt_unregister_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i9 = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdev.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i9, align 8
  %dev.i10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_link.__UNIQUE_ID_ddebug243, ptr noundef %dev.i10, ptr noundef nonnull @.str.152) #11
  br label %idt_deinit_link.exit

idt_deinit_link.exit:                             ; preds = %if.then.i11, %idt_unregister_device.exit
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @pci_clear_master(ptr noundef %11) #11
  %call.i = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %11) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_pci.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_pci_remove, %if.then.i13)) #11
          to label %idt_deinit_pci.exit [label %if.then.i13], !srcloc !367

if.then.i13:                                      ; preds = %idt_deinit_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_pci.__UNIQUE_ID_ddebug273, ptr noundef %dev.i12, ptr noundef nonnull @.str.154) #11
  br label %idt_deinit_pci.exit

idt_deinit_pci.exit:                              ; preds = %if.then.i13, %idt_deinit_link.exit
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.155) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_check_setup(ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !368
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 1136, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %3 = and i32 %2, -2147482624
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147482624, i32 %3)
  %.not = icmp eq i32 %3, -2147482624
  br i1 %.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %2, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 192
  br i1 %cmp10.not, label %do.body17, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.34) #14
  br label %cleanup

do.body17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_check_setup.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_check_setup, %if.then22)) #11
          to label %cleanup [label %if.then22], !srcloc !367

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_check_setup.__UNIQUE_ID_ddebug270, ptr noundef %dev23, ptr noundef nonnull @.str.36) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body17, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end14 ], [ -22, %do.end6 ], [ 0, %if.then22 ], [ 0, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @idt_create_dev(ptr noundef %pdev, ptr nocapture noundef readonly %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1664, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %swcfg = getelementptr inbounds %struct.idt_ntb_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %swcfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %swcfg, align 8
  %pdev3 = getelementptr inbounds %struct.ntb_dev, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev3, align 8
  %db_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %db_mask_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @idt_create_dev.__key, i16 noundef signext 3) #11
  %msg_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %msg_mask_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @idt_create_dev.__key.40, i16 noundef signext 3) #11
  %gasa_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %gasa_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @idt_create_dev.__key.42, i16 noundef signext 3) #11
  %5 = ptrtoint ptr %swcfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %swcfg, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef %8) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_create_dev.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_create_dev, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !367

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_create_dev.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.47) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call.i, %if.then26 ], [ %call.i, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_init_pci(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %if.then

dma_set_mask_and_coherent.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %call.i73 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i74 = icmp eq i32 %call.i73, 0
  br i1 %cmp.i74, label %do.end9, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #14
  br label %cleanup

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i75 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %dma_set_mask_and_coherent.exit.thread
  %call12 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.else, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.55) #14
  br label %if.end20

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @pci_aer_clear_nonfatal_status(ptr noundef %1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end17
  %call21 = tail call i32 @pcim_enable_device(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #14
  br label %err_disable_aer

if.end28:                                         ; preds = %if.end20
  tail call void @pci_set_master(ptr noundef %1) #11
  %call29 = tail call i32 @pcim_iomap_regions_request_all(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #14
  tail call void @pci_clear_master(ptr noundef %1) #11
  br label %err_disable_aer

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call ptr @pcim_iomap_table(ptr noundef %1) #11
  %2 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call37, align 4
  %cfgspc = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %4 = ptrtoint ptr %cfgspc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %cfgspc, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_pci.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_pci, %if.then42)) #11
          to label %cleanup [label %if.then42], !srcloc !367

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_pci.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.63) #11
  br label %cleanup

err_disable_aer:                                  ; preds = %do.end34, %do.end26
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call29, %do.end34 ]
  %call47 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %err_disable_aer, %if.then42, %if.end36, %do.end
  %retval.0 = phi i32 [ %call.i73, %do.end ], [ %ret.0, %err_disable_aer ], [ 0, %if.then42 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_scan_ports(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv = trunc i32 %2 to i8
  %port1 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 2
  %3 = ptrtoint ptr %port1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %port1, align 4
  %4 = and i32 %2, 255
  %sts = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %4, i32 4
  %5 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sts, align 4
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %7 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %8, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %9) #11, !srcloc !372
  %10 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %11, i32 4092
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #11, !srcloc !369
  %13 = lshr i32 %12, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  %phi.cast = trunc i32 %13 to i8
  %phi.bo29 = and i8 %phi.cast, 7
  %part7 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 3
  %14 = ptrtoint ptr %part7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %phi.bo29, ptr %part7, align 1
  %port_idx_map = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 6
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 4
  %15 = call ptr @memset(ptr %port_idx_map, i32 234, i32 32)
  %16 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %peer_cnt, align 2
  %swcfg = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 1
  %17 = ptrtoint ptr %swcfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %swcfg, align 8
  %port_cnt30 = getelementptr inbounds %struct.idt_89hpes_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port_cnt30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_cnt30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp31.not = icmp eq i8 %20, 0
  br i1 %cmp31.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %21 = phi ptr [ %55, %for.inc.for.body_crit_edge ], [ %18, %entry.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.idt_89hpes_cfg, ptr %21, i32 0, i32 2, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %23 to i32
  %24 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp18 = icmp eq i8 %23, %25
  br i1 %cmp18, label %for.body.for.inc_crit_edge, label %do.body25.i12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body25.i12:                                    ; preds = %for.body
  %sts22 = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %conv15, i32 4
  %26 = ptrtoint ptr %sts22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sts22, align 4
  %call28.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %28 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %29, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %30) #11, !srcloc !372
  %31 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i11 = getelementptr i8, ptr %32, i32 4092
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i11) #11, !srcloc !369
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i8) #11
  %and24 = lshr i32 %34, 10
  %35 = trunc i32 %and24 to i8
  %conv26 = and i8 %35, 7
  %idxprom27 = zext i8 %conv26 to i32
  %sts29 = getelementptr [8 x %struct.idt_ntb_part], ptr @partdata_tbl, i32 0, i32 %idxprom27, i32 1
  %36 = ptrtoint ptr %sts29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sts29, align 4
  %call28.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %38 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %39, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %40) #11, !srcloc !372
  %41 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i21 = getelementptr i8, ptr %42, i32 4092
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i21) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i18) #11
  %44 = and i32 %43, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %44)
  %cmp32 = icmp eq i32 %44, 536870912
  br i1 %cmp32, label %land.lhs.true, label %do.body25.i12.for.inc_crit_edge

do.body25.i12.for.inc_crit_edge:                  ; preds = %do.body25.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %do.body25.i12
  %and34 = and i32 %34, 960
  %45 = add nsw i32 %and34, -192
  %46 = lshr exact i32 %45, 6
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %land.lhs.true.for.inc_crit_edge [
    i32 0, label %land.lhs.true.if.then48_crit_edge
    i32 1, label %land.lhs.true.if.then48_crit_edge33
    i32 4, label %land.lhs.true.if.then48_crit_edge34
    i32 5, label %land.lhs.true.if.then48_crit_edge35
  ]

land.lhs.true.if.then48_crit_edge35:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

land.lhs.true.if.then48_crit_edge34:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

land.lhs.true.if.then48_crit_edge33:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

land.lhs.true.if.then48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true.if.then48_crit_edge, %land.lhs.true.if.then48_crit_edge33, %land.lhs.true.if.then48_crit_edge34, %land.lhs.true.if.then48_crit_edge35
  %48 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %peer_cnt, align 2
  %idxprom50 = zext i8 %49 to i32
  %arrayidx51 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %idxprom50
  %50 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %23, ptr %arrayidx51, align 8
  %part57 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %idxprom50, i32 1
  %51 = ptrtoint ptr %part57 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv26, ptr %part57, align 1
  %arrayidx61 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 6, i32 %conv15
  %52 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %arrayidx61, align 1
  %arrayidx65 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 7, i32 %idxprom27
  %53 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %49, ptr %arrayidx65, align 1
  %inc = add i8 %49, 1
  store i8 %inc, ptr %peer_cnt, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.lhs.true.for.inc_crit_edge, %do.body25.i12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %54 = ptrtoint ptr %swcfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %swcfg, align 8
  %port_cnt = getelementptr inbounds %struct.idt_89hpes_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port_cnt, align 4
  %58 = zext i8 %57 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %58
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_scan_ports.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_scan_ports, %if.then72)) #11
          to label %do.end [label %if.then72], !srcloc !367

if.then72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %port1, align 4
  %conv74 = zext i8 %62 to i32
  %63 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %peer_cnt, align 2
  %conv76 = zext i8 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_scan_ports.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %conv74, i32 noundef %conv76) #11
  br label %do.end

do.end:                                           ; preds = %if.then72, %do.body
  %65 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp80 = icmp eq i8 %66, 0
  br i1 %cmp80, label %do.end85, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end85:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev87 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %67 = ptrtoint ptr %pdev87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev87, align 8
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev88, ptr noundef nonnull @.str.66) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_init_link(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mtbl_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %mtbl_lock, ptr noundef nonnull @.str.67, ptr noundef nonnull @idt_init_link.__key, i16 noundef signext 3) #11
  %port = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %part = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 3
  %2 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %part, align 1
  %conv1 = zext i8 %3 to i32
  %shl2 = shl nuw i32 1, %conv1
  %neg3 = xor i32 %shl2, -1
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 4
  %4 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp82.not = icmp eq i8 %5, 0
  br i1 %cmp82.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %5 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %part_mask.085 = phi i32 [ %neg3, %for.body.preheader ], [ %and18, %for.body.for.body_crit_edge ]
  %port_mask.084 = phi i32 [ %neg, %for.body.preheader ], [ %and, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 8
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 1, %conv8
  %neg10 = xor i32 %shl9, -1
  %and = and i32 %port_mask.084, %neg10
  %part14 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %indvars.iv, i32 1
  %8 = ptrtoint ptr %part14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %part14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 1, %conv15
  %neg17 = xor i32 %shl16, -1
  %and18 = and i32 %part_mask.085, %neg17
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %port_mask.0.lcssa = phi i32 [ %neg, %entry.for.end_crit_edge ], [ %and, %for.body.for.end_crit_edge ]
  %part_mask.0.lcssa = phi i32 [ %neg3, %entry.for.end_crit_edge ], [ %and18, %for.body.for.end_crit_edge ]
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %10 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 216793856) #11, !srcloc !372
  %12 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %13, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  %call28.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %14 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 351011584) #11, !srcloc !372
  %16 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i50 = getelementptr i8, ptr %17, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i50, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i47) #11
  %call28.i52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %18 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %19, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 820773632) #11, !srcloc !372
  %20 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i55 = getelementptr i8, ptr %21, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i55, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i52) #11
  %call28.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %22 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %23, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 149684992) #11, !srcloc !372
  %24 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i60 = getelementptr i8, ptr %25, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %part_mask.0.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i60, i32 %26) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i57) #11
  %call28.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %27 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %28, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 283902720) #11, !srcloc !372
  %29 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i65 = getelementptr i8, ptr %30, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %port_mask.0.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i65, i32 %31) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i62) #11
  %call28.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %32 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %33, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 418120448) #11, !srcloc !372
  %34 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i70 = getelementptr i8, ptr %35, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i70, i32 %31) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i67) #11
  %call28.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %36 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %37, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 887882496) #11, !srcloc !372
  %38 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i75 = getelementptr i8, ptr %39, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i75, i32 %26) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i72) #11
  %call28.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %40 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %41, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 82576128) #11, !srcloc !372
  %42 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i80 = getelementptr i8, ptr %43, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i80, i32 -587202561) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i77) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_link.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_link, %if.then)) #11
          to label %do.end24 [label %if.then], !srcloc !367

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_link.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_init_mws(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 9
  %call = tail call fastcc ptr @idt_scan_mws(ptr noundef %ndev, i32 noundef %conv, ptr noundef %mw_cnt)
  %mws = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 10
  %2 = ptrtoint ptr %mws to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mws, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 4
  %3 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp67.not = icmp eq i8 %4, 0
  br i1 %cmp67.not, label %for.cond.preheader.do.body29_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port, align 4
  %conv4 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %conv4) #14
  %9 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mws, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %12 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %peer_cnt, align 2
  %14 = zext i8 %13 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %14
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body29_crit_edge

for.cond.do.body29_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 4
  %conv11 = zext i8 %16 to i32
  %mw_cnt12 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %indvars.iv, i32 2
  %call13 = tail call fastcc ptr @idt_scan_mws(ptr noundef %ndev, i32 noundef %conv11, ptr noundef %mw_cnt12)
  %mws14 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 5, i32 %indvars.iv, i32 3
  %17 = ptrtoint ptr %mws14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13, ptr %mws14, align 4
  %cmp.i65 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %do.end20, label %for.cond

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev22 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %18 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev22, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 4
  %conv25 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.73, i32 noundef %conv25) #14
  %22 = ptrtoint ptr %mws14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mws14, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

do.body29:                                        ; preds = %for.cond.do.body29_crit_edge, %for.cond.preheader.do.body29_crit_edge
  %lut_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lut_lock, ptr noundef nonnull @.str.75, ptr noundef nonnull @idt_init_mws.__key, i16 noundef signext 3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_mws.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_mws, %if.then37)) #11
          to label %cleanup [label %if.then37], !srcloc !367

if.then37:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %pdev39 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %25 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev39, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_mws.__UNIQUE_ID_ddebug247, ptr noundef %dev40, ptr noundef nonnull @.str.76) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body29, %do.end20, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ %24, %do.end20 ], [ 0, %if.then37 ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_init_msg(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 12, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.77, ptr noundef nonnull @idt_init_msg.__key, i16 noundef signext 3) #11
  %arrayidx.1 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 12, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.77, ptr noundef nonnull @idt_init_msg.__key, i16 noundef signext 3) #11
  %arrayidx.2 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.77, ptr noundef nonnull @idt_init_msg.__key, i16 noundef signext 3) #11
  %arrayidx.3 = getelementptr %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 12, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.77, ptr noundef nonnull @idt_init_msg.__key, i16 noundef signext 3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_msg.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_msg, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_msg.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.79) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_init_temp(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -722402560) #11, !srcloc !372
  %2 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %3, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  %hwmon_mtx = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %hwmon_mtx, ptr noundef nonnull @.str.80, ptr noundef nonnull @idt_init_temp.__key) #11
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %swcfg = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 1
  %6 = ptrtoint ptr %swcfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %swcfg, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %9, ptr noundef %ndev, ptr noundef nonnull @idt_temp_groups) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end4, label %do.body8

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.81) #14
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_temp.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_temp, %if.then12)) #11
          to label %cleanup [label %if.then12], !srcloc !367

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_temp.__UNIQUE_ID_ddebug259, ptr noundef %dev15, ptr noundef nonnull @.str.83) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body8, %do.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_init_isr(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.93) #14
  br label %err_free_vectors

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev8, i32 noundef %call2, ptr noundef null, ptr noundef nonnull @idt_thread_isr, i32 noundef 8192, ptr noundef nonnull @.str.95, ptr noundef %ndev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.97, i32 noundef %call11) #14
  br label %err_free_vectors

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %2 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %5 = and i32 %4, -184549377
  %6 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %7, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %5) #11, !srcloc !372
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_isr.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_isr, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !367

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_isr.__UNIQUE_ID_ddebug260, ptr noundef %dev8, ptr noundef nonnull @.str.99) #11
  br label %cleanup

err_free_vectors:                                 ; preds = %do.end16, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %call11, %do.end16 ]
  tail call void @pci_free_irq_vectors(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_vectors, %if.then24, %if.end18, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %err_free_vectors ], [ 0, %if.then24 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_register_device(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @idt_ntb_ops, ptr %ops, align 8
  %topo = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 2
  %1 = ptrtoint ptr %topo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %topo, align 4
  %call = tail call i32 @ntb_register_device(ptr noundef %ndev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108) #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_register_device.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_register_device, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !367

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %pdev10 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev10, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_register_device.__UNIQUE_ID_ddebug263, ptr noundef %dev11, ptr noundef nonnull @.str.110) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body4, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_init_dbgfs(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  %devname = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %devname) #11
  %0 = call ptr @memset(ptr %devname, i32 255, i32 64)
  %1 = load ptr, ptr @dbgfs_topdir, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.115) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end.pci_name.exit_crit_edge ]
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devname, i32 noundef 64, ptr noundef nonnull @.str.117, ptr noundef %retval.0.i.i)
  %8 = load ptr, ptr @dbgfs_topdir, align 4
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull %devname, i16 noundef zeroext 256, ptr noundef %8, ptr noundef %ndev, ptr noundef nonnull @idt_dbgfs_info_ops) #11
  %dbgfs_info = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 18
  %9 = ptrtoint ptr %dbgfs_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %dbgfs_info, align 4
  %cmp.i5 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5, label %do.body11, label %do.body25

do.body11:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_dbgfs.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_dbgfs, %if.then15)) #11
          to label %cleanup [label %if.then15], !srcloc !367

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_dbgfs.__UNIQUE_ID_ddebug267, ptr noundef %dev18, ptr noundef nonnull @.str.118) #11
  br label %cleanup

do.body25:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_init_dbgfs.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_init_dbgfs, %if.then37)) #11
          to label %cleanup [label %if.then37], !srcloc !367

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_init_dbgfs.__UNIQUE_ID_ddebug268, ptr noundef %dev40, ptr noundef nonnull @.str.119) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %if.then15, %do.body11, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %devname) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_deinit_isr(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %2 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %5 = or i32 %4, 184549376
  %6 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %5) #11, !srcloc !372
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call2 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #11
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef %ndev) #11
  tail call void @pci_free_irq_vectors(ptr noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_deinit_isr.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_deinit_isr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_deinit_isr.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.150) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_aer_clear_nonfatal_status(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_nt_read(ptr nocapture noundef readonly %ndev, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %if.end23, label %do.end, !prof !373

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %1 = ptrtoint ptr %cfgspc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgspc, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !369
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %4, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_sw_write(ptr noundef %ndev, i32 noundef %reg, i32 noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -262141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %do.body25, label %do.end, !prof !373

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 352, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock) #11
  %cfgspc = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %1 = ptrtoint ptr %cfgspc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgspc, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %reg) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !372
  %4 = ptrtoint ptr %cfgspc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc, align 8
  %add.ptr34 = getelementptr i8, ptr %5, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %data) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %6) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @idt_scan_mws(ptr noundef %ndev, i32 noundef %port, ptr nocapture noundef %mw_cnt) unnamed_addr #3 align 64 {
entry:
  %mws = alloca [29 x %struct.idt_mw_cfg], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 928, ptr nonnull %mws) #11
  %0 = call ptr @memset(ptr %mws, i32 255, i32 928)
  %bars1 = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %port, i32 5
  %1 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %mw_cnt, align 1
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc65.thread.for.body_crit_edge, %entry
  %bidx.0135 = phi i8 [ 0, %entry ], [ %add69, %for.inc65.thread.for.body_crit_edge ]
  %conv = zext i8 %bidx.0135 to i32
  %arrayidx3 = getelementptr %struct.idt_ntb_bar, ptr %bars1, i32 %conv
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %4 = and i32 %3, -262141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %idt_sw_read.exit, label %if.end.thread, !prof !373

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 383, i32 noundef 9, ptr noundef null) #11
  br label %for.inc65.thread

idt_sw_read.exit:                                 ; preds = %for.body
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %5 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #11, !srcloc !372
  %8 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %9, i32 4092
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #11, !srcloc !369
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not = icmp sgt i32 %11, -1
  br i1 %tobool.not, label %idt_sw_read.exit.for.inc65.thread_crit_edge, label %if.end

idt_sw_read.exit.for.inc65.thread_crit_edge:      ; preds = %idt_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65.thread

if.end:                                           ; preds = %idt_sw_read.exit
  %and4 = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 4
  %and7 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.for.inc65_crit_edge

if.end.for.inc65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

if.end10:                                         ; preds = %if.end
  %and11 = lshr i32 %11, 11
  %shr = and i32 %and11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %.not = icmp eq i32 %shr, 3
  br i1 %.not, label %if.end10.for.inc65_crit_edge, label %switch.lookup

if.end10.for.inc65_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

switch.lookup:                                    ; preds = %if.end10
  %switch.cast = trunc i32 %shr to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 1575937, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %and13 = lshr i32 %11, 4
  %shr14 = and i32 %and13, 63
  %sh_prom = zext i32 %shr14 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv15 = trunc i64 %shl to i32
  %div = sdiv i32 %conv15, 16
  %conv39 = sext i32 %conv15 to i64
  %div50 = sdiv i32 %conv15, 32
  %12 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %mw_cnt.promoted = load i8, ptr %mw_cnt, align 1
  %13 = zext i8 %mw_cnt.promoted to i32
  %umax = call i8 @llvm.umax.i8(i8 %mw_cnt.promoted, i8 29)
  %wide.trip.count = zext i8 %umax to i32
  br label %for.body21

for.body21:                                       ; preds = %cond.end.for.body21_crit_edge, %switch.lookup
  %indvars.iv = phi i32 [ %13, %switch.lookup ], [ %indvars.iv.next, %cond.end.for.body21_crit_edge ]
  %widx.0134 = phi i8 [ 0, %switch.lookup ], [ %inc, %cond.end.for.body21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %wide.trip.count)
  %exitcond = icmp eq i32 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.body21.cleanup_crit_edge, label %if.end27

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %for.body21
  %arrayidx29 = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %arrayidx29, align 8
  %bar = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv, i32 1
  %15 = ptrtoint ptr %bar to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bidx.0135, ptr %bar, align 4
  %idx = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %widx.0134, ptr %idx, align 1
  %addr_align = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv, i32 3
  %17 = ptrtoint ptr %addr_align to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4, ptr %addr_align, align 8
  %18 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %shr, label %if.else49 [
    i32 0, label %if.end27.cond.end_crit_edge
    i32 1, label %if.end27.cond.false_crit_edge
  ]

if.end27.cond.false_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

if.end27.cond.end_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.else49:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %if.else49, %if.end27.cond.false_crit_edge
  %conv51.sink.in = phi i32 [ %div50, %if.else49 ], [ %div, %if.end27.cond.false_crit_edge ]
  %conv51.sink = sext i32 %conv51.sink.in to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end27.cond.end_crit_edge
  %conv39.sink = phi i64 [ %conv51.sink, %cond.false ], [ %conv39, %if.end27.cond.end_crit_edge ]
  %cond = phi i64 [ %conv51.sink, %cond.false ], [ 1, %if.end27.cond.end_crit_edge ]
  %size_max = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv, i32 5
  %19 = ptrtoint ptr %size_max to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv39.sink, ptr %size_max, align 8
  %size_align = getelementptr [29 x %struct.idt_mw_cfg], ptr %mws, i32 0, i32 %indvars.iv, i32 4
  %20 = ptrtoint ptr %size_align to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond, ptr %size_align, align 8
  %inc = add nuw nsw i8 %widx.0134, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %21 = trunc i32 %indvars.iv.next to i8
  %22 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %mw_cnt, align 1
  %cmp19 = icmp ult i8 %inc, %switch.masked
  br i1 %cmp19, label %cond.end.for.body21_crit_edge, label %cond.end.for.inc65_crit_edge

cond.end.for.inc65_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

cond.end.for.body21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

for.inc65:                                        ; preds = %cond.end.for.inc65_crit_edge, %if.end10.for.inc65_crit_edge, %if.end.for.inc65_crit_edge
  %spec.select = select i1 %cmp5, i8 2, i8 1
  br label %for.inc65.thread

for.inc65.thread:                                 ; preds = %for.inc65, %idt_sw_read.exit.for.inc65.thread_crit_edge, %if.end.thread
  %23 = phi i8 [ 1, %idt_sw_read.exit.for.inc65.thread_crit_edge ], [ 1, %if.end.thread ], [ %spec.select, %for.inc65 ]
  %add69 = add i8 %23, %bidx.0135
  %cmp = icmp ult i8 %add69, 6
  br i1 %cmp, label %for.inc65.thread.for.body_crit_edge, label %devm_kcalloc.exit

for.inc65.thread.for.body_crit_edge:              ; preds = %for.inc65.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

devm_kcalloc.exit:                                ; preds = %for.inc65.thread
  %24 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mw_cnt, align 1
  %conv72 = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv72, 5
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %26, i32 noundef 3520) #11
  %tobool74.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool74.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end77

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end77:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mw_cnt, align 1
  %conv79 = zext i8 %30 to i32
  %mul = shl nuw nsw i32 %conv79, 5
  %31 = call ptr @memcpy(ptr %call5.i.i, ptr %mws, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %devm_kcalloc.exit.cleanup_crit_edge, %for.body21.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5.i.i, %if.end77 ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 928, ptr nonnull %mws) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_sysfs_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %3, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -655293696) #11, !srcloc !372
  %7 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %8, i32 4092
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #11, !srcloc !369
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i.i) #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i24.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i25.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i24.i) #11
  %cfgspc.i26.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %cfgspc.i26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfgspc.i26.i, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %12, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 -655293696) #11, !srcloc !372
  %13 = ptrtoint ptr %cfgspc.i26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i26.i, align 8
  %add.ptr34.i28.i = getelementptr i8, ptr %14, i32 4092
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i28.i) #11, !srcloc !369
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i24.i, i32 noundef %call28.i25.i) #11
  %and3.i = lshr i32 %16, 8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i29.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i29.i) #11
  %cfgspc.i31.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %cfgspc.i31.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfgspc.i31.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %18, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 -655293696) #11, !srcloc !372
  %19 = ptrtoint ptr %cfgspc.i31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfgspc.i31.i, align 8
  %add.ptr34.i33.i = getelementptr i8, ptr %20, i32 4092
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i33.i) #11, !srcloc !369
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i29.i, i32 noundef %call28.i30.i) #11
  %and7.i = lshr i32 %22, 16
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i34.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i34.i) #11
  %cfgspc.i36.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %cfgspc.i36.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfgspc.i36.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %24, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 -521075968) #11, !srcloc !372
  %25 = ptrtoint ptr %cfgspc.i36.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfgspc.i36.i, align 8
  %add.ptr34.i38.i = getelementptr i8, ptr %26, i32 4092
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i38.i) #11, !srcloc !369
  %28 = lshr i32 %27, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i34.i, i32 noundef %call28.i35.i) #11
  %div.lhs.trunc.i.i = trunc i32 %28 to i8
  %div3.i.i = sdiv i8 %div.lhs.trunc.i.i, 2
  %div.sext.i.i = sext i8 %div3.i.i to i32
  %mul.i.i = mul nsw i32 %div.sext.i.i, 1000
  %29 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 500
  br label %idt_read_temp.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i39.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i40.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i39.i) #11
  %cfgspc.i41.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %cfgspc.i41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfgspc.i41.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %31, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 -655293696) #11, !srcloc !372
  %32 = ptrtoint ptr %cfgspc.i41.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfgspc.i41.i, align 8
  %add.ptr34.i43.i = getelementptr i8, ptr %33, i32 4092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i43.i) #11, !srcloc !369
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i39.i, i32 noundef %call28.i40.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %data.0.in.i = phi i32 [ %35, %sw.default.i ], [ %and7.i, %sw.bb5.i ], [ %and3.i, %sw.bb1.i ], [ %10, %sw.bb.i ]
  %data.0.i = lshr i32 %data.0.in.i, 1
  %div2.i.i = and i32 %data.0.i, 127
  %mul.i44.i = mul nuw nsw i32 %div2.i.i, 1000
  %and.i45.i = and i32 %data.0.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  %cond.i47.i = select i1 %tobool.not.i46.i, i32 0, i32 500
  br label %idt_read_temp.exit

idt_read_temp.exit:                               ; preds = %sw.epilog.i, %sw.bb9.i
  %mul.i44.sink.i = phi i32 [ %mul.i44.i, %sw.epilog.i ], [ %cond.i.i, %sw.bb9.i ]
  %cond.i47.sink.i = phi i32 [ %cond.i47.i, %sw.epilog.i ], [ %mul.i.i, %sw.bb9.i ]
  %add.i48.i = add nsw i32 %cond.i47.sink.i, %mul.i44.sink.i
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %add.i48.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_sysfs_set_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %mdeg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdeg) #11
  %4 = ptrtoint ptr %mdeg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mdeg, align 4, !annotation !368
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %mdeg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %5 = ptrtoint ptr %mdeg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mdeg, align 4
  br i1 %cmp, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -64000)
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 63500)
  %9 = ptrtoint ptr %mdeg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mdeg, align 4
  %.frozen = freeze i32 %8
  %div.i.i.i41 = sdiv i32 %.frozen, 1000
  %shl.i.i43 = shl nsw i32 %div.i.i.i41, 1
  %10 = mul i32 %div.i.i.i41, 1000
  %rem.i.i.i44.decomposed = sub i32 %.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %rem.i.i.i44.decomposed)
  %cmp.i.i.i45 = icmp sgt i32 %rem.i.i.i44.decomposed, 499
  %cond.i.i46 = zext i1 %cmp.i.i.i45 to i32
  %hwmon_mtx.i48 = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %hwmon_mtx.i48, i32 noundef 0) #11
  %gasa_lock.i32.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i33.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i32.i) #11
  %cfgspc.i34.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %cfgspc.i34.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfgspc.i34.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %12, i32 4088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 -521075968) #11, !srcloc !372
  %13 = ptrtoint ptr %cfgspc.i34.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i34.i, align 8
  %add.ptr34.i36.i = getelementptr i8, ptr %14, i32 4092
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i36.i) #11, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i32.i, i32 noundef %call28.i33.i) #11
  %16 = and i32 %15, 16777215
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  %shl.i.i43.masked = and i32 %shl.i.i43, 254
  %conv13.i = or i32 %shl.i.i43.masked, %cond.i.i46
  %or15.i = or i32 %conv13.i, %17
  br label %sw.epilog.i

if.end23:                                         ; preds = %if.end
  %18 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 127500)
  %20 = ptrtoint ptr %mdeg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mdeg, align 4
  %.frozen55 = freeze i32 %19
  %div.i.i.i53 = udiv i32 %.frozen55, 1000
  %conv.i.i.i = trunc i32 %div.i.i.i53 to i8
  %shl.i.i = shl nuw i8 %conv.i.i.i, 1
  %21 = mul i32 %div.i.i.i53, 1000
  %rem.i.i.i54.decomposed = sub i32 %.frozen55, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %rem.i.i.i54.decomposed)
  %cmp.i.i.i = icmp ugt i32 %rem.i.i.i54.decomposed, 499
  %cond.i.i = zext i1 %cmp.i.i.i to i8
  %or.i.i = or i8 %shl.i.i, %cond.i.i
  %hwmon_mtx.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %hwmon_mtx.i, i32 noundef 0) #11
  %22 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %3, label %if.end23.idt_write_temp.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

if.end23.idt_write_temp.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_write_temp.exit

sw.bb.i:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -588184832) #11, !srcloc !372
  %25 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %26, i32 4092
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #11, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i.i) #11
  %28 = and i32 %27, -16711744
  %29 = call i32 @llvm.bswap.i32(i32 %28) #11
  %conv.i = zext i8 %or.i.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %29, %shl.i
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %gasa_lock.i27.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i28.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i27.i) #11
  %cfgspc.i29.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %cfgspc.i29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfgspc.i29.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %31, i32 4088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -588184832) #11, !srcloc !372
  %32 = ptrtoint ptr %cfgspc.i29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfgspc.i29.i, align 8
  %add.ptr34.i31.i = getelementptr i8, ptr %33, i32 4092
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i31.i) #11, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i27.i, i32 noundef %call28.i28.i) #11
  %35 = and i32 %34, -65344
  %36 = call i32 @llvm.bswap.i32(i32 %35) #11
  %conv6.i = zext i8 %or.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 16
  %or8.i = or i32 %36, %shl7.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i, %if.end23.thread
  %hwmon_mtx.i50 = phi ptr [ %hwmon_mtx.i48, %if.end23.thread ], [ %hwmon_mtx.i, %sw.bb3.i ], [ %hwmon_mtx.i, %sw.bb.i ]
  %reg.0.i = phi i32 [ 258528, %if.end23.thread ], [ 258524, %sw.bb3.i ], [ 258524, %sw.bb.i ]
  %data.0.i = phi i32 [ %or15.i, %if.end23.thread ], [ %or8.i, %sw.bb3.i ], [ %or.i, %sw.bb.i ]
  call fastcc void @idt_sw_write(ptr noundef %1, i32 noundef %reg.0.i, i32 noundef %data.0.i) #11
  br label %idt_write_temp.exit

idt_write_temp.exit:                              ; preds = %sw.epilog.i, %if.end23.idt_write_temp.exit_crit_edge
  %hwmon_mtx.i52 = phi ptr [ %hwmon_mtx.i, %if.end23.idt_write_temp.exit_crit_edge ], [ %hwmon_mtx.i50, %sw.epilog.i ]
  call void @mutex_unlock(ptr noundef %hwmon_mtx.i52) #11
  br label %cleanup

cleanup:                                          ; preds = %idt_write_temp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %idt_write_temp.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdeg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_sysfs_reset_hist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hwmon_mtx.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %hwmon_mtx.i, i32 noundef 0) #11
  %gasa_lock.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -588184832) #11, !srcloc !372
  %4 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %5, i32 4092
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i.i) #11
  %7 = and i32 %6, -16711744
  %8 = or i32 %7, 16711680
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %9 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -588184832) #11, !srcloc !372
  %11 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %12, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %8) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i) #11
  tail call void @mutex_unlock(ptr noundef %hwmon_mtx.i) #11
  tail call void @mutex_lock_nested(ptr noundef %hwmon_mtx.i, i32 noundef 0) #11
  %call28.i28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %13 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %14, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -588184832) #11, !srcloc !372
  %15 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i31.i = getelementptr i8, ptr %16, i32 4092
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i31.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i28.i) #11
  %18 = and i32 %17, -65344
  %call28.i4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %19 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %20, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 -588184832) #11, !srcloc !372
  %21 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i7 = getelementptr i8, ptr %22, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i7, i32 %18) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i4) #11
  tail call void @mutex_unlock(ptr noundef %hwmon_mtx.i) #11
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_thread_isr(i32 noundef %irq, ptr noundef %devid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %devid, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_msg_isr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_thread_isr, %if.then.i)) #11
          to label %idt_msg_isr.exit [label %if.then.i], !srcloc !367

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %devid, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_msg_isr.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.103, i32 noundef %3) #11
  br label %idt_msg_isr.exit

idt_msg_isr.exit:                                 ; preds = %if.then.i, %if.then
  tail call void @ntb_msg_event(ptr noundef %devid) #11
  br label %if.end

if.end:                                           ; preds = %idt_msg_isr.exit, %entry.if.end_crit_edge
  %handled.0.off0 = phi i32 [ 1, %idt_msg_isr.exit ], [ 0, %entry.if.end_crit_edge ]
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_db_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_thread_isr, %if.then.i30)) #11
          to label %idt_db_isr.exit [label %if.then.i30], !srcloc !367

if.then.i30:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i28 = getelementptr inbounds %struct.ntb_dev, ptr %devid, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i28, align 8
  %dev.i29 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_db_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev.i29, ptr noundef nonnull @.str.105, i32 noundef %3) #11
  br label %idt_db_isr.exit

idt_db_isr.exit:                                  ; preds = %if.then.i30, %if.then3
  tail call void @ntb_db_event(ptr noundef %devid, i32 noundef 0) #11
  br label %if.end4

if.end4:                                          ; preds = %idt_db_isr.exit, %if.end.if.end4_crit_edge
  %handled.1.off0 = phi i32 [ 1, %idt_db_isr.exit ], [ %handled.0.off0, %if.end.if.end4_crit_edge ]
  %and5 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.do.body_crit_edge, label %if.then7

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @idt_se_isr(ptr noundef %devid, i32 noundef %3)
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end4.do.body_crit_edge
  %handled.2.off0 = phi i32 [ 1, %if.then7 ], [ %handled.1.off0, %if.end4.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_thread_isr.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_thread_isr, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !367

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %devid, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_thread_isr.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  ret i32 %handled.2.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_nt_write(ptr nocapture noundef readonly %ndev, i32 noundef %reg, i32 noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %if.end23.critedge, label %do.end, !prof !373

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 306, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end23.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %1 = ptrtoint ptr %cfgspc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgspc, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %data) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !372
  br label %return

return:                                           ; preds = %if.end23.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_se_isr(ptr noundef %ndev, i32 noundef %ntint_sts) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 15467264) #11, !srcloc !372
  %2 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %3, i32 4092
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  %call28.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %5 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %6, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 216793856) #11, !srcloc !372
  %7 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i16 = getelementptr i8, ptr %8, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i16, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i13) #11
  %call28.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %9 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %10, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 351011584) #11, !srcloc !372
  %11 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i21 = getelementptr i8, ptr %12, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i21, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i18) #11
  %call28.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %13 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %14, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 820773632) #11, !srcloc !372
  %15 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i26 = getelementptr i8, ptr %16, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i26, i32 -1) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i23) #11
  %17 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %18, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 134217728) #11, !srcloc !372
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_se_isr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_se_isr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ndev, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_se_isr.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %ntint_sts, i32 noundef %19) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @ntb_link_event(ptr noundef %ndev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_msg_event(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_db_event(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_link_event(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_register_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_port_number(ptr nocapture noundef readonly %ntb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_peer_port_count(ptr nocapture noundef readonly %ntb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_peer_port_number(ptr nocapture noundef readonly %ntb, i32 noundef %pidx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp = icmp slt i32 %pidx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp1.not = icmp ugt i32 %conv, %pidx
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8
  %conv3 = zext i8 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv3, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_peer_port_idx(ptr nocapture noundef readonly %ntb, i32 noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %port)
  %0 = icmp ugt i32 %port, 23
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 6, i32 %port
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @idt_ntb_link_is_up(ptr noundef %ntb, ptr noundef writeonly %speed, ptr noundef writeonly %width) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %speed, null
  %cmp1.not = icmp eq ptr %width, null
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %3, 16
  %shr = and i32 %and, 15
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  br i1 %cmp1.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and6 = lshr i32 %3, 20
  %shr7 = and i32 %and6, 63
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr7, ptr %width, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %6 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %9 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %11, i32 1024
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %idt_ntb_local_link_is_up.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

idt_ntb_local_link_is_up.exit:                    ; preds = %if.end.i
  %mtbl_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 8
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mtbl_lock.i) #11
  %part.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 3
  %14 = ptrtoint ptr %part.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %part.i, align 1
  %conv11.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %17, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %18 = shl nuw i32 %conv11.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %18) #11, !srcloc !372
  %19 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i31.i = getelementptr i8, ptr %20, i32 1240
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mtbl_lock.i, i32 noundef %call8.i) #11
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.i.not = icmp eq i32 %22, 0
  br i1 %tobool15.i.not, label %idt_ntb_local_link_is_up.exit.cleanup_crit_edge, label %for.cond.preheader

idt_ntb_local_link_is_up.exit.cleanup_crit_edge:  ; preds = %idt_ntb_local_link_is_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %idt_ntb_local_link_is_up.exit
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %23 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp1445.not = icmp eq i8 %24, 0
  br i1 %cmp1445.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gasa_lock.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %status.048 = phi i64 [ 0, %for.body.lr.ph ], [ %status.1, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 8
  %idxprom.i = zext i8 %26 to i32
  %sts.i = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %idxprom.i, i32 4
  %27 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sts.i, align 4
  %call28.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %29 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i37 = getelementptr i8, ptr %30, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %31) #11, !srcloc !372
  %32 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %33, i32 4092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i.i) #11
  %35 = and i32 %34, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i38 = icmp eq i32 %35, 0
  br i1 %tobool.not.i38, label %for.body.for.inc_crit_edge, label %if.end.i39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i39:                                       ; preds = %for.body
  %arrayidx2.i = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i, align 4
  %38 = and i32 %37, -262141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %.not.i46.i = icmp eq i32 %38, 0
  br i1 %.not.i46.i, label %idt_sw_read.exit55.i, label %idt_sw_read.exit55.thread.i, !prof !373

idt_sw_read.exit55.thread.i:                      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 383, i32 noundef 9, ptr noundef null) #11
  br label %idt_sw_read.exit65.i

idt_sw_read.exit55.i:                             ; preds = %if.end.i39
  %call28.i49.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %39 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %40, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %41) #11, !srcloc !372
  %42 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i52.i = getelementptr i8, ptr %43, i32 4092
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i52.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i49.i) #11
  %45 = and i32 %44, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7.not.i = icmp eq i32 %45, 0
  br i1 %tobool7.not.i, label %idt_sw_read.exit55.i.for.inc_crit_edge, label %idt_sw_read.exit55.i.idt_sw_read.exit65.i_crit_edge

idt_sw_read.exit55.i.idt_sw_read.exit65.i_crit_edge: ; preds = %idt_sw_read.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_sw_read.exit65.i

idt_sw_read.exit55.i.for.inc_crit_edge:           ; preds = %idt_sw_read.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

idt_sw_read.exit65.i:                             ; preds = %idt_sw_read.exit55.i.idt_sw_read.exit65.i_crit_edge, %idt_sw_read.exit55.thread.i
  %ntctl.i = getelementptr [24 x %struct.idt_ntb_port], ptr @portdata_tbl, i32 0, i32 %idxprom.i, i32 2
  %46 = ptrtoint ptr %ntctl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ntctl.i, align 4
  %call28.i59.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %48 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %49, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %50) #11, !srcloc !372
  %51 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i62.i = getelementptr i8, ptr %52, i32 4092
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i62.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i59.i) #11
  %54 = and i32 %53, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool14.not.i = icmp eq i32 %54, 0
  br i1 %tobool14.not.i, label %idt_sw_read.exit65.i.for.inc_crit_edge, label %idt_ntb_peer_link_is_up.exit

idt_sw_read.exit65.i.for.inc_crit_edge:           ; preds = %idt_sw_read.exit65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

idt_ntb_peer_link_is_up.exit:                     ; preds = %idt_sw_read.exit65.i
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mtbl_lock.i) #11
  %part.i41 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %indvars.iv, i32 1
  %55 = ptrtoint ptr %part.i41 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %part.i41, align 1
  %conv24.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %58, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %59 = shl nuw i32 %conv24.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %59) #11, !srcloc !372
  %60 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i69.i = getelementptr i8, ptr %61, i32 1240
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #11, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mtbl_lock.i, i32 noundef %call19.i) #11
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool28.i.not = icmp eq i32 %63, 0
  br i1 %tobool28.i.not, label %idt_ntb_peer_link_is_up.exit.for.inc_crit_edge, label %if.then18

idt_ntb_peer_link_is_up.exit.for.inc_crit_edge:   ; preds = %idt_ntb_peer_link_is_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %idt_ntb_peer_link_is_up.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sh_prom = zext i32 %indvars.iv to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %status.048
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %idt_ntb_peer_link_is_up.exit.for.inc_crit_edge, %idt_sw_read.exit65.i.for.inc_crit_edge, %idt_sw_read.exit55.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %status.1 = phi i64 [ %or, %if.then18 ], [ %status.048, %idt_ntb_peer_link_is_up.exit.for.inc_crit_edge ], [ %status.048, %for.body.for.inc_crit_edge ], [ %status.048, %idt_sw_read.exit55.i.for.inc_crit_edge ], [ %status.048, %idt_sw_read.exit65.i.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %64 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %peer_cnt, align 2
  %66 = zext i8 %65 to i32
  %cmp14 = icmp ult i32 %indvars.iv.next, %66
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %idt_ntb_local_link_is_up.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %idt_ntb_local_link_is_up.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %status.1, %for.inc.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_link_enable(ptr noundef %ntb, i32 noundef %speed, i32 noundef %width) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #11, !srcloc !372
  %2 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %3, i32 1244
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #11, !srcloc !369
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %shl.i = shl i32 %5, 1
  %part.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 3
  %6 = ptrtoint ptr %part.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %part.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 17
  %or3.i = or i32 %shl.i, %shl1.i
  %or4.i = or i32 %or3.i, 1
  %mtbl_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 8
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mtbl_lock.i) #11
  %8 = ptrtoint ptr %part.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %part.i, align 1
  %conv12.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %11, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %12 = shl nuw i32 %conv12.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %12) #11, !srcloc !372
  %13 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %14, i32 1240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %15) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mtbl_lock.i, i32 noundef %call8.i) #11
  %16 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %17, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 16777216) #11, !srcloc !372
  %18 = ptrtoint ptr %part.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %part.i, align 1
  %conv15.i = zext i8 %19 to i32
  %shl16.i = shl nuw i32 1, %conv15.i
  %gasa_lock.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 16
  %call28.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i.i) #11
  %20 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %21, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 820773632) #11, !srcloc !372
  %22 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %23, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl16.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %24) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i.i, i32 noundef %call28.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_ntb_link_enable.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_ntb_link_enable, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_ntb_link_enable.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.112) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_link_disable(ptr noundef %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @idt_ntb_local_link_disable(ptr noundef %ntb)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_ntb_link_disable.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_ntb_link_disable, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_ntb_link_disable.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.114) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_mw_count(ptr nocapture noundef readonly %ntb, i32 noundef %pidx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp = icmp slt i32 %pidx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp1.not = icmp ugt i32 %conv, %pidx
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %mw_cnt = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 2
  %2 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mw_cnt, align 2
  %conv3 = zext i8 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv3, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_mw_get_align(ptr nocapture noundef readonly %ntb, i32 noundef %pidx, i32 noundef %widx, ptr noundef writeonly %addr_align, ptr noundef writeonly %size_align, ptr noundef writeonly %size_max) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp = icmp slt i32 %pidx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp1.not = icmp ule i32 %conv, %pidx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %widx)
  %cmp3 = icmp slt i32 %widx, 0
  %or.cond = or i1 %cmp3, %cmp1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mw_cnt = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 2
  %2 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mw_cnt, align 2
  %conv6 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %widx)
  %cmp7.not = icmp ugt i32 %conv6, %widx
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  %cmp11.not = icmp eq ptr %addr_align, null
  br i1 %cmp11.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %mws = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 3
  %4 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mws, align 4
  %addr_align15 = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 3
  %6 = ptrtoint ptr %addr_align15 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr_align15, align 8
  %conv16 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %addr_align to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv16, ptr %addr_align, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %cmp18.not = icmp eq ptr %size_align, null
  br i1 %cmp18.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %mws21 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 3
  %9 = ptrtoint ptr %mws21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mws21, align 4
  %size_align23 = getelementptr %struct.idt_mw_cfg, ptr %10, i32 %widx, i32 4
  %11 = ptrtoint ptr %size_align23 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size_align23, align 8
  %conv24 = trunc i64 %12 to i32
  %13 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv24, ptr %size_align, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %cmp26.not = icmp eq ptr %size_max, null
  br i1 %cmp26.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %mws29 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 3
  %14 = ptrtoint ptr %mws29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mws29, align 4
  %size_max31 = getelementptr %struct.idt_mw_cfg, ptr %15, i32 %widx, i32 5
  %16 = ptrtoint ptr %size_max31 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size_max31, align 8
  %conv32 = trunc i64 %17 to i32
  %18 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv32, ptr %size_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_peer_mw_count(ptr nocapture noundef readonly %ntb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 9
  %0 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mw_cnt, align 4
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_peer_mw_get_addr(ptr nocapture noundef readonly %ntb, i32 noundef %widx, ptr noundef writeonly %base, ptr noundef writeonly %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %widx)
  %cmp = icmp slt i32 %widx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 9
  %0 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mw_cnt, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %widx)
  %cmp1.not = icmp ugt i32 %conv, %widx
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp3.not = icmp eq ptr %base, null
  br i1 %cmp3.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %mws = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 10
  %4 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mws, align 8
  %bar = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 1
  %6 = ptrtoint ptr %bar to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bar, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx6 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 8
  %idx = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 2
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %idx, align 1
  %conv10 = zext i8 %11 to i64
  %size_max = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 5
  %12 = ptrtoint ptr %size_max to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size_max, align 8
  %mul = mul i64 %13, %conv10
  %14 = trunc i64 %mul to i32
  %conv13 = add i32 %9, %14
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv13, ptr %base, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end.if.end14_crit_edge
  %cmp15.not = icmp eq ptr %size, null
  br i1 %cmp15.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %mws18 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 10
  %16 = ptrtoint ptr %mws18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mws18, align 8
  %size_max20 = getelementptr %struct.idt_mw_cfg, ptr %17, i32 %widx, i32 5
  %18 = ptrtoint ptr %size_max20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size_max20, align 8
  %conv21 = trunc i64 %19 to i32
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv21, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_peer_mw_set_trans(ptr noundef %ntb, i32 noundef %pidx, i32 noundef %widx, i64 noundef %addr, i32 noundef %size) #3 align 64 {
entry:
  %region.i = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp = icmp slt i32 %pidx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp1.not = icmp ule i32 %conv, %pidx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %widx)
  %cmp3 = icmp slt i32 %widx, 0
  %or.cond = or i1 %cmp3, %cmp1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 9
  %2 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mw_cnt, align 4
  %conv6 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %widx)
  %cmp7.not = icmp ugt i32 %conv6, %widx
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  %mws = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 10
  %4 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mws, align 8
  %arrayidx = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx
  %addr_align = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 3
  %6 = ptrtoint ptr %addr_align to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr_align, align 8
  %sub = add i64 %7, -1
  %and = and i64 %sub, %addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp11 = icmp eq i64 %and, 0
  br i1 %cmp11, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %size_align = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 4
  %8 = ptrtoint ptr %size_align to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size_align, align 8
  %conv15 = trunc i64 %9 to i32
  %sub16 = add i32 %conv15, -1
  %and17 = and i32 %sub16, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %lor.lhs.false20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end14
  %conv21 = zext i32 %size to i64
  %size_max = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 5
  %10 = ptrtoint ptr %size_max to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv21)
  %cmp22 = icmp ult i64 %11, %conv21
  br i1 %cmp22, label %lor.lhs.false20.cleanup_crit_edge, label %if.end25

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false20
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp26 = icmp eq i32 %13, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  %bar29 = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 1
  %14 = ptrtoint ptr %bar29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bar29, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx30 = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx30, align 4
  %call = tail call fastcc i32 @idt_nt_read(ptr noundef %ntb, i32 noundef %17)
  %and31 = and i32 %call, -57345
  %part = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 1
  %18 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %part, align 1
  %conv33 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv33, 13
  %or = or i32 %shl, %and31
  tail call fastcc void @idt_nt_write(ptr noundef %ntb, i32 noundef %17, i32 noundef %or)
  %ltbase = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom, i32 2
  %20 = ptrtoint ptr %ltbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ltbase, align 4
  %conv35 = trunc i64 %addr to i32
  tail call fastcc void @idt_nt_write(ptr noundef %ntb, i32 noundef %21, i32 noundef %conv35)
  %utbase = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom, i32 3
  %22 = ptrtoint ptr %utbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %utbase, align 4
  %shr = lshr i64 %addr, 32
  %conv36 = trunc i64 %shr to i32
  tail call fastcc void @idt_nt_write(ptr noundef %ntb, i32 noundef %23, i32 noundef %conv36)
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %26 = ptrtoint ptr %bar29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bar29, align 4
  %conv38 = zext i8 %27 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #11
  %28 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %region.i, align 4, !annotation !368
  %29 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !368
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %25, i32 0, i32 47, i32 %conv38
  call void @pcibios_resource_to_bus(ptr noundef %32, ptr noundef nonnull %region.i, ptr noundef %arrayidx.i) #11
  %33 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %region.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #11
  %add = add i32 %34, %size
  %limit41 = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom, i32 1
  %35 = ptrtoint ptr %limit41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit41, align 4
  call fastcc void @idt_nt_write(ptr noundef %ntb, i32 noundef %36, i32 noundef %add)
  %and43 = and i32 %call, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 4
  br i1 %cmp44, label %if.then46, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then46:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %limit48 = getelementptr %struct.idt_ntb_bar, ptr %arrayidx30, i32 1, i32 1
  %37 = ptrtoint ptr %limit48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %limit48, align 4
  call fastcc void @idt_nt_write(ptr noundef %ntb, i32 noundef %38, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 2
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %idx, align 1
  %conv52 = zext i8 %40 to i32
  %bar55 = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 1
  %41 = ptrtoint ptr %bar55 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bar55, align 4
  %conv56 = zext i8 %42 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %or59 = or i32 %shl57, %conv52
  %part62 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 1
  %43 = ptrtoint ptr %part62 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %part62, align 1
  %conv63 = zext i8 %44 to i32
  %or66 = or i32 %conv63, -2147483648
  %lut_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 11
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lut_lock) #11
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %45 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 1248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or59) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %47) #11, !srcloc !372
  %conv75 = trunc i64 %addr to i32
  %48 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i128 = getelementptr i8, ptr %49, i32 1252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv75) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %50) #11, !srcloc !372
  %shr76 = lshr i64 %addr, 32
  %conv77 = trunc i64 %shr76 to i32
  %51 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i130 = getelementptr i8, ptr %52, i32 1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv77) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %53) #11, !srcloc !372
  %54 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i132 = getelementptr i8, ptr %55, i32 1260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %56 = tail call i32 @llvm.bswap.i32(i32 %or66) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %56) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lut_lock, i32 noundef %call72) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then46, %if.then28.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_peer_mw_clear_trans(ptr noundef %ntb, i32 noundef %pidx, i32 noundef %widx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp = icmp slt i32 %pidx, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp1.not = icmp ule i32 %conv, %pidx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %widx)
  %cmp3 = icmp slt i32 %widx, 0
  %or.cond = or i1 %cmp3, %cmp1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 9
  %2 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mw_cnt, align 4
  %conv6 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %widx)
  %cmp7.not = icmp ugt i32 %conv6, %widx
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  %mws = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 10
  %4 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mws, align 8
  %arrayidx = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %bar14 = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 1
  %8 = ptrtoint ptr %bar14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bar14, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx15 = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15, align 4
  %12 = and i32 %11, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %.not.i = icmp eq i32 %12, 0
  br i1 %.not.i, label %if.end23.i, label %do.end.i, !prof !373

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %idt_nt_read.exit

if.end23.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %13 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %phi.bo = and i32 %16, 6
  br label %idt_nt_read.exit

idt_nt_read.exit:                                 ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ 6, %do.end.i ], [ %phi.bo, %if.end23.i ]
  %limit = getelementptr [6 x %struct.idt_ntb_bar], ptr @ntdata_tbl, i32 0, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %limit, align 4
  %19 = and i32 %18, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %.not.i58 = icmp eq i32 %19, 0
  br i1 %.not.i58, label %if.end23.critedge.i, label %do.end.i59, !prof !373

do.end.i59:                                       ; preds = %idt_nt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 306, i32 noundef 9, ptr noundef null) #11
  br label %idt_nt_write.exit

if.end23.critedge.i:                              ; preds = %idt_nt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i60 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %20 = ptrtoint ptr %cfgspc.i60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgspc.i60, align 8
  %add.ptr.i61 = getelementptr i8, ptr %21, i32 %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #11, !srcloc !372
  br label %idt_nt_write.exit

idt_nt_write.exit:                                ; preds = %if.end23.critedge.i, %do.end.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp16 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp16, label %if.then18, label %idt_nt_write.exit.cleanup_crit_edge

idt_nt_write.exit.cleanup_crit_edge:              ; preds = %idt_nt_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %idt_nt_write.exit
  %limit20 = getelementptr %struct.idt_ntb_bar, ptr %arrayidx15, i32 1, i32 1
  %22 = ptrtoint ptr %limit20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %limit20, align 4
  %24 = and i32 %23, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %.not.i62 = icmp eq i32 %24, 0
  br i1 %.not.i62, label %if.end23.critedge.i66, label %do.end.i63, !prof !373

do.end.i63:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 306, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23.critedge.i66:                            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i64 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %25 = ptrtoint ptr %cfgspc.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfgspc.i64, align 8
  %add.ptr.i65 = getelementptr i8, ptr %26, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #11, !srcloc !372
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 2
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %idx, align 1
  %conv22 = zext i8 %28 to i32
  %bar23 = getelementptr %struct.idt_mw_cfg, ptr %5, i32 %widx, i32 1
  %29 = ptrtoint ptr %bar23 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bar23, align 4
  %conv24 = zext i8 %30 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or27 = or i32 %shl25, %conv22
  %lut_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 11
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lut_lock) #11
  %cfgspc.i68 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %31 = ptrtoint ptr %cfgspc.i68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfgspc.i68, align 8
  %add.ptr.i69 = getelementptr i8, ptr %32, i32 1248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %or27) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %33) #11, !srcloc !372
  %34 = ptrtoint ptr %cfgspc.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfgspc.i68, align 8
  %add.ptr.i72 = getelementptr i8, ptr %35, i32 1252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 0) #11, !srcloc !372
  %36 = ptrtoint ptr %cfgspc.i68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfgspc.i68, align 8
  %add.ptr.i75 = getelementptr i8, ptr %37, i32 1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 0) #11, !srcloc !372
  %38 = ptrtoint ptr %cfgspc.i68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfgspc.i68, align 8
  %add.ptr.i78 = getelementptr i8, ptr %39, i32 1260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 0) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lut_lock, i32 noundef %call33) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end23.critedge.i66, %do.end.i63, %idt_nt_write.exit.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %idt_nt_write.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end.i63 ], [ 0, %if.end23.critedge.i66 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @idt_ntb_db_valid_mask(ptr nocapture noundef readnone %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 4294967295
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @idt_ntb_db_read(ptr nocapture noundef readonly %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1064
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_db_clear(ptr nocapture noundef readonly %ntb, i64 noundef %db_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %db_bits to i32
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !372
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @idt_ntb_db_read_mask(ptr nocapture noundef readonly %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1068
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_db_set_mask(ptr noundef %ntb, i64 noundef %db_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %db_bits)
  %tobool.not.i = icmp ult i64 %db_bits, 4294967296
  br i1 %tobool.not.i, label %do.body1.i, label %entry.idt_reg_set_bits.exit_crit_edge

entry.idt_reg_set_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_reg_set_bits.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %db_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_mask_lock) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1068
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv617.i = trunc i64 %db_bits to i32
  %or18.i = or i32 %3, %conv617.i
  %4 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %5, i32 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %6) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_mask_lock, i32 noundef %call2.i) #11
  br label %idt_reg_set_bits.exit

idt_reg_set_bits.exit:                            ; preds = %do.body1.i, %entry.idt_reg_set_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body1.i ], [ -22, %entry.idt_reg_set_bits.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_db_clear_mask(ptr noundef %ntb, i64 noundef %db_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %db_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_mask_lock) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1068
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv615.i = trunc i64 %db_bits to i32
  %neg16.i = xor i32 %conv615.i, -1
  %and17.i = and i32 %3, %neg16.i
  %4 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %5, i32 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %and17.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_mask_lock, i32 noundef %call2.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_peer_db_set(ptr nocapture noundef readonly %ntb, i64 noundef %db_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %db_bits)
  %tobool.not = icmp ult i64 %db_bits, 4294967296
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %db_bits to i32
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !372
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idt_ntb_msg_count(ptr nocapture noundef readnone %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @idt_ntb_msg_inbits(ptr nocapture noundef readnone %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 983040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @idt_ntb_msg_outbits(ptr nocapture noundef readnone %ntb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @idt_ntb_msg_read_sts(ptr nocapture noundef readonly %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_msg_clear_sts(ptr nocapture noundef readonly %ntb, i64 noundef %sts_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sts_bits to i32
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !372
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_msg_set_mask(ptr noundef %ntb, i64 noundef %mask_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %mask_bits, -983056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %entry.idt_reg_set_bits.exit_crit_edge

entry.idt_reg_set_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_reg_set_bits.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %msg_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msg_mask_lock) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv617.i = trunc i64 %mask_bits to i32
  %or18.i = or i32 %3, %conv617.i
  %4 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %5, i32 1124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %6) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_mask_lock, i32 noundef %call2.i) #11
  br label %idt_reg_set_bits.exit

idt_reg_set_bits.exit:                            ; preds = %do.body1.i, %entry.idt_reg_set_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body1.i ], [ -22, %entry.idt_reg_set_bits.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_msg_clear_mask(ptr noundef %ntb, i64 noundef %mask_bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_mask_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msg_mask_lock) #11
  %cfgspc.i.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %conv615.i = trunc i64 %mask_bits to i32
  %neg16.i = xor i32 %conv615.i, -1
  %and17.i = and i32 %3, %neg16.i
  %4 = ptrtoint ptr %cfgspc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %5, i32 1124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %and17.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msg_mask_lock, i32 noundef %call2.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_msg_read(ptr nocapture noundef readonly %ntb, ptr noundef writeonly %pidx, i32 noundef %midx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %midx)
  %0 = icmp ugt i32 %midx, 3
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq ptr %pidx, null
  br i1 %cmp2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %src = getelementptr %struct.idt_ntb_regs, ptr @ntdata_tbl, i32 0, i32 1, i32 %midx, i32 2
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src, align 4
  %3 = and i32 %2, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %if.end23.i, label %do.end.i, !prof !373

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %idt_nt_read.exit

if.end23.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %4 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !369
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br label %idt_nt_read.exit

idt_nt_read.exit:                                 ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ %7, %if.end23.i ]
  %arrayidx4 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 7, i32 %retval.0.i
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %pidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %idt_nt_read.exit, %if.end.if.end9_crit_edge
  %arrayidx10 = getelementptr %struct.idt_ntb_regs, ptr @ntdata_tbl, i32 0, i32 1, i32 %midx
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  %13 = and i32 %12, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not.i20 = icmp eq i32 %13, 0
  br i1 %.not.i20, label %if.end23.i24, label %do.end.i21, !prof !373

do.end.i21:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23.i24:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i22 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %14 = ptrtoint ptr %cfgspc.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfgspc.i22, align 8
  %add.ptr.i23 = getelementptr i8, ptr %15, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #11, !srcloc !369
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i24, %do.end.i21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end.i21 ], [ %17, %if.end23.i24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_ntb_peer_msg_write(ptr noundef %ntb, i32 noundef %pidx, i32 noundef %midx, i32 noundef %msg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %midx)
  %0 = icmp ugt i32 %midx, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx)
  %cmp2 = icmp slt i32 %pidx, 0
  %or.cond42 = or i1 %cmp2, %0
  br i1 %or.cond42, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 4
  %1 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %peer_cnt, align 2
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pidx)
  %cmp4.not = icmp ugt i32 %conv, %pidx
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %part = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 5, i32 %pidx, i32 1
  %3 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %part, align 1
  %conv8 = zext i8 %4 to i32
  %shl9 = shl nuw nsw i32 %conv8, 4
  %or11 = or i32 %shl9, %midx
  %arrayidx16 = getelementptr %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 12, i32 %midx
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx16) #11
  %part20 = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 3
  %5 = ptrtoint ptr %part20 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %part20, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx22 = getelementptr [8 x %struct.idt_ntb_part], ptr @partdata_tbl, i32 0, i32 %idxprom, i32 2, i32 %midx
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx22, align 4
  tail call fastcc void @idt_sw_write(ptr noundef %ntb, i32 noundef %8, i32 noundef %or11)
  %out = getelementptr %struct.idt_ntb_regs, ptr @ntdata_tbl, i32 0, i32 1, i32 %midx, i32 1
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out, align 4
  %11 = and i32 %10, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not.i = icmp eq i32 %11, 0
  br i1 %.not.i, label %if.end23.critedge.i, label %do.end.i, !prof !373

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 306, i32 noundef 9, ptr noundef null) #11
  br label %idt_nt_write.exit

if.end23.critedge.i:                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ntb, i32 0, i32 13
  %12 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %msg) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #11, !srcloc !372
  br label %idt_nt_write.exit

idt_nt_write.exit:                                ; preds = %if.end23.critedge.i, %do.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx16, i32 noundef %call17) #11
  br label %cleanup

cleanup:                                          ; preds = %idt_nt_write.exit, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %idt_nt_write.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @idt_ntb_local_link_disable(ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 13
  %0 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !372
  %mtbl_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mtbl_lock) #11
  %part = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 3
  %2 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %part, align 1
  %conv5 = zext i8 %3 to i32
  %4 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %6 = shl nuw i32 %conv5, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %6) #11, !srcloc !372
  %7 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 1240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mtbl_lock, i32 noundef %call2) #11
  %9 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %10, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 16777216) #11, !srcloc !372
  %11 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %part, align 1
  %conv8 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv8
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %ndev, i32 0, i32 16
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %13 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i24 = getelementptr i8, ptr %14, i32 4088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 820773632) #11, !srcloc !372
  %15 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %16, i32 4092
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %17) #11, !srcloc !372
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_dbgfs_info_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp) #3 align 64 {
entry:
  %speed = alloca i32, align 4
  %width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #11
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %speed, align 4, !annotation !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #11
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %width, align 4, !annotation !368
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #15
  %cmp1 = icmp eq ptr %call9.i, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %4, ptr noundef nonnull @.str.120) #11
  %add.ptr3 = getelementptr i8, ptr %call9.i, i32 %call2
  %sub4 = sub i32 %4, %call2
  %port = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 4
  %conv = zext i8 %6 to i32
  %part = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %part, align 1
  %conv5 = zext i8 %8 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.121, i32 noundef %conv, i32 noundef %conv5) #11
  %add7 = add i32 %call6, %call2
  %add.ptr8 = getelementptr i8, ptr %call9.i, i32 %add7
  %sub9 = sub i32 %4, %add7
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.122) #11
  %add11 = add i32 %add7, %call10
  %peer_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp14725.not = icmp eq i8 %10, 0
  br i1 %cmp14725.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %off.0727 = phi i32 [ %add27, %for.body.for.body_crit_edge ], [ %add11, %if.end.for.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %call9.i, i32 %off.0727
  %sub17 = sub i32 %4, %off.0727
  %arrayidx = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 8
  %conv20 = zext i8 %12 to i32
  %part24 = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %indvars.iv, i32 1
  %13 = ptrtoint ptr %part24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %part24, align 1
  %conv25 = zext i8 %14 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.123, i32 noundef %indvars.iv, i32 noundef %conv20, i32 noundef %conv25) #11
  %add27 = add i32 %call26, %off.0727
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %15 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %peer_cnt, align 2
  %17 = zext i8 %16 to i32
  %cmp14 = icmp ult i32 %indvars.iv.next, %17
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %off.0.lcssa = phi i32 [ %add11, %if.end.for.end_crit_edge ], [ %add27, %for.body.for.end_crit_edge ]
  %call28 = call i64 @idt_ntb_link_is_up(ptr noundef %1, ptr noundef nonnull %speed, ptr noundef nonnull %width)
  %conv29 = trunc i64 %call28 to i32
  %add.ptr30 = getelementptr i8, ptr %call9.i, i32 %off.0.lcssa
  %sub31 = sub i32 %4, %off.0.lcssa
  %call32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.124, i32 noundef %conv29) #11
  %add33 = add i32 %call32, %off.0.lcssa
  %add.ptr34 = getelementptr i8, ptr %call9.i, i32 %add33
  %sub35 = sub i32 %4, %add33
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 4
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  %call36 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.125, i32 noundef %19, i32 noundef %21) #11
  %add37 = add i32 %call36, %add33
  %add.ptr38 = getelementptr i8, ptr %call9.i, i32 %add37
  %sub39 = sub i32 %4, %add37
  %call40 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.126) #11
  %add41 = add i32 %add37, %call40
  %mtbl_lock = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 8
  %cfgspc.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 13
  br label %do.body47

do.body47:                                        ; preds = %for.inc68.do.body47_crit_edge, %for.end
  %indvars.iv749 = phi i32 [ 0, %for.end ], [ %indvars.iv.next750, %for.inc68.do.body47_crit_edge ]
  %off.1729 = phi i32 [ %add41, %for.end ], [ %off.2, %for.inc68.do.body47_crit_edge ]
  %call52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mtbl_lock) #11
  %22 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 1232
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  %24 = shl nuw nsw i32 %indvars.iv749, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #11, !srcloc !372
  %25 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i594 = getelementptr i8, ptr %26, i32 1240
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i594) #11, !srcloc !369
  %28 = call i32 @llvm.bswap.i32(i32 %27) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mtbl_lock, i32 noundef %call52) #11
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body47.for.inc68_crit_edge, label %if.then58

do.body47.for.inc68_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

if.then58:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr59 = getelementptr i8, ptr %call9.i, i32 %off.1729
  %sub60 = sub i32 %4, %off.1729
  %and62 = lshr i32 %28, 17
  %shr = and i32 %and62, 7
  %and63 = lshr i32 %28, 1
  %shr64 = and i32 %and63, 65535
  %call65 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.127, i32 noundef %indvars.iv749, i32 noundef %shr, i32 noundef %shr64) #11
  %add66 = add i32 %call65, %off.1729
  br label %for.inc68

for.inc68:                                        ; preds = %if.then58, %do.body47.for.inc68_crit_edge
  %off.2 = phi i32 [ %add66, %if.then58 ], [ %off.1729, %do.body47.for.inc68_crit_edge ]
  %indvars.iv.next750 = add nuw nsw i32 %indvars.iv749, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next750, 64
  br i1 %exitcond.not, label %for.end70, label %for.inc68.do.body47_crit_edge

for.inc68.do.body47_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47

for.end70:                                        ; preds = %for.inc68
  %add.ptr71 = getelementptr i8, ptr %call9.i, i32 %off.2
  %sub72 = sub i32 %4, %off.2
  %call73 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.128) #11
  %add74 = add i32 %call73, %off.2
  %add.ptr75 = getelementptr i8, ptr %call9.i, i32 %add74
  %sub76 = sub i32 %4, %add74
  %call77 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.129) #11
  %add78 = add i32 %add74, %call77
  %mw_cnt = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mw_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp82732.not = icmp eq i8 %30, 0
  br i1 %cmp82732.not, label %for.end70.for.cond138.preheader_crit_edge, label %for.body84.lr.ph

for.end70.for.cond138.preheader_crit_edge:        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond138.preheader

for.body84.lr.ph:                                 ; preds = %for.end70
  %mws = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 10
  br label %for.body84

for.cond138.preheader:                            ; preds = %idt_get_mw_name.exit.for.cond138.preheader_crit_edge, %for.end70.for.cond138.preheader_crit_edge
  %off.3.lcssa = phi i32 [ %add78, %for.end70.for.cond138.preheader_crit_edge ], [ %add131, %idt_get_mw_name.exit.for.cond138.preheader_crit_edge ]
  %31 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %peer_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp142743.not = icmp eq i8 %32, 0
  br i1 %cmp142743.not, label %for.cond138.preheader.for.end242_crit_edge, label %for.cond138.preheader.for.body144_crit_edge

for.cond138.preheader.for.body144_crit_edge:      ; preds = %for.cond138.preheader
  br label %for.body144

for.cond138.preheader.for.end242_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end242

for.body84:                                       ; preds = %idt_get_mw_name.exit.for.body84_crit_edge, %for.body84.lr.ph
  %conv80734 = phi i32 [ 0, %for.body84.lr.ph ], [ %conv80, %idt_get_mw_name.exit.for.body84_crit_edge ]
  %off.3733 = phi i32 [ %add78, %for.body84.lr.ph ], [ %add131, %idt_get_mw_name.exit.for.body84_crit_edge ]
  %33 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mws, align 8
  %arrayidx86 = getelementptr %struct.idt_mw_cfg, ptr %34, i32 %conv80734
  %35 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx86, align 8
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %36, label %if.end105 [
    i32 0, label %if.end105.thread
    i32 1, label %if.end105.thread649
    i32 2, label %if.end105.thread664
  ]

if.end105.thread649:                              ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr96651 = getelementptr i8, ptr %call9.i, i32 %off.3733
  %sub97652 = sub i32 %4, %off.3733
  %sub102655 = add nuw nsw i32 %conv80734, 11
  %call103656 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96651, i32 noundef %sub97652, ptr noundef nonnull @.str.131, i32 noundef %conv80734, i32 noundef %sub102655) #11
  br label %idt_get_mw_name.exit

if.end105.thread664:                              ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr96666 = getelementptr i8, ptr %call9.i, i32 %off.3733
  %sub97667 = sub i32 %4, %off.3733
  %sub102670 = add nuw nsw i32 %conv80734, 23
  %call103671 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96666, i32 noundef %sub97667, ptr noundef nonnull @.str.131, i32 noundef %conv80734, i32 noundef %sub102670) #11
  br label %idt_get_mw_name.exit

if.end105.thread:                                 ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr91 = getelementptr i8, ptr %call9.i, i32 %off.3733
  %sub92 = sub i32 %4, %off.3733
  %call94 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.130, i32 noundef %conv80734) #11
  br label %idt_get_mw_name.exit

if.end105:                                        ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr96 = getelementptr i8, ptr %call9.i, i32 %off.3733
  %sub97 = sub i32 %4, %off.3733
  %sub102 = add nsw i32 %conv80734, -1
  %call103 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.131, i32 noundef %conv80734, i32 noundef %sub102) #11
  br label %idt_get_mw_name.exit

idt_get_mw_name.exit:                             ; preds = %if.end105, %if.end105.thread, %if.end105.thread664, %if.end105.thread649
  %call94.pn = phi i32 [ %call94, %if.end105.thread ], [ %call103656, %if.end105.thread649 ], [ %call103671, %if.end105.thread664 ], [ %call103, %if.end105 ]
  %retval.0.i639645 = phi i32 [ 1, %if.end105.thread ], [ 12, %if.end105.thread649 ], [ 24, %if.end105.thread664 ], [ 0, %if.end105 ]
  %retval.0.i598 = phi ptr [ @.str.145, %if.end105.thread ], [ @.str.146, %if.end105.thread649 ], [ @.str.147, %if.end105.thread664 ], [ @.str.148, %if.end105 ]
  %off.4642.sink = add i32 %call94.pn, %off.3733
  %add.ptr106643 = getelementptr i8, ptr %call9.i, i32 %off.4642.sink
  %sub107648 = sub i32 %4, %off.4642.sink
  %38 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mws, align 8
  %bar = getelementptr %struct.idt_mw_cfg, ptr %39, i32 %conv80734, i32 1
  %40 = ptrtoint ptr %bar to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bar, align 4
  %conv112 = zext i8 %41 to i32
  %call113 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106643, i32 noundef %sub107648, ptr noundef nonnull @.str.132, ptr noundef nonnull %retval.0.i598, i32 noundef %conv112) #11
  %add114 = add i32 %call113, %off.4642.sink
  %add.ptr115 = getelementptr i8, ptr %call9.i, i32 %add114
  %sub116 = sub i32 %4, %add114
  %42 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mws, align 8
  %addr_align = getelementptr %struct.idt_mw_cfg, ptr %43, i32 %conv80734, i32 3
  %44 = ptrtoint ptr %addr_align to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr_align, align 8
  %call120 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.133, i64 noundef %45) #11
  %add121 = add i32 %call120, %add114
  %add.ptr122 = getelementptr i8, ptr %call9.i, i32 %add121
  %sub123 = sub i32 %4, %add121
  %46 = ptrtoint ptr %mws to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mws, align 8
  %size_align = getelementptr %struct.idt_mw_cfg, ptr %47, i32 %conv80734, i32 4
  %48 = ptrtoint ptr %size_align to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size_align, align 8
  %size_max = getelementptr %struct.idt_mw_cfg, ptr %47, i32 %conv80734, i32 5
  %50 = ptrtoint ptr %size_max to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size_max, align 8
  %call130 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122, i32 noundef %sub123, ptr noundef nonnull @.str.134, i64 noundef %49, i64 noundef %51) #11
  %add131 = add i32 %call130, %add121
  %add135 = add nuw nsw i32 %retval.0.i639645, %conv80734
  %conv80 = and i32 %add135, 255
  %52 = ptrtoint ptr %mw_cnt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mw_cnt, align 4
  %conv81 = zext i8 %53 to i32
  %cmp82 = icmp ult i32 %conv80, %conv81
  br i1 %cmp82, label %idt_get_mw_name.exit.for.body84_crit_edge, label %idt_get_mw_name.exit.for.cond138.preheader_crit_edge

idt_get_mw_name.exit.for.cond138.preheader_crit_edge: ; preds = %idt_get_mw_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond138.preheader

idt_get_mw_name.exit.for.body84_crit_edge:        ; preds = %idt_get_mw_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body84

for.body144:                                      ; preds = %for.inc240.for.body144_crit_edge, %for.cond138.preheader.for.body144_crit_edge
  %indvars.iv751 = phi i32 [ %indvars.iv.next752, %for.inc240.for.body144_crit_edge ], [ 0, %for.cond138.preheader.for.body144_crit_edge ]
  %off.5745 = phi i32 [ %off.6.lcssa, %for.inc240.for.body144_crit_edge ], [ %off.3.lcssa, %for.cond138.preheader.for.body144_crit_edge ]
  %add.ptr145 = getelementptr i8, ptr %call9.i, i32 %off.5745
  %sub146 = sub i32 %4, %off.5745
  %arrayidx150 = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %indvars.iv751
  %54 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx150, align 8
  %conv152 = zext i8 %55 to i32
  %call153 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr145, i32 noundef %sub146, ptr noundef nonnull @.str.135, i32 noundef %indvars.iv751, i32 noundef %conv152) #11
  %add154 = add i32 %call153, %off.5745
  %mw_cnt160 = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %indvars.iv751, i32 2
  %56 = ptrtoint ptr %mw_cnt160 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mw_cnt160, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp162738.not = icmp eq i8 %57, 0
  br i1 %cmp162738.not, label %for.body144.for.inc240_crit_edge, label %for.body164.lr.ph

for.body144.for.inc240_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc240

for.body164.lr.ph:                                ; preds = %for.body144
  %mws168 = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %indvars.iv751, i32 3
  br label %for.body164

for.body164:                                      ; preds = %idt_get_mw_name.exit608.for.body164_crit_edge, %for.body164.lr.ph
  %conv156740 = phi i32 [ 0, %for.body164.lr.ph ], [ %conv156, %idt_get_mw_name.exit608.for.body164_crit_edge ]
  %off.6739 = phi i32 [ %add154, %for.body164.lr.ph ], [ %add233, %idt_get_mw_name.exit608.for.body164_crit_edge ]
  %58 = ptrtoint ptr %mws168 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mws168, align 4
  %arrayidx170 = getelementptr %struct.idt_mw_cfg, ptr %59, i32 %conv156740
  %60 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx170, align 8
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %61, label %if.end191 [
    i32 0, label %if.end191.thread
    i32 1, label %if.end191.thread692
    i32 2, label %if.end191.thread707
  ]

if.end191.thread692:                              ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr182694 = getelementptr i8, ptr %call9.i, i32 %off.6739
  %sub183695 = sub i32 %4, %off.6739
  %sub188698 = add nuw nsw i32 %conv156740, 11
  %call189699 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182694, i32 noundef %sub183695, ptr noundef nonnull @.str.131, i32 noundef %conv156740, i32 noundef %sub188698) #11
  br label %idt_get_mw_name.exit608

if.end191.thread707:                              ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr182709 = getelementptr i8, ptr %call9.i, i32 %off.6739
  %sub183710 = sub i32 %4, %off.6739
  %sub188713 = add nuw nsw i32 %conv156740, 23
  %call189714 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182709, i32 noundef %sub183710, ptr noundef nonnull @.str.131, i32 noundef %conv156740, i32 noundef %sub188713) #11
  br label %idt_get_mw_name.exit608

if.end191.thread:                                 ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr176 = getelementptr i8, ptr %call9.i, i32 %off.6739
  %sub177 = sub i32 %4, %off.6739
  %call179 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr176, i32 noundef %sub177, ptr noundef nonnull @.str.130, i32 noundef %conv156740) #11
  br label %idt_get_mw_name.exit608

if.end191:                                        ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr182 = getelementptr i8, ptr %call9.i, i32 %off.6739
  %sub183 = sub i32 %4, %off.6739
  %sub188 = add nsw i32 %conv156740, -1
  %call189 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.131, i32 noundef %conv156740, i32 noundef %sub188) #11
  br label %idt_get_mw_name.exit608

idt_get_mw_name.exit608:                          ; preds = %if.end191, %if.end191.thread, %if.end191.thread707, %if.end191.thread692
  %call179.pn = phi i32 [ %call179, %if.end191.thread ], [ %call189699, %if.end191.thread692 ], [ %call189714, %if.end191.thread707 ], [ %call189, %if.end191 ]
  %retval.0.i602682688 = phi i32 [ 1, %if.end191.thread ], [ 12, %if.end191.thread692 ], [ 24, %if.end191.thread707 ], [ 0, %if.end191 ]
  %retval.0.i607 = phi ptr [ @.str.145, %if.end191.thread ], [ @.str.146, %if.end191.thread692 ], [ @.str.147, %if.end191.thread707 ], [ @.str.148, %if.end191 ]
  %off.7685.sink = add i32 %call179.pn, %off.6739
  %add.ptr192686 = getelementptr i8, ptr %call9.i, i32 %off.7685.sink
  %sub193691 = sub i32 %4, %off.7685.sink
  %63 = ptrtoint ptr %mws168 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mws168, align 4
  %bar201 = getelementptr %struct.idt_mw_cfg, ptr %64, i32 %conv156740, i32 1
  %65 = ptrtoint ptr %bar201 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bar201, align 4
  %conv202 = zext i8 %66 to i32
  %call203 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr192686, i32 noundef %sub193691, ptr noundef nonnull @.str.132, ptr noundef nonnull %retval.0.i607, i32 noundef %conv202) #11
  %add204 = add i32 %call203, %off.7685.sink
  %add.ptr205 = getelementptr i8, ptr %call9.i, i32 %add204
  %sub206 = sub i32 %4, %add204
  %67 = ptrtoint ptr %mws168 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mws168, align 4
  %addr_align213 = getelementptr %struct.idt_mw_cfg, ptr %68, i32 %conv156740, i32 3
  %69 = ptrtoint ptr %addr_align213 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %addr_align213, align 8
  %call214 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205, i32 noundef %sub206, ptr noundef nonnull @.str.133, i64 noundef %70) #11
  %add215 = add i32 %call214, %add204
  %add.ptr216 = getelementptr i8, ptr %call9.i, i32 %add215
  %sub217 = sub i32 %4, %add215
  %71 = ptrtoint ptr %mws168 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mws168, align 4
  %size_align224 = getelementptr %struct.idt_mw_cfg, ptr %72, i32 %conv156740, i32 4
  %73 = ptrtoint ptr %size_align224 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %size_align224, align 8
  %size_max231 = getelementptr %struct.idt_mw_cfg, ptr %72, i32 %conv156740, i32 5
  %75 = ptrtoint ptr %size_max231 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %size_max231, align 8
  %call232 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr216, i32 noundef %sub217, ptr noundef nonnull @.str.134, i64 noundef %74, i64 noundef %76) #11
  %add233 = add i32 %call232, %add215
  %add237 = add nuw nsw i32 %retval.0.i602682688, %conv156740
  %conv156 = and i32 %add237, 255
  %77 = ptrtoint ptr %mw_cnt160 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mw_cnt160, align 2
  %conv161 = zext i8 %78 to i32
  %cmp162 = icmp ult i32 %conv156, %conv161
  br i1 %cmp162, label %idt_get_mw_name.exit608.for.body164_crit_edge, label %idt_get_mw_name.exit608.for.inc240_crit_edge

idt_get_mw_name.exit608.for.inc240_crit_edge:     ; preds = %idt_get_mw_name.exit608
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc240

idt_get_mw_name.exit608.for.body164_crit_edge:    ; preds = %idt_get_mw_name.exit608
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body164

for.inc240:                                       ; preds = %idt_get_mw_name.exit608.for.inc240_crit_edge, %for.body144.for.inc240_crit_edge
  %off.6.lcssa = phi i32 [ %add154, %for.body144.for.inc240_crit_edge ], [ %add233, %idt_get_mw_name.exit608.for.inc240_crit_edge ]
  %indvars.iv.next752 = add nuw nsw i32 %indvars.iv751, 1
  %79 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %peer_cnt, align 2
  %81 = zext i8 %80 to i32
  %cmp142 = icmp ult i32 %indvars.iv.next752, %81
  br i1 %cmp142, label %for.inc240.for.body144_crit_edge, label %for.inc240.for.end242_crit_edge

for.inc240.for.end242_crit_edge:                  ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end242

for.inc240.for.body144_crit_edge:                 ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body144

for.end242:                                       ; preds = %for.inc240.for.end242_crit_edge, %for.cond138.preheader.for.end242_crit_edge
  %off.5.lcssa = phi i32 [ %off.3.lcssa, %for.cond138.preheader.for.end242_crit_edge ], [ %off.6.lcssa, %for.inc240.for.end242_crit_edge ]
  %add.ptr243 = getelementptr i8, ptr %call9.i, i32 %off.5.lcssa
  %sub244 = sub i32 %4, %off.5.lcssa
  %call245 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr243, i32 noundef %sub244, ptr noundef nonnull @.str.128) #11
  %add246 = add i32 %call245, %off.5.lcssa
  %gasa_lock.i = getelementptr inbounds %struct.idt_ntb_dev, ptr %1, i32 0, i32 16
  %call28.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %82 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i610 = getelementptr i8, ptr %83, i32 4088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 1022100224) #11, !srcloc !372
  %84 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %85, i32 4092
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #11, !srcloc !369
  %87 = call i32 @llvm.bswap.i32(i32 %86) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i) #11
  %add.ptr248 = getelementptr i8, ptr %call9.i, i32 %add246
  %sub249 = sub i32 %4, %add246
  %call250 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr248, i32 noundef %sub249, ptr noundef nonnull @.str.136, i32 noundef %87) #11
  %add251 = add i32 %call250, %add246
  %88 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 1064
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !369
  %91 = call i32 @llvm.bswap.i32(i32 %90) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %add.ptr255 = getelementptr i8, ptr %call9.i, i32 %add251
  %sub256 = sub i32 %4, %add251
  %call257 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr255, i32 noundef %sub256, ptr noundef nonnull @.str.137, i32 noundef %91) #11
  %add258 = add i32 %call257, %add251
  %92 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i613 = getelementptr i8, ptr %93, i32 1068
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i613) #11, !srcloc !369
  %95 = call i32 @llvm.bswap.i32(i32 %94) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %add.ptr260 = getelementptr i8, ptr %call9.i, i32 %add258
  %sub261 = sub i32 %4, %add258
  %call262 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr260, i32 noundef %sub261, ptr noundef nonnull @.str.138, i32 noundef %95) #11
  %add263 = add i32 %call262, %add258
  %add.ptr264 = getelementptr i8, ptr %call9.i, i32 %add263
  %sub265 = sub i32 %4, %add263
  %call266 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr264, i32 noundef %sub265, ptr noundef nonnull @.str.128) #11
  %add267 = add i32 %add263, %call266
  %add.ptr268 = getelementptr i8, ptr %call9.i, i32 %add267
  %sub269 = sub i32 %4, %add267
  %call270 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr268, i32 noundef %sub269, ptr noundef nonnull @.str.139, i32 noundef 983055) #11
  %add271 = add i32 %add267, %call270
  %96 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i.i616 = getelementptr i8, ptr %97, i32 1120
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i616) #11, !srcloc !369
  %99 = call i32 @llvm.bswap.i32(i32 %98) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %add.ptr275 = getelementptr i8, ptr %call9.i, i32 %add271
  %sub276 = sub i32 %4, %add271
  %call277 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr275, i32 noundef %sub276, ptr noundef nonnull @.str.140, i32 noundef %99) #11
  %add278 = add i32 %call277, %add271
  %100 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i619 = getelementptr i8, ptr %101, i32 1124
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i619) #11, !srcloc !369
  %103 = call i32 @llvm.bswap.i32(i32 %102) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %add.ptr280 = getelementptr i8, ptr %call9.i, i32 %add278
  %sub281 = sub i32 %4, %add278
  %call282 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr280, i32 noundef %sub281, ptr noundef nonnull @.str.141, i32 noundef %103) #11
  %add283 = add i32 %call282, %add278
  %add.ptr284 = getelementptr i8, ptr %call9.i, i32 %add283
  %sub285 = sub i32 %4, %add283
  %call286 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr284, i32 noundef %sub285, ptr noundef nonnull @.str.142) #11
  %add287 = add i32 %add283, %call286
  br label %for.body292

for.body292:                                      ; preds = %idt_ntb_msg_read.exit.for.body292_crit_edge, %for.end242
  %indvars.iv753 = phi i32 [ 0, %for.end242 ], [ %indvars.iv.next754, %idt_ntb_msg_read.exit.for.body292_crit_edge ]
  %off.8748 = phi i32 [ %add287, %for.end242 ], [ %add304, %idt_ntb_msg_read.exit.for.body292_crit_edge ]
  %src.i = getelementptr %struct.idt_ntb_regs, ptr @ntdata_tbl, i32 0, i32 1, i32 %indvars.iv753, i32 2
  %104 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %src.i, align 4
  %106 = and i32 %105, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %.not.i.i = icmp eq i32 %106, 0
  br i1 %.not.i.i, label %if.end23.i.i624, label %do.end.i.i, !prof !373

do.end.i.i:                                       ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %idt_nt_read.exit.i

if.end23.i.i624:                                  ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i.i623 = getelementptr i8, ptr %108, i32 %105
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i623) #11, !srcloc !369
  %110 = call i32 @llvm.bswap.i32(i32 %109) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br label %idt_nt_read.exit.i

idt_nt_read.exit.i:                               ; preds = %if.end23.i.i624, %do.end.i.i
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ %110, %if.end23.i.i624 ]
  %arrayidx4.i = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 7, i32 %retval.0.i.i
  %111 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx4.i, align 1
  %conv.i625 = zext i8 %112 to i32
  %arrayidx10.i = getelementptr %struct.idt_ntb_regs, ptr @ntdata_tbl, i32 0, i32 1, i32 %indvars.iv753
  %113 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx10.i, align 4
  %115 = and i32 %114, -4093
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %.not.i20.i = icmp eq i32 %115, 0
  br i1 %.not.i20.i, label %if.end23.i24.i, label %do.end.i21.i, !prof !373

do.end.i21.i:                                     ; preds = %idt_nt_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 328, i32 noundef 9, ptr noundef null) #11
  br label %idt_ntb_msg_read.exit

if.end23.i24.i:                                   ; preds = %idt_nt_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %117, i32 %114
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #11, !srcloc !369
  %119 = call i32 @llvm.bswap.i32(i32 %118) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  br label %idt_ntb_msg_read.exit

idt_ntb_msg_read.exit:                            ; preds = %if.end23.i24.i, %do.end.i21.i
  %retval.0.i626 = phi i32 [ -1, %do.end.i21.i ], [ %119, %if.end23.i24.i ]
  %add.ptr296 = getelementptr i8, ptr %call9.i, i32 %off.8748
  %sub297 = sub i32 %4, %off.8748
  %arrayidx300 = getelementptr %struct.idt_ntb_dev, ptr %1, i32 0, i32 5, i32 %conv.i625
  %120 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx300, align 8
  %conv302 = zext i8 %121 to i32
  %call303 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr296, i32 noundef %sub297, ptr noundef nonnull @.str.143, i32 noundef %indvars.iv753, i32 noundef %retval.0.i626, i32 noundef %conv.i625, i32 noundef %conv302) #11
  %add304 = add i32 %call303, %off.8748
  %indvars.iv.next754 = add nuw nsw i32 %indvars.iv753, 1
  %exitcond755.not = icmp eq i32 %indvars.iv.next754, 4
  br i1 %exitcond755.not, label %for.end307, label %idt_ntb_msg_read.exit.for.body292_crit_edge

idt_ntb_msg_read.exit.for.body292_crit_edge:      ; preds = %idt_ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body292

for.end307:                                       ; preds = %idt_ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr308 = getelementptr i8, ptr %call9.i, i32 %add304
  %sub309 = sub i32 %4, %add304
  %call310 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr308, i32 noundef %sub309, ptr noundef nonnull @.str.128) #11
  %add311 = add i32 %call310, %add304
  %call28.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %gasa_lock.i) #11
  %122 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr.i.i628 = getelementptr i8, ptr %123, i32 4088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i628, i32 -655293696) #11, !srcloc !372
  %124 = ptrtoint ptr %cfgspc.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfgspc.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %125, i32 4092
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #11, !srcloc !369
  %127 = call i32 @llvm.bswap.i32(i32 %126) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gasa_lock.i, i32 noundef %call28.i.i) #11
  %data.0.i = lshr i32 %127, 1
  %div2.i.i = and i32 %data.0.i, 127
  %mul.i44.i = mul nuw nsw i32 %div2.i.i, 1000
  %and.i45.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  %cond.i47.i = select i1 %tobool.not.i46.i, i32 0, i32 500
  %add.i48.i = add nuw nsw i32 %cond.i47.i, %mul.i44.i
  %add.ptr312 = getelementptr i8, ptr %call9.i, i32 %add311
  %sub313 = sub i32 %4, %add311
  %add.i48.i.frozen = freeze i32 %add.i48.i
  %div.i722 = udiv i32 %add.i48.i.frozen, 1000
  %128 = mul i32 %div.i722, 1000
  %rem.i724.decomposed = sub i32 %add.i48.i.frozen, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %rem.i724.decomposed)
  %cmp.i = icmp ugt i32 %rem.i724.decomposed, 499
  %conv317 = select i1 %cmp.i, i32 5, i32 0
  %call318 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr312, i32 noundef %sub313, ptr noundef nonnull @.str.144, i32 noundef %div.i722, i32 noundef %conv317) #11
  %add319 = add i32 %call318, %add311
  %call320 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp, ptr noundef nonnull %call9.i, i32 noundef %add319) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end307, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call320, %for.end307 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !181, !183, !184, !186, !187, !189, !191, !192, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !250, !252, !253, !254, !256, !257, !258, !260, !262, !263, !264, !265, !267, !269, !270, !272, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !350, !352, !353, !354, !356, !357}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__UNIQUE_ID_description236, !1, !"__UNIQUE_ID_description236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_version237, !3, !"__UNIQUE_ID_version237", i1 false, i1 false}
!3 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 70, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file238, !9, !"__UNIQUE_ID_file238", i1 false, i1 false}
!9 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 71, i32 1}
!10 = !{ptr @__UNIQUE_ID_license239, !9, !"__UNIQUE_ID_license239", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author240, !12, !"__UNIQUE_ID_author240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 72, i32 1}
!13 = !{ptr @__initcall__kmod_ntb_hw_idt__274_2903_idt_pci_driver_init6, !14, !"__initcall__kmod_ntb_hw_idt__274_2903_idt_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2903, i32 1}
!15 = !{ptr @__exitcall_idt_pci_driver_exit, !16, !"__exitcall_idt_pci_driver_exit", i1 false, i1 false}
!16 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2913, i32 1}
!17 = !{ptr @dbgfs_topdir, !18, !"dbgfs_topdir", i1 false, i1 false}
!18 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 274, i32 23}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2894, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @idt_pci_driver_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @idt_pci_driver_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @idt_pci_driver, !27, !"idt_pci_driver", i1 false, i1 false}
!27 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2885, i32 26}
!28 = !{ptr @idt_pci_tbl, !29, !"idt_pci_tbl", i1 false, i1 false}
!29 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2869, i32 35}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2834, i32 10}
!32 = !{ptr @idt_89hpes24nt6ag2_config, !33, !"idt_89hpes24nt6ag2_config", i1 false, i1 false}
!33 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2833, i32 36}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2838, i32 10}
!36 = !{ptr @idt_89hpes32nt8ag2_config, !37, !"idt_89hpes32nt8ag2_config", i1 false, i1 false}
!37 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2837, i32 36}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2842, i32 10}
!40 = !{ptr @idt_89hpes32nt8bg2_config, !41, !"idt_89hpes32nt8bg2_config", i1 false, i1 false}
!41 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2841, i32 36}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2846, i32 10}
!44 = !{ptr @idt_89hpes12nt12g2_config, !45, !"idt_89hpes12nt12g2_config", i1 false, i1 false}
!45 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2845, i32 36}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2850, i32 10}
!48 = !{ptr @idt_89hpes16nt16g2_config, !49, !"idt_89hpes16nt16g2_config", i1 false, i1 false}
!49 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2849, i32 36}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2854, i32 10}
!52 = !{ptr @idt_89hpes24nt24g2_config, !53, !"idt_89hpes24nt24g2_config", i1 false, i1 false}
!53 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2853, i32 36}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2858, i32 10}
!56 = !{ptr @idt_89hpes32nt24ag2_config, !57, !"idt_89hpes32nt24ag2_config", i1 false, i1 false}
!57 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2857, i32 36}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2862, i32 10}
!60 = !{ptr @idt_89hpes32nt24bg2_config, !61, !"idt_89hpes32nt24bg2_config", i1 false, i1 false}
!61 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2861, i32 36}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2787, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @idt_pci_probe._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @idt_pci_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2564, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @idt_check_setup._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @idt_check_setup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2571, i32 3}
!77 = !{ptr @idt_check_setup._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @idt_check_setup._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2577, i32 3}
!81 = !{ptr @idt_check_setup._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @idt_check_setup._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2581, i32 2}
!85 = !{ptr @idt_check_setup.__UNIQUE_ID_ddebug270, !84, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2607, i32 3}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @idt_create_dev._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @idt_create_dev._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @idt_create_dev.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2617, i32 2}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @idt_create_dev.__key.40, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2618, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @idt_create_dev.__key.42, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2619, i32 2}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2621, i32 2}
!102 = !{ptr @idt_create_dev._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @idt_create_dev._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2623, i32 2}
!106 = !{ptr @idt_create_dev.__UNIQUE_ID_ddebug271, !105, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2647, i32 4}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @idt_init_pci._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @idt_init_pci._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2650, i32 3}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @idt_init_pci._entry.50, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @idt_init_pci._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2659, i32 3}
!119 = !{ptr @idt_init_pci._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @idt_init_pci._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2666, i32 3}
!123 = !{ptr @idt_init_pci._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @idt_init_pci._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2679, i32 3}
!127 = !{ptr @idt_init_pci._entry.60, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @idt_init_pci._entry_ptr.62, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2689, i32 2}
!131 = !{ptr @idt_init_pci.__UNIQUE_ID_ddebug272, !130, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 530, i32 2}
!134 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @idt_scan_ports.__UNIQUE_ID_ddebug241, !133, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 535, i32 3}
!138 = !{ptr @idt_scan_ports._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @idt_scan_ports._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @portdata_tbl, !141, !"portdata_tbl", i1 false, i1 false}
!141 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 101, i32 34}
!142 = !{ptr @partdata_tbl, !143, !"partdata_tbl", i1 false, i1 false}
!143 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 244, i32 34}
!144 = !{ptr @idt_init_link.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 641, i32 2}
!146 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 672, i32 2}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @idt_init_link.__UNIQUE_ID_ddebug242, !148, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1135, i32 3}
!153 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @idt_init_mws._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @idt_init_mws._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1145, i32 4}
!158 = !{ptr @idt_init_mws._entry.72, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @idt_init_mws._entry_ptr.74, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @idt_init_mws.__key, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1152, i32 2}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1154, i32 2}
!165 = !{ptr @idt_init_mws.__UNIQUE_ID_ddebug247, !164, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!166 = !{ptr @idt_init_msg.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1594, i32 3}
!168 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1596, i32 2}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @idt_init_msg.__UNIQUE_ID_ddebug249, !170, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!173 = !{ptr @idt_init_temp.__key, !174, !"__key", i1 false, i1 false}
!174 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2088, i32 2}
!175 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2093, i32 3}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @idt_init_temp._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @idt_init_temp._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2097, i32 2}
!183 = !{ptr @idt_init_temp.__UNIQUE_ID_ddebug259, !182, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!184 = !{ptr @idt_temp_groups, !185, !"idt_temp_groups", i1 false, i1 false}
!185 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2069, i32 1}
!186 = !{ptr @idt_temp_group, !185, !"idt_temp_group", i1 false, i1 false}
!187 = !{ptr @idt_temp_attrs, !188, !"idt_temp_attrs", i1 false, i1 false}
!188 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2061, i32 26}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2048, i32 8}
!191 = !{ptr @sensor_dev_attr_temp1_input, !190, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1983, i32 22}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2050, i32 8}
!196 = !{ptr @sensor_dev_attr_temp1_lowest, !195, !"sensor_dev_attr_temp1_lowest", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2052, i32 8}
!199 = !{ptr @sensor_dev_attr_temp1_highest, !198, !"sensor_dev_attr_temp1_highest", i1 false, i1 false}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2054, i32 8}
!202 = !{ptr @sensor_dev_attr_temp1_offset, !201, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2056, i32 8}
!205 = !{ptr @dev_attr_temp1_reset_history, !204, !"dev_attr_temp1_reset_history", i1 false, i1 false}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2134, i32 3}
!208 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @idt_init_isr._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @idt_init_isr._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2141, i32 3}
!213 = !{ptr @idt_init_isr._entry.92, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @idt_init_isr._entry_ptr.94, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2147, i32 20}
!217 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2149, i32 3}
!219 = !{ptr @idt_init_isr._entry.96, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @idt_init_isr._entry_ptr.98, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2158, i32 2}
!223 = !{ptr @idt_init_isr.__UNIQUE_ID_ddebug260, !222, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2228, i32 2}
!226 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @idt_thread_isr.__UNIQUE_ID_ddebug262, !225, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1615, i32 2}
!230 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @idt_msg_isr.__UNIQUE_ID_ddebug250, !229, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!232 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1432, i32 2}
!234 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @idt_db_isr.__UNIQUE_ID_ddebug248, !233, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!236 = !{ptr @.str.106, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 714, i32 2}
!238 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @idt_se_isr.__UNIQUE_ID_ddebug244, !237, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!240 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2289, i32 3}
!242 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @idt_register_device._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @idt_register_device._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2293, i32 2}
!247 = !{ptr @idt_register_device.__UNIQUE_ID_ddebug263, !246, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!248 = !{ptr @idt_ntb_ops, !249, !"idt_ntb_ops", i1 false, i1 false}
!249 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2241, i32 33}
!250 = !{ptr @.str.111, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 928, i32 2}
!252 = !{ptr @.str.112, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @idt_ntb_link_enable.__UNIQUE_ID_ddebug245, !251, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!254 = !{ptr @.str.113, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 948, i32 2}
!256 = !{ptr @.str.114, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @idt_ntb_link_disable.__UNIQUE_ID_ddebug246, !255, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!258 = !{ptr @ntdata_tbl, !259, !"ntdata_tbl", i1 false, i1 false}
!259 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 78, i32 34}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2513, i32 3}
!262 = !{ptr @.str.116, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @idt_init_dbgfs._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @idt_init_dbgfs._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2518, i32 24}
!267 = !{ptr @.str.118, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2522, i32 3}
!269 = !{ptr @idt_init_dbgfs.__UNIQUE_ID_ddebug267, !268, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2526, i32 2}
!272 = !{ptr @idt_init_dbgfs.__UNIQUE_ID_ddebug268, !271, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!273 = !{ptr @idt_dbgfs_info_ops, !274, !"idt_dbgfs_info_ops", i1 false, i1 false}
!274 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2321, i32 37}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2357, i32 3}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2361, i32 3}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2364, i32 45}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2367, i32 4}
!283 = !{ptr @.str.124, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2374, i32 3}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2375, i32 45}
!287 = !{ptr @.str.126, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2379, i32 45}
!289 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2389, i32 5}
!291 = !{ptr @.str.128, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2394, i32 45}
!293 = !{ptr @.str.129, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2398, i32 3}
!295 = !{ptr @.str.130, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2406, i32 5}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2409, i32 5}
!299 = !{ptr @.str.132, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2411, i32 46}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2415, i32 4}
!303 = !{ptr @.str.134, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2418, i32 4}
!305 = !{ptr @.str.135, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2425, i32 4}
!307 = !{ptr @.str.136, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2459, i32 4}
!309 = !{ptr @.str.137, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2462, i32 4}
!311 = !{ptr @.str.138, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2465, i32 4}
!313 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2470, i32 4}
!315 = !{ptr @.str.140, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2473, i32 4}
!317 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2476, i32 4}
!319 = !{ptr @.str.142, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2478, i32 4}
!321 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2483, i32 4}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2491, i32 3}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1018, i32 10}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1020, i32 10}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1022, i32 10}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 1027, i32 9}
!333 = !{ptr @.str.149, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2189, i32 2}
!335 = !{ptr @.str.150, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @idt_deinit_isr.__UNIQUE_ID_ddebug261, !334, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!337 = !{ptr @.str.151, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 686, i32 2}
!339 = !{ptr @.str.152, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @idt_deinit_link.__UNIQUE_ID_ddebug243, !338, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2720, i32 2}
!343 = !{ptr @.str.154, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @idt_deinit_pci.__UNIQUE_ID_ddebug273, !342, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2825, i32 2}
!347 = !{ptr @.str.156, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @idt_pci_remove._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @idt_pci_remove._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.157, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2541, i32 2}
!352 = !{ptr @.str.158, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @idt_deinit_dbgfs.__UNIQUE_ID_ddebug269, !351, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!354 = !{ptr @.str.159, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/ntb/hw/idt/ntb_hw_idt.c", i32 2307, i32 2}
!356 = !{ptr @.str.160, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @idt_unregister_device.__UNIQUE_ID_ddebug264, !355, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 2148781862, i64 2148781867, i64 2148781880, i64 2148781924, i64 2148781958, i64 2148781979}
!368 = !{!"auto-init"}
!369 = !{i64 4706657}
!370 = !{i64 2152247006}
!371 = !{i64 2152248361}
!372 = !{i64 4706239}
!373 = !{!"branch_weights", i32 2000, i32 1}
