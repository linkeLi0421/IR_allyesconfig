; ModuleID = '/llk/IR_all_yes/drivers/pci/endpoint/functions/pci-epf-ntb.c_pt.bc'
source_filename = "../drivers/pci/endpoint/functions/pci-epf-ntb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_epf_driver = type { ptr, ptr, %struct.device_driver, ptr, ptr, %struct.list_head, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epf_ops = type { ptr, ptr, ptr }
%struct.pci_epf_device_id = type { [20 x i8], i32 }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.epf_ntb = type { i32, i32, i32, ptr, [4 x i64], %struct.config_group, [2 x ptr] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.epf_ntb_epc = type { i8, i8, i8, i8, i32, i32, ptr, ptr, [6 x ptr], i32, ptr, ptr, [6 x i32], %struct.delayed_work, i32, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.epf_ntb_ctrl = type <{ i32, i32, i16, i16, i32, i64, i64, i32, i32, i32, i32, i32, [32 x i32], [32 x i32] }>
%struct.pci_epf_msix_tbl = type { i64, i32, i32 }

@__initcall__kmod_pci_epf_ntb__239_2136_epf_ntb_init6 = internal global ptr @epf_ntb_init, section ".initcall6.init", align 4
@epf_ntb_driver = internal global { %struct.pci_epf_driver, [56 x i8] } { %struct.pci_epf_driver { ptr @epf_ntb_probe, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @epf_ntb_ops, ptr null, %struct.list_head zeroinitializer, ptr @epf_ntb_ids }, [56 x i8] zeroinitializer }, align 32
@kpcintb_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_epf_ntb_exit = internal global ptr @epf_ntb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [43 x i8] c"pci_epf_ntb.description=PCI EPF NTB DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [58 x i8] c"pci_epf_ntb.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [60 x i8] c"pci_epf_ntb.file=drivers/pci/endpoint/functions/pci-epf-ntb\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [27 x i8] c"pci_epf_ntb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kpcintb\00", [24 x i8] zeroinitializer }, align 32
@epf_ntb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed to register pci epf ntb driver --> %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epf_ntb_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/pci/endpoint/functions/pci-epf-ntb.c\00", [51 x i8] zeroinitializer }, align 32
@epf_ntb_init._entry_ptr = internal global ptr @epf_ntb_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_epf_ntb\00", [20 x i8] zeroinitializer }, align 32
@epf_ntb_ops = internal global { %struct.pci_epf_ops, [20 x i8] } { %struct.pci_epf_ops { ptr @epf_ntb_bind, ptr @epf_ntb_unbind, ptr @epf_ntb_add_cfs }, [20 x i8] zeroinitializer }, align 32
@epf_ntb_ids = internal constant { [2 x %struct.pci_epf_device_id], [48 x i8] } { [2 x %struct.pci_epf_device_id] [%struct.pci_epf_device_id { [20 x i8] c"pci_epf_ntb\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.pci_epf_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@epf_ntb_header = internal global { %struct.pci_epf_header, [44 x i8] } { %struct.pci_epf_header { i16 -1, i16 -1, i8 0, i8 0, i8 0, i8 5, i8 0, i16 0, i16 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_bind.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 -44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epf_ntb_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PRIMARY EPC interface not yet bound\0A\00", [59 x i8] zeroinitializer }, align 32
@epf_ntb_bind.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.7, i8 1, i8 -43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SECONDARY EPC interface not yet bound\0A\00", [57 x i8] zeroinitializer }, align 32
@epf_ntb_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.3, i32 1883, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to create NTB EPC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@epf_ntb_bind._entry_ptr = internal global ptr @epf_ntb_bind._entry, section ".printk_index", align 4
@epf_ntb_bind._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.3, i32 1889, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@epf_ntb_bind._entry_ptr.12 = internal global ptr @epf_ntb_bind._entry.11, section ".printk_index", align 4
@epf_ntb_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.3, i32 1895, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate BAR memory\0A\00", [33 x i8] zeroinitializer }, align 32
@epf_ntb_bind._entry_ptr.15 = internal global ptr @epf_ntb_bind._entry.13, section ".printk_index", align 4
@epf_ntb_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.3, i32 1901, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize EPC\0A\00", [38 x i8] zeroinitializer }, align 32
@epf_ntb_bind._entry_ptr.18 = internal global ptr @epf_ntb_bind._entry.16, section ".printk_index", align 4
@epf_ntb_epc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1611, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PRIMARY intf: Fail to create NTB EPC\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"epf_ntb_epc_create\00", [45 x i8] zeroinitializer }, align 32
@epf_ntb_epc_create._entry_ptr = internal global ptr @epf_ntb_epc_create._entry, section ".printk_index", align 4
@epf_ntb_epc_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1618, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SECONDARY intf: Fail to create NTB EPC\0A\00", [56 x i8] zeroinitializer }, align 32
@epf_ntb_epc_create._entry_ptr.23 = internal global ptr @epf_ntb_epc_create._entry.21, section ".printk_index", align 4
@epf_ntb_init_epc_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1700, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fail to init EPC bar for %s interface\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"epf_ntb_init_epc_bar\00", [43 x i8] zeroinitializer }, align 32
@epf_ntb_init_epc_bar._entry_ptr = internal global ptr @epf_ntb_init_epc_bar._entry, section ".printk_index", align 4
@epf_ntb_init_epc_bar_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1661, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s intf: Fail to get NTB function BAR\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"epf_ntb_init_epc_bar_interface\00", [33 x i8] zeroinitializer }, align 32
@epf_ntb_init_epc_bar_interface._entry_ptr = internal global ptr @epf_ntb_init_epc_bar_interface._entry, section ".printk_index", align 4
@epf_ntb_init_epc_bar_interface.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 1, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BAR not available for > MW%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"secondary\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNKNOWN interface\00", [46 x i8] zeroinitializer }, align 32
@epf_ntb_config_spad_bar_alloc_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1109, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s intf: Config/SPAD BAR alloc failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"epf_ntb_config_spad_bar_alloc_interface\00", [56 x i8] zeroinitializer }, align 32
@epf_ntb_config_spad_bar_alloc_interface._entry_ptr = internal global ptr @epf_ntb_config_spad_bar_alloc_interface._entry, section ".printk_index", align 4
@epf_ntb_config_spad_bar_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1073, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s intf: Config/Status/SPAD alloc region fail\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"epf_ntb_config_spad_bar_alloc\00", [34 x i8] zeroinitializer }, align 32
@epf_ntb_config_spad_bar_alloc._entry_ptr = internal global ptr @epf_ntb_config_spad_bar_alloc._entry, section ".printk_index", align 4
@epf_ntb_epc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1843, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s intf: Failed to initialize\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"epf_ntb_epc_init\00", [47 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init._entry_ptr = internal global ptr @epf_ntb_epc_init._entry, section ".printk_index", align 4
@epf_ntb_epc_init_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1737, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s intf: Config/self SPAD BAR init failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"epf_ntb_epc_init_interface\00", [37 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface._entry_ptr = internal global ptr @epf_ntb_epc_init_interface._entry, section ".printk_index", align 4
@epf_ntb_epc_init_interface._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 1744, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s intf: Peer SPAD BAR init failed\0A\00", [60 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface._entry_ptr.42 = internal global ptr @epf_ntb_epc_init_interface._entry.40, section ".printk_index", align 4
@epf_ntb_epc_init_interface._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 1751, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s intf: Interrupt configuration failed\0A\00", [55 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface._entry_ptr.45 = internal global ptr @epf_ntb_epc_init_interface._entry.43, section ".printk_index", align 4
@epf_ntb_epc_init_interface._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.3, i32 1758, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s intf: DB/MW BAR init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface._entry_ptr.48 = internal global ptr @epf_ntb_epc_init_interface._entry.46, section ".printk_index", align 4
@epf_ntb_epc_init_interface._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.3, i32 1766, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s intf: Configuration header write failed\0A\00", [52 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface._entry_ptr.51 = internal global ptr @epf_ntb_epc_init_interface._entry.49, section ".printk_index", align 4
@epf_ntb_epc_init_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&(&ntb->epc[type]->cmd_handler)->work)\00", [39 x i8] zeroinitializer }, align 32
@epf_ntb_epc_init_interface.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&(&ntb->epc[type]->cmd_handler)->timer\00", [57 x i8] zeroinitializer }, align 32
@epf_ntb_config_sspad_bar_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 917, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s inft: Config/Status/SPAD BAR set failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"epf_ntb_config_sspad_bar_set\00", [35 x i8] zeroinitializer }, align 32
@epf_ntb_config_sspad_bar_set._entry_ptr = internal global ptr @epf_ntb_config_sspad_bar_set._entry, section ".printk_index", align 4
@epf_ntb_peer_spad_bar_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 813, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s intf: peer SPAD BAR set failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"epf_ntb_peer_spad_bar_set\00", [38 x i8] zeroinitializer }, align 32
@epf_ntb_peer_spad_bar_set._entry_ptr = internal global ptr @epf_ntb_peer_spad_bar_set._entry, section ".printk_index", align 4
@epf_ntb_configure_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1292, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MSI or MSI-X is required for doorbell\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"epf_ntb_configure_interrupt\00", [36 x i8] zeroinitializer }, align 32
@epf_ntb_configure_interrupt._entry_ptr = internal global ptr @epf_ntb_configure_interrupt._entry, section ".printk_index", align 4
@epf_ntb_configure_interrupt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1301, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DB count cannot be more than %d\0A\00", [63 x i8] zeroinitializer }, align 32
@epf_ntb_configure_interrupt._entry_ptr.63 = internal global ptr @epf_ntb_configure_interrupt._entry.61, section ".printk_index", align 4
@epf_ntb_configure_interrupt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 1312, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s intf: MSI configuration failed\0A\00", [61 x i8] zeroinitializer }, align 32
@epf_ntb_configure_interrupt._entry_ptr.66 = internal global ptr @epf_ntb_configure_interrupt._entry.64, section ".printk_index", align 4
@epf_ntb_configure_interrupt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 1322, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MSI configuration failed\0A\00", [38 x i8] zeroinitializer }, align 32
@epf_ntb_configure_interrupt._entry_ptr.69 = internal global ptr @epf_ntb_configure_interrupt._entry.67, section ".printk_index", align 4
@epf_ntb_db_mw_bar_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1474, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s intf: DoorBell mem alloc failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"epf_ntb_db_mw_bar_init\00", [41 x i8] zeroinitializer }, align 32
@epf_ntb_db_mw_bar_init._entry_ptr = internal global ptr @epf_ntb_db_mw_bar_init._entry, section ".printk_index", align 4
@epf_ntb_db_mw_bar_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 1484, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s intf: DoorBell BAR set failed\0A\00", [62 x i8] zeroinitializer }, align 32
@epf_ntb_db_mw_bar_init._entry_ptr.74 = internal global ptr @epf_ntb_db_mw_bar_init._entry.72, section ".printk_index", align 4
@epf_ntb_alloc_peer_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1405, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s intf: Failed to allocate OB address\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"epf_ntb_alloc_peer_mem\00", [41 x i8] zeroinitializer }, align 32
@epf_ntb_alloc_peer_mem._entry_ptr = internal global ptr @epf_ntb_alloc_peer_mem._entry, section ".printk_index", align 4
@epf_ntb_cmd_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 695, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s intf UNKNOWN command: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"epf_ntb_cmd_handler\00", [44 x i8] zeroinitializer }, align 32
@epf_ntb_cmd_handler._entry_ptr = internal global ptr @epf_ntb_cmd_handler._entry, section ".printk_index", align 4
@epf_ntb_configure_db._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 575, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s intf: Failed to configure DB\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"epf_ntb_configure_db\00", [43 x i8] zeroinitializer }, align 32
@epf_ntb_configure_db._entry_ptr = internal global ptr @epf_ntb_configure_db._entry, section ".printk_index", align 4
@epf_ntb_configure_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 531, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s intf: Failed to configure MSI-X IRQ\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"epf_ntb_configure_msix\00", [41 x i8] zeroinitializer }, align 32
@epf_ntb_configure_msix._entry_ptr = internal global ptr @epf_ntb_configure_msix._entry, section ".printk_index", align 4
@epf_ntb_configure_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 413, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s intf: Failed to map MSI IRQ\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"epf_ntb_configure_msi\00", [42 x i8] zeroinitializer }, align 32
@epf_ntb_configure_msi._entry_ptr = internal global ptr @epf_ntb_configure_msi._entry, section ".printk_index", align 4
@epf_ntb_configure_mw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 266, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s intf: MW: %d Req Sz:%llxx > Supported Sz:%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"epf_ntb_configure_mw\00", [43 x i8] zeroinitializer }, align 32
@epf_ntb_configure_mw._entry_ptr = internal global ptr @epf_ntb_configure_mw._entry, section ".printk_index", align 4
@epf_ntb_configure_mw._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 278, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s intf: Failed to map memory window %d address\0A\00", [47 x i8] zeroinitializer }, align 32
@epf_ntb_configure_mw._entry_ptr.89 = internal global ptr @epf_ntb_configure_mw._entry.87, section ".printk_index", align 4
@epf_ntb_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 167, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s intf: Failed to raise Link Up IRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"epf_ntb_link_up\00", [16 x i8] zeroinitializer }, align 32
@epf_ntb_link_up._entry_ptr = internal global ptr @epf_ntb_link_up._entry, section ".printk_index", align 4
@ntb_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @epf_ntb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @epf_ntb_attr_spad_count, ptr @epf_ntb_attr_db_count, ptr @epf_ntb_attr_num_mws, ptr @epf_ntb_attr_mw1, ptr @epf_ntb_attr_mw2, ptr @epf_ntb_attr_mw3, ptr @epf_ntb_attr_mw4, ptr null], [32 x i8] zeroinitializer }, align 32
@epf_ntb_attr_spad_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 420, ptr @epf_ntb_spad_count_show, ptr @epf_ntb_spad_count_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_db_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.94, ptr null, i16 420, ptr @epf_ntb_db_count_show, ptr @epf_ntb_db_count_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_num_mws = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.95, ptr null, i16 420, ptr @epf_ntb_num_mws_show, ptr @epf_ntb_num_mws_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_mw1 = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.96, ptr null, i16 420, ptr @epf_ntb_mw1_show, ptr @epf_ntb_mw1_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_mw2 = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.101, ptr null, i16 420, ptr @epf_ntb_mw2_show, ptr @epf_ntb_mw2_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_mw3 = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.103, ptr null, i16 420, ptr @epf_ntb_mw3_show, ptr @epf_ntb_mw3_store }, [44 x i8] zeroinitializer }, align 32
@epf_ntb_attr_mw4 = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.105, ptr null, i16 420, ptr @epf_ntb_mw4_show, ptr @epf_ntb_mw4_store }, [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spad_count\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"db_count\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_mws\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mw1\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mw%d\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@epf_ntb_mw1_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 2022, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid num_nws: %d value\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"epf_ntb_mw1_store\00", [46 x i8] zeroinitializer }, align 32
@epf_ntb_mw1_store._entry_ptr = internal global ptr @epf_ntb_mw1_store._entry, section ".printk_index", align 4
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mw2\00", [28 x i8] zeroinitializer }, align 32
@epf_ntb_mw2_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.102, ptr @.str.3, i32 2024, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"epf_ntb_mw2_store\00", [46 x i8] zeroinitializer }, align 32
@epf_ntb_mw2_store._entry_ptr = internal global ptr @epf_ntb_mw2_store._entry, section ".printk_index", align 4
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mw3\00", [28 x i8] zeroinitializer }, align 32
@epf_ntb_mw3_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.104, ptr @.str.3, i32 2026, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"epf_ntb_mw3_store\00", [46 x i8] zeroinitializer }, align 32
@epf_ntb_mw3_store._entry_ptr = internal global ptr @epf_ntb_mw3_store._entry, section ".printk_index", align 4
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mw4\00", [28 x i8] zeroinitializer }, align 32
@epf_ntb_mw4_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.106, ptr @.str.3, i32 2028, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"epf_ntb_mw4_store\00", [46 x i8] zeroinitializer }, align 32
@epf_ntb_mw4_store._entry_ptr = internal global ptr @epf_ntb_mw4_store._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"epf_ntb_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2113, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"kpcintb_workqueue\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 45, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2125, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2130, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2114, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"epf_ntb_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2100, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"epf_ntb_ids\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2106, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"epf_ntb_header\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 124, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1872, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1877, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1883, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1889, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1895, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1901, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1611, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1618, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1699, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1660, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1672, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 34, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 36, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant [27 x i8] c"../include/linux/pci-epc.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 38, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1108, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1072, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1842, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1736, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1743, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1750, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1757, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1765, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1771, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 916, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 812, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1292, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1301, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1311, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1322, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1473, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1483, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1404, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 694, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 574, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 529, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 412, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 263, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 276, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 165, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [15 x i8] c"ntb_group_type\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2049, i32 38 }
@___asan_gen_.425 = private unnamed_addr constant [14 x i8] c"epf_ntb_attrs\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2038, i32 35 }
@___asan_gen_.428 = private unnamed_addr constant [24 x i8] c"epf_ntb_attr_spad_count\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [22 x i8] c"epf_ntb_attr_db_count\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [21 x i8] c"epf_ntb_attr_num_mws\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"epf_ntb_attr_mw1\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"epf_ntb_attr_mw2\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"epf_ntb_attr_mw3\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"epf_ntb_attr_mw4\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2030, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2016, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2031, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2032, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2033, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2021, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2022, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2034, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2024, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2035, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2026, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2036, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.504 = private constant [48 x i8] c"../drivers/pci/endpoint/functions/pci-epf-ntb.c\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 2028, i32 1 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_epf_ntb_exit, ptr @__initcall__kmod_pci_epf_ntb__239_2136_epf_ntb_init6, ptr @epf_ntb_alloc_peer_mem._entry, ptr @epf_ntb_alloc_peer_mem._entry_ptr, ptr @epf_ntb_bind._entry, ptr @epf_ntb_bind._entry.11, ptr @epf_ntb_bind._entry.13, ptr @epf_ntb_bind._entry.16, ptr @epf_ntb_bind._entry_ptr, ptr @epf_ntb_bind._entry_ptr.12, ptr @epf_ntb_bind._entry_ptr.15, ptr @epf_ntb_bind._entry_ptr.18, ptr @epf_ntb_cmd_handler._entry, ptr @epf_ntb_cmd_handler._entry_ptr, ptr @epf_ntb_config_spad_bar_alloc._entry, ptr @epf_ntb_config_spad_bar_alloc._entry_ptr, ptr @epf_ntb_config_spad_bar_alloc_interface._entry, ptr @epf_ntb_config_spad_bar_alloc_interface._entry_ptr, ptr @epf_ntb_config_sspad_bar_set._entry, ptr @epf_ntb_config_sspad_bar_set._entry_ptr, ptr @epf_ntb_configure_db._entry, ptr @epf_ntb_configure_db._entry_ptr, ptr @epf_ntb_configure_interrupt._entry, ptr @epf_ntb_configure_interrupt._entry.61, ptr @epf_ntb_configure_interrupt._entry.64, ptr @epf_ntb_configure_interrupt._entry.67, ptr @epf_ntb_configure_interrupt._entry_ptr, ptr @epf_ntb_configure_interrupt._entry_ptr.63, ptr @epf_ntb_configure_interrupt._entry_ptr.66, ptr @epf_ntb_configure_interrupt._entry_ptr.69, ptr @epf_ntb_configure_msi._entry, ptr @epf_ntb_configure_msi._entry_ptr, ptr @epf_ntb_configure_msix._entry, ptr @epf_ntb_configure_msix._entry_ptr, ptr @epf_ntb_configure_mw._entry, ptr @epf_ntb_configure_mw._entry.87, ptr @epf_ntb_configure_mw._entry_ptr, ptr @epf_ntb_configure_mw._entry_ptr.89, ptr @epf_ntb_db_mw_bar_init._entry, ptr @epf_ntb_db_mw_bar_init._entry.72, ptr @epf_ntb_db_mw_bar_init._entry_ptr, ptr @epf_ntb_db_mw_bar_init._entry_ptr.74, ptr @epf_ntb_epc_create._entry, ptr @epf_ntb_epc_create._entry.21, ptr @epf_ntb_epc_create._entry_ptr, ptr @epf_ntb_epc_create._entry_ptr.23, ptr @epf_ntb_epc_init._entry, ptr @epf_ntb_epc_init._entry_ptr, ptr @epf_ntb_epc_init_interface._entry, ptr @epf_ntb_epc_init_interface._entry.40, ptr @epf_ntb_epc_init_interface._entry.43, ptr @epf_ntb_epc_init_interface._entry.46, ptr @epf_ntb_epc_init_interface._entry.49, ptr @epf_ntb_epc_init_interface._entry_ptr, ptr @epf_ntb_epc_init_interface._entry_ptr.42, ptr @epf_ntb_epc_init_interface._entry_ptr.45, ptr @epf_ntb_epc_init_interface._entry_ptr.48, ptr @epf_ntb_epc_init_interface._entry_ptr.51, ptr @epf_ntb_exit, ptr @epf_ntb_init._entry, ptr @epf_ntb_init._entry_ptr, ptr @epf_ntb_init_epc_bar._entry, ptr @epf_ntb_init_epc_bar._entry_ptr, ptr @epf_ntb_init_epc_bar_interface._entry, ptr @epf_ntb_init_epc_bar_interface._entry_ptr, ptr @epf_ntb_link_up._entry, ptr @epf_ntb_link_up._entry_ptr, ptr @epf_ntb_mw1_store._entry, ptr @epf_ntb_mw1_store._entry_ptr, ptr @epf_ntb_mw2_store._entry, ptr @epf_ntb_mw2_store._entry_ptr, ptr @epf_ntb_mw3_store._entry, ptr @epf_ntb_mw3_store._entry_ptr, ptr @epf_ntb_mw4_store._entry, ptr @epf_ntb_mw4_store._entry_ptr, ptr @epf_ntb_peer_spad_bar_set._entry, ptr @epf_ntb_peer_spad_bar_set._entry_ptr, ptr @epf_ntb_driver, ptr @kpcintb_workqueue, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @epf_ntb_ops, ptr @epf_ntb_ids, ptr @epf_ntb_header, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @epf_ntb_epc_init_interface.__key, ptr @.str.52, ptr @epf_ntb_epc_init_interface.__key.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @ntb_group_type, ptr @epf_ntb_attrs, ptr @epf_ntb_attr_spad_count, ptr @epf_ntb_attr_db_count, ptr @epf_ntb_attr_num_mws, ptr @epf_ntb_attr_mw1, ptr @epf_ntb_attr_mw2, ptr @epf_ntb_attr_mw3, ptr @epf_ntb_attr_mw4, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpcintb_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_header to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_bind._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_init_epc_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_init_epc_bar_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_config_spad_bar_alloc_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_config_spad_bar_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_epc_init_interface.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_config_sspad_bar_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_peer_spad_bar_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_interrupt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_interrupt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_interrupt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_db_mw_bar_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_db_mw_bar_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_alloc_peer_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_cmd_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_db._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_mw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_configure_mw._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_spad_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_db_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_num_mws to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_mw1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_mw2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_mw3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_attr_mw4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_mw1_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_mw2_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_mw3_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epf_ntb_mw4_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #7
  store ptr %call, ptr @kpcintb_workqueue, align 4
  %call1 = tail call i32 @__pci_epf_register_driver(ptr noundef nonnull @epf_ntb_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @kpcintb_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @epf_ntb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_epf_unregister_driver(ptr noundef nonnull @epf_ntb_driver) #7
  %0 = load ptr, ptr @kpcintb_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_epf_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_probe(ptr noundef %epf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %epf, i32 noundef 136, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %header = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 2
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @epf_ntb_header, ptr %header, align 4
  %epf2 = getelementptr inbounds %struct.epf_ntb, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %epf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %epf, ptr %epf2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_bind(ptr noundef %epf) #4 align 64 {
entry:
  %phys_addr.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %epc = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 8
  %2 = ptrtoint ptr %epc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epf_ntb_bind.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@epf_ntb_bind, %cleanup)) #7
          to label %if.then7 [label %cleanup], !srcloc !255

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @epf_ntb_bind.__UNIQUE_ID_ddebug237, ptr noundef %epf, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %sec_epc = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 14
  %4 = ptrtoint ptr %sec_epc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sec_epc, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.body11, label %if.end29

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epf_ntb_bind.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@epf_ntb_bind, %cleanup)) #7
          to label %if.then25 [label %cleanup], !srcloc !255

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @epf_ntb_bind.__UNIQUE_ID_ddebug238, ptr noundef %epf, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  %epf1.i = getelementptr inbounds %struct.epf_ntb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %epf1.i, align 4
  %epc.i = getelementptr inbounds %struct.pci_epf, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %epc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epc.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 188, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end29.do.end.i_crit_edge, label %if.end.i.i

if.end29.do.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end29
  %10 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %epf1.i, align 4
  %vfunc_no4.i.i = getelementptr inbounds %struct.pci_epf, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vfunc_no4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vfunc_no4.i.i, align 1
  %func_no6.i.i = getelementptr inbounds %struct.pci_epf, ptr %11, i32 0, i32 6
  %bar.i.i = getelementptr inbounds %struct.pci_epf, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %func_no6.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %func_no.0.i.i = load i8, ptr %func_no6.i.i, align 4
  %linkup.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %linkup.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %linkup.i.i, align 2
  %epc9.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %epc9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %epc9.i.i, align 4
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %func_no.0.i.i, ptr %call.i.i.i, align 4
  %vfunc_no11.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %vfunc_no11.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %13, ptr %vfunc_no11.i.i, align 1
  %type12.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %type12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type12.i.i, align 4
  %epf_bar13.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %epf_bar13.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bar.i.i, ptr %epf_bar13.i.i, align 4
  %epf_ntb.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %epf_ntb.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %epf_ntb.i.i, align 4
  %call14.i.i = tail call ptr @pci_epc_get_features(ptr noundef %9, i8 noundef zeroext %func_no.0.i.i, i8 noundef zeroext %13) #7
  %tobool15.not.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool15.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.end29.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end.i.i.do.end.i_crit_edge ], [ -12, %if.end29.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19) #10
  br label %do.end35

if.end.i:                                         ; preds = %if.end.i.i
  %epc_features18.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %epc_features18.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14.i.i, ptr %epc_features18.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i, ptr %arrayidx.i.i, align 4
  %sec_epc.i = getelementptr inbounds %struct.pci_epf, ptr %7, i32 0, i32 14
  %24 = ptrtoint ptr %sec_epc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sec_epc.i, align 4
  %26 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epf1.i, align 4
  %call.i.i22.i = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 188, i32 noundef 3520) #7
  %tobool.not.i23.i = icmp eq ptr %call.i.i22.i, null
  br i1 %tobool.not.i23.i, label %if.end.i.do.end8.i_crit_edge, label %if.end.i38.i

if.end.i.do.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

if.end.i38.i:                                     ; preds = %if.end.i
  %28 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %epf1.i, align 4
  %vfunc_no4.i24.i = getelementptr inbounds %struct.pci_epf, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %vfunc_no4.i24.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vfunc_no4.i24.i, align 1
  %sec_epc_func_no.i27.i = getelementptr inbounds %struct.pci_epf, ptr %29, i32 0, i32 17
  %sec_epc_bar.i28.i = getelementptr inbounds %struct.pci_epf, ptr %29, i32 0, i32 16
  %32 = ptrtoint ptr %sec_epc_func_no.i27.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %func_no.0.i29.i = load i8, ptr %sec_epc_func_no.i27.i, align 4
  %linkup.i30.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 2
  %33 = ptrtoint ptr %linkup.i30.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %linkup.i30.i, align 2
  %epc9.i31.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 6
  %34 = ptrtoint ptr %epc9.i31.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %epc9.i31.i, align 4
  %35 = ptrtoint ptr %call.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %func_no.0.i29.i, ptr %call.i.i22.i, align 4
  %vfunc_no11.i32.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 1
  %36 = ptrtoint ptr %vfunc_no11.i32.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %31, ptr %vfunc_no11.i32.i, align 1
  %type12.i33.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 14
  %37 = ptrtoint ptr %type12.i33.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type12.i33.i, align 4
  %epf_bar13.i34.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 11
  %38 = ptrtoint ptr %epf_bar13.i34.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sec_epc_bar.i28.i, ptr %epf_bar13.i34.i, align 4
  %epf_ntb.i35.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 7
  %39 = ptrtoint ptr %epf_ntb.i35.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %epf_ntb.i35.i, align 4
  %call14.i36.i = tail call ptr @pci_epc_get_features(ptr noundef %25, i8 noundef zeroext %func_no.0.i29.i, i8 noundef zeroext %31) #7
  %tobool15.not.i37.i = icmp eq ptr %call14.i36.i, null
  br i1 %tobool15.not.i37.i, label %if.end.i38.i.do.end8.i_crit_edge, label %if.end36

if.end.i38.i.do.end8.i_crit_edge:                 ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i38.i.do.end8.i_crit_edge, %if.end.i.do.end8.i_crit_edge
  %retval.0.i42.ph.i = phi i32 [ -22, %if.end.i38.i.do.end8.i_crit_edge ], [ -12, %if.end.i.do.end8.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22) #10
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i45.i = icmp eq ptr %41, null
  br i1 %tobool.not.i45.i, label %do.end8.i.do.end35_crit_edge, label %if.end4.i.i

do.end8.i.do.end35_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.end4.i.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %epf1.i, align 4
  %epc5.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %epc5.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %epc5.i.i, align 4
  tail call void @pci_epc_remove_epf(ptr noundef %45, ptr noundef %43, i32 noundef 0) #7
  tail call void @pci_epc_put(ptr noundef %45) #7
  br label %do.end35

do.end35:                                         ; preds = %if.end4.i.i, %do.end8.i.do.end35_crit_edge, %do.end.i
  %retval.0.i83.ph = phi i32 [ %retval.0.i42.ph.i, %if.end4.i.i ], [ %retval.0.i42.ph.i, %do.end8.i.do.end35_crit_edge ], [ %retval.0.i.ph.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end.i38.i
  %epc_features18.i39.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %call.i.i22.i, i32 0, i32 15
  %46 = ptrtoint ptr %epc_features18.i39.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call14.i36.i, ptr %epc_features18.i39.i, align 4
  %arrayidx.i40.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i22.i, ptr %arrayidx.i40.i, align 4
  %48 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %epf1.i, align 4
  %call.i = tail call fastcc i32 @epf_ntb_init_epc_bar_interface(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end36.do.end42_crit_edge

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

for.inc.i:                                        ; preds = %if.end36
  %call.1.i = tail call fastcc i32 @epf_ntb_init_epc_bar_interface(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end43, label %for.inc.i.do.end42_crit_edge

for.inc.i.do.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %for.inc.i.do.end42_crit_edge, %if.end36.do.end42_crit_edge
  %switch.select3.i.i = phi ptr [ @.str.30, %for.inc.i.do.end42_crit_edge ], [ @.str.29, %if.end36.do.end42_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.1.i, %for.inc.i.do.end42_crit_edge ], [ %call.i, %if.end36.do.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.select3.i.i) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.8) #10
  br label %err_bar_init

if.end43:                                         ; preds = %for.inc.i
  %50 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %epf1.i, align 4
  %spad_count15.i.i = getelementptr inbounds %struct.epf_ntb, ptr %1, i32 0, i32 2
  %db_count.i.i = getelementptr inbounds %struct.epf_ntb, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i93.for.body.i_crit_edge, %if.end43
  %tobool.not.i.i87 = phi i1 [ true, %if.end43 ], [ false, %for.inc.i93.for.body.i_crit_edge ]
  %switch.selectcmp.i.i = phi ptr [ @.str.31, %if.end43 ], [ @.str.30, %for.inc.i93.for.body.i_crit_edge ]
  %type.019.i = phi i32 [ 0, %if.end43 ], [ 1, %for.inc.i93.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %epf1.i, align 4
  %arrayidx.i.i88 = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 %type.019.i
  %54 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i88, align 4
  %epc_features3.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %epc_features3.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %epc_features3.i.i, align 4
  %epf_ntb_bar.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 12
  %58 = ptrtoint ptr %epf_ntb_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %epf_ntb_bar.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.pci_epc_features, ptr %57, i32 0, i32 3, i32 %59
  %60 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx5.i.i, align 8
  %align6.i.i = getelementptr inbounds %struct.pci_epc_features, ptr %57, i32 0, i32 4
  %62 = ptrtoint ptr %align6.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %align6.i.i, align 8
  %lnot.ext.i.i = zext i1 %tobool.not.i.i87 to i32
  %arrayidx8.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 %lnot.ext.i.i
  %64 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx8.i.i, align 4
  %epc_features9.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %epc_features9.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %epc_features9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.epf_ntb_epc, ptr %55, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.pci_epc_features, ptr %67, i32 0, i32 3, i32 %69
  %70 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx13.i.i, align 8
  %conv.i.i = zext i32 %63 to i64
  %sub.i.i = add nsw i64 %conv.i.i, -1
  %and.i.i = and i64 %sub.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i89, label %for.body.i.do.end49.loopexit_crit_edge

for.body.i.do.end49.loopexit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49.loopexit

if.end.i.i89:                                     ; preds = %for.body.i
  %72 = ptrtoint ptr %spad_count15.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %spad_count15.i.i, align 8
  %mul.i.i = shl i32 %73, 2
  %74 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i = load i8, ptr %57, align 8
  %75 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool16.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i89.if.end28.i.i_crit_edge, label %if.then18.i.i

if.end.i.i89.if.end28.i.i_crit_edge:              ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %db_count.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %db_count.i.i, align 4
  %mul19.i.i = shl i32 %77, 4
  %msix_table_offset.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 9
  %78 = ptrtoint ptr %msix_table_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 312, ptr %msix_table_offset.i.i, align 4
  %msix_bar.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 4
  %79 = ptrtoint ptr %msix_bar.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %59, ptr %msix_bar.i.i, align 4
  %80 = load i32, ptr %db_count.i.i, align 4
  %sub23.i.i = add i32 %80, 7
  %div227.i.i = lshr i32 %sub23.i.i, 3
  %add24.i.i = add nuw nsw i32 %div227.i.i, 7
  %and25.i.i = and i32 %add24.i.i, 1073741816
  %add26.i.i = add i32 %mul19.i.i, 312
  %add27.i.i = add i32 %add26.i.i, %and25.i.i
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then18.i.i, %if.end.i.i89.if.end28.i.i_crit_edge
  %ctrl_size.0.i.i = phi i32 [ %add27.i.i, %if.then18.i.i ], [ 308, %if.end.i.i89.if.end28.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool29.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool29.not.i.i, label %cond.end53.i.i, label %if.else.i.i

cond.end53.i.i:                                   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub34.i.i = add i32 %ctrl_size.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub34.i.i, 0
  %81 = tail call i32 @llvm.ctlz.i32(i32 %sub34.i.i, i1 true) #7, !range !256
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %81
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %sub60.i.i = add i32 %mul.i.i, -1
  %82 = tail call i32 @llvm.ctlz.i32(i32 %sub60.i.i, i1 true) #7, !range !256
  %add78.i.i = sub nuw nsw i32 32, %82
  %shl79.i.i = shl nuw i32 1, %add78.i.i
  br label %if.end95.i.i

if.else.i.i:                                      ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub86.i.i = add i32 %63, -1
  %add87.i.i = add i32 %ctrl_size.0.i.i, %sub86.i.i
  %neg.i.i = sub i32 0, %63
  %and89.i.i = and i32 %add87.i.i, %neg.i.i
  %add91.i.i = add i32 %mul.i.i, %sub86.i.i
  %and94.i.i = and i32 %add91.i.i, %neg.i.i
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.else.i.i, %cond.end53.i.i
  %spad_size.0.i.i = phi i32 [ %and94.i.i, %if.else.i.i ], [ %shl79.i.i, %cond.end53.i.i ]
  %ctrl_size.1.i.i = phi i32 [ %and89.i.i, %if.else.i.i ], [ %shl.i.i.i, %cond.end53.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool96.not.i.i = icmp eq i64 %71, 0
  br i1 %tobool96.not.i.i, label %if.end95.i.i.if.end106.i.i_crit_edge, label %if.then97.i.i

if.end95.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i.i

if.then97.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv98.i.i = zext i32 %spad_size.0.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %conv98.i.i)
  %cmp99.i.i = icmp ult i64 %71, %conv98.i.i
  %div102226.i.i = lshr i64 %71, 2
  %conv103.i.i = trunc i64 %div102226.i.i to i32
  %spad_count.0.i.i = select i1 %cmp99.i.i, i32 %conv103.i.i, i32 %73
  %conv105.i.i = trunc i64 %71 to i32
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then97.i.i, %if.end95.i.i.if.end106.i.i_crit_edge
  %spad_size.1.i.i = phi i32 [ %conv105.i.i, %if.then97.i.i ], [ %spad_size.0.i.i, %if.end95.i.i.if.end106.i.i_crit_edge ]
  %spad_count.1.i.i = phi i32 [ %spad_count.0.i.i, %if.then97.i.i ], [ %73, %if.end95.i.i.if.end106.i.i_crit_edge ]
  %83 = tail call i32 @llvm.umax.i32(i32 %spad_size.1.i.i, i32 %ctrl_size.1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool111.not.i.i = icmp eq i64 %61, 0
  %add113.i.i = add i32 %83, %spad_size.1.i.i
  br i1 %tobool111.not.i.i, label %if.end106.i.i.if.end122.i.i_crit_edge, label %if.else115.i.i

if.end106.i.i.if.end122.i.i_crit_edge:            ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i.i

if.else115.i.i:                                   ; preds = %if.end106.i.i
  %conv117.i.i = zext i32 %add113.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv117.i.i)
  %cmp118.i.i = icmp ult i64 %61, %conv117.i.i
  %extract.t.i.i = trunc i64 %61 to i32
  br i1 %cmp118.i.i, label %if.else115.i.i.do.end49.loopexit_crit_edge, label %if.else115.i.i.if.end122.i.i_crit_edge

if.else115.i.i.if.end122.i.i_crit_edge:           ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i.i

if.else115.i.i.do.end49.loopexit_crit_edge:       ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49.loopexit

if.end122.i.i:                                    ; preds = %if.else115.i.i.if.end122.i.i_crit_edge, %if.end106.i.i.if.end122.i.i_crit_edge
  %size.0.off0.i.i = phi i32 [ %extract.t.i.i, %if.else115.i.i.if.end122.i.i_crit_edge ], [ %add113.i.i, %if.end106.i.i.if.end122.i.i_crit_edge ]
  %call124.i.i = tail call ptr @pci_epf_alloc_space(ptr noundef %53, i32 noundef %size.0.off0.i.i, i32 noundef %59, i32 noundef %63, i32 noundef %type.019.i) #7
  %tobool125.not.i.i = icmp eq ptr %call124.i.i, null
  br i1 %tobool125.not.i.i, label %do.end.i.i, label %for.inc.i93

do.end.i.i:                                       ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select3.i.i.i = select i1 %tobool.not.i.i87, ptr @.str.29, ptr %switch.selectcmp.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.34, ptr noundef nonnull %switch.select3.i.i.i) #10
  br label %do.end49

for.inc.i93:                                      ; preds = %if.end122.i.i
  %reg.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 10
  %84 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call124.i.i, ptr %reg.i.i, align 4
  %spad_offset.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %call124.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %spad_offset.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %83, ptr %spad_offset.i.i, align 1
  %spad_count130.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %call124.i.i, i32 0, i32 10
  %86 = ptrtoint ptr %spad_count130.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %spad_count.1.i.i, ptr %spad_count130.i.i, align 1
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %1, align 8
  %num_mws131.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %call124.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %num_mws131.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %num_mws131.i.i, align 1
  %spec.select228.i.i = select i1 %tobool29.not.i.i, i32 4, i32 %63
  %db_entry_size.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %call124.i.i, i32 0, i32 11
  %90 = ptrtoint ptr %db_entry_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %spec.select228.i.i, ptr %db_entry_size.i.i, align 1
  %spad_size137.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 5
  %91 = ptrtoint ptr %spad_size137.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %spad_size.1.i.i, ptr %spad_size137.i.i, align 4
  br i1 %tobool.not.i.i87, label %for.inc.i93.for.body.i_crit_edge, label %if.end50

for.inc.i93.for.body.i_crit_edge:                 ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end49.loopexit:                                ; preds = %if.else115.i.i.do.end49.loopexit_crit_edge, %for.body.i.do.end49.loopexit_crit_edge
  %.pre = select i1 %tobool.not.i.i87, ptr @.str.29, ptr %switch.selectcmp.i.i
  br label %do.end49

do.end49:                                         ; preds = %do.end49.loopexit, %do.end.i.i
  %switch.select3.i.i91.pre-phi = phi ptr [ %.pre, %do.end49.loopexit ], [ %switch.select3.i.i.i, %do.end.i.i ]
  %retval.0.i.ph.i90 = phi i32 [ -22, %do.end49.loopexit ], [ -12, %do.end.i.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.32, ptr noundef nonnull %switch.select3.i.i91.pre-phi) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.14) #10
  br label %err_bar_alloc

if.end50:                                         ; preds = %for.inc.i93
  %92 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %epf1.i, align 4
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i109.for.body.i98_crit_edge, %if.end50
  %type.0123.i = phi i32 [ 0, %if.end50 ], [ %inc.i, %for.inc.i109.for.body.i98_crit_edge ]
  %arrayidx.i.i96 = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 %type.0123.i
  %94 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i96, align 4
  %96 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %epf1.i, align 4
  %epc4.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 6
  %98 = ptrtoint ptr %epc4.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %epc4.i.i, align 4
  %100 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %95, align 4
  %vfunc_no6.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 1
  %102 = ptrtoint ptr %vfunc_no6.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %vfunc_no6.i.i, align 1
  %epf_ntb.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 7
  %104 = ptrtoint ptr %epf_ntb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %epf_ntb.i.i.i, align 4
  %epf.i.i.i = getelementptr inbounds %struct.epf_ntb, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %epf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %epf.i.i.i, align 4
  %epf_ntb_bar.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 12
  %108 = ptrtoint ptr %epf_ntb_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %epf_ntb_bar.i.i.i, align 4
  %epf_bar5.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 11
  %110 = ptrtoint ptr %epf_bar5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %epf_bar5.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr %struct.pci_epf_bar, ptr %111, i32 %109
  %call.i.i.i97 = call i32 @pci_epc_set_bar(ptr noundef %99, i8 noundef zeroext %101, i8 noundef zeroext %103, ptr noundef %arrayidx6.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i97)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i97, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i101, label %do.end.i.i100

do.end.i.i100:                                    ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #9
  %type.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %95, i32 0, i32 14
  %112 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %113, 1
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %switch.selectcmp2.i.i.i.i = icmp eq i32 %113, 0
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, ptr @.str.29, ptr %switch.select.i.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.55, ptr noundef nonnull %switch.select3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.0123.i)
  %switch.selectcmp2.i.i.i = icmp eq i32 %type.0123.i, 0
  %switch.select3.i.i.i99 = select i1 %switch.selectcmp2.i.i.i, ptr @.str.29, ptr %switch.select.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.38, ptr noundef nonnull %switch.select3.i.i.i99) #10
  br label %do.end.i108

if.end.i.i101:                                    ; preds = %for.body.i98
  %114 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %epf1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.0123.i)
  %tobool.not.i140.i.i = icmp eq i32 %type.0123.i, 0
  %lnot.ext.i.i.i = zext i1 %tobool.not.i140.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 %lnot.ext.i.i.i
  %116 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i.i, align 4
  %epf_ntb_bar.i141.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %epf_ntb_bar.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %epf_ntb_bar.i141.i.i, align 4
  %epf_bar4.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %117, i32 0, i32 11
  %120 = ptrtoint ptr %epf_bar4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %epf_bar4.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.pci_epf_bar, ptr %121, i32 %119
  %122 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i.i96, align 4
  %arrayidx9.i.i.i = getelementptr %struct.epf_ntb_epc, ptr %123, i32 0, i32 12, i32 1
  %124 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx9.i.i.i, align 4
  %epf_bar10.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %123, i32 0, i32 11
  %126 = ptrtoint ptr %epf_bar10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %epf_bar10.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.pci_epf_bar, ptr %127, i32 %125
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %123, align 4
  %vfunc_no13.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %123, i32 0, i32 1
  %130 = ptrtoint ptr %vfunc_no13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %vfunc_no13.i.i.i, align 1
  %epc14.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %123, i32 0, i32 6
  %132 = ptrtoint ptr %epc14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %epc14.i.i.i, align 4
  %reg.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %117, i32 0, i32 10
  %134 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i.i.i, align 4
  %spad_offset.i.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %135, i32 0, i32 9
  %136 = ptrtoint ptr %spad_offset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %spad_offset.i.i.i, align 1
  %138 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx5.i.i.i, align 4
  %add.i.i.i = add i32 %139, %137
  %140 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add.i.i.i, ptr %arrayidx11.i.i.i, align 4
  %spad_size.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %117, i32 0, i32 5
  %141 = ptrtoint ptr %spad_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %spad_size.i.i.i, align 4
  %size.i.i.i = getelementptr %struct.pci_epf_bar, ptr %127, i32 %125, i32 2
  %143 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %size.i.i.i, align 4
  %barno16.i.i.i = getelementptr %struct.pci_epf_bar, ptr %127, i32 %125, i32 3
  %144 = ptrtoint ptr %barno16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %125, ptr %barno16.i.i.i, align 4
  %flags.i.i.i = getelementptr %struct.pci_epf_bar, ptr %127, i32 %125, i32 4
  %145 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %flags.i.i.i, align 4
  %call.i142.i.i = call i32 @pci_epc_set_bar(ptr noundef %133, i8 noundef zeroext %129, i8 noundef zeroext %131, ptr noundef %arrayidx11.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call.i142.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end17.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i.i143.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i.i144.i.i = select i1 %switch.selectcmp.i.i143.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i.i145.i.i = select i1 %tobool.not.i140.i.i, ptr @.str.29, ptr %switch.select.i.i144.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.57, ptr noundef nonnull %switch.select3.i.i145.i.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.41, ptr noundef nonnull %switch.select3.i.i145.i.i) #10
  br label %err_peer_spad_bar_init.i.i

if.end17.i.i:                                     ; preds = %if.end.i.i101
  %146 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i96, align 4
  %148 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %epf1.i, align 4
  %epc_features3.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %147, i32 0, i32 15
  %150 = ptrtoint ptr %epc_features3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %epc_features3.i.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i.i.i = load i8, ptr %151, align 8
  %153 = and i8 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i153.i.i = icmp eq i8 %153, 0
  %154 = and i8 %bf.load.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool8.not.i.i.i = icmp eq i8 %154, 0
  %155 = and i8 %bf.load.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %.not.i.i.i = icmp eq i8 %155, 0
  br i1 %.not.i.i.i, label %do.end.i154.i.i, label %if.end.i.i.i

do.end.i154.i.i:                                  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.59) #10
  br label %do.end23.i.i

if.end.i.i.i:                                     ; preds = %if.end17.i.i
  %156 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %147, align 4
  %vfunc_no13.i155.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %147, i32 0, i32 1
  %158 = ptrtoint ptr %vfunc_no13.i155.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %vfunc_no13.i155.i.i, align 1
  %160 = ptrtoint ptr %db_count.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %db_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %161)
  %cmp.i.i.i = icmp ugt i32 %161, 32
  br i1 %cmp.i.i.i, label %do.end18.i.i.i, label %if.end19.i.i.i

do.end18.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.62, i32 noundef 32) #10
  br label %do.end23.i.i

if.end19.i.i.i:                                   ; preds = %if.end.i.i.i
  %epc21.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %147, i32 0, i32 6
  %162 = ptrtoint ptr %epc21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %epc21.i.i.i, align 4
  br i1 %tobool8.not.i.i.i, label %if.end19.i.i.i.if.end31.i.i.i_crit_edge, label %if.then23.i.i.i

if.end19.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end19.i.i.i
  %conv.i.i.i = trunc i32 %161 to i8
  %call.i156.i.i = call i32 @pci_epc_set_msi(ptr noundef %163, i8 noundef zeroext %157, i8 noundef zeroext %159, i8 noundef zeroext %conv.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call.i156.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then23.i.i.i.if.end31.i.i.i_crit_edge, label %do.end28.i.i.i

if.then23.i.i.i.if.end31.i.i.i_crit_edge:         ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i.i

do.end28.i.i.i:                                   ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i.i157.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i.i158.i.i = select i1 %switch.selectcmp.i.i157.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i.i160.i.i = select i1 %tobool.not.i140.i.i, ptr @.str.29, ptr %switch.select.i.i158.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.65, ptr noundef nonnull %switch.select3.i.i160.i.i) #10
  br label %do.end23.i.i

if.end31.i.i.i:                                   ; preds = %if.then23.i.i.i.if.end31.i.i.i_crit_edge, %if.end19.i.i.i.if.end31.i.i.i_crit_edge
  br i1 %tobool.not.i153.i.i, label %if.end31.i.i.i.if.end25.i.i_crit_edge, label %if.then33.i.i.i

if.end31.i.i.i.if.end25.i.i_crit_edge:            ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

if.then33.i.i.i:                                  ; preds = %if.end31.i.i.i
  %conv34.i.i.i = trunc i32 %161 to i16
  %msix_bar.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %147, i32 0, i32 4
  %164 = ptrtoint ptr %msix_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %msix_bar.i.i.i, align 4
  %msix_table_offset.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %147, i32 0, i32 9
  %166 = ptrtoint ptr %msix_table_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %msix_table_offset.i.i.i, align 4
  %call35.i.i.i = call i32 @pci_epc_set_msix(ptr noundef %163, i8 noundef zeroext %157, i8 noundef zeroext %159, i16 noundef zeroext %conv34.i.i.i, i32 noundef %165, i32 noundef %167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  br i1 %tobool36.not.i.i.i, label %if.then33.i.i.i.if.end25.i.i_crit_edge, label %do.end40.i.i.i

if.then33.i.i.i.if.end25.i.i_crit_edge:           ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

do.end40.i.i.i:                                   ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.68) #10
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %do.end40.i.i.i, %do.end28.i.i.i, %do.end18.i.i.i, %do.end.i154.i.i
  %retval.0.i.ph.i.i = phi i32 [ -22, %do.end.i154.i.i ], [ %call35.i.i.i, %do.end40.i.i.i ], [ %call.i156.i.i, %do.end28.i.i.i ], [ -22, %do.end18.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i161.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i162.i.i = select i1 %switch.selectcmp.i161.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i164.i.i = select i1 %tobool.not.i140.i.i, ptr @.str.29, ptr %switch.select.i162.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.44, ptr noundef nonnull %switch.select3.i164.i.i) #10
  br label %err_peer_spad_bar_init.i.i

if.end25.i.i:                                     ; preds = %if.then33.i.i.i.if.end25.i.i_crit_edge, %if.end31.i.i.i.if.end25.i.i_crit_edge
  %168 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i96, align 4
  %170 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i.i, align 4
  %172 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %epf1.i, align 4
  %epc_features5.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %169, i32 0, i32 15
  %174 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %169, align 4
  %vfunc_no8.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %169, i32 0, i32 1
  %176 = ptrtoint ptr %vfunc_no8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %vfunc_no8.i.i.i, align 1
  %epc9.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %169, i32 0, i32 6
  %178 = ptrtoint ptr %epc9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %epc9.i.i.i, align 4
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %1, align 8
  %182 = ptrtoint ptr %db_count.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %db_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp101.not.i.i.i = icmp eq i32 %181, 0
  br i1 %cmp101.not.i.i.i, label %if.end25.i.i.if.end33.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end25.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end25.i.i
  %184 = ptrtoint ptr %epc_features5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %epc_features5.i.i.i, align 4
  %align6.i.i.i = getelementptr inbounds %struct.pci_epc_features, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %align6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %align6.i.i.i, align 8
  %reg.i169.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %169, i32 0, i32 10
  %epc.i.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %171, i32 0, i32 6
  %epf_bar32.i.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %169, i32 0, i32 11
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0104.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc40.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %align.0103.i.i.i = phi i32 [ %187, %for.body.lr.ph.i.i.i ], [ %align.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %bar.0102.i.i.i = phi i32 [ 2, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bar.0102.i.i.i)
  %cmp12.i.i.i = icmp eq i32 %bar.0102.i.i.i, 2
  br i1 %cmp12.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align.0103.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %align.0103.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool13.not.i.i.i, i32 4, i32 %align.0103.i.i.i
  %mul.i.i.i = mul i32 %spec.select.i.i.i, %183
  %conv.i170.i.i = zext i32 %mul.i.i.i to i64
  %arrayidx14.i.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 4, i32 %i.0104.i.i.i
  %188 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %arrayidx14.i.i.i, align 8
  %sub.i.i.i102 = add nsw i64 %conv.i170.i.i, -1
  %add.i171.i.i = add i64 %sub.i.i.i102, %189
  %neg.i.i.i = sub i64 0, %189
  %and.i.i.i = and i64 %add.i171.i.i, %neg.i.i.i
  %190 = ptrtoint ptr %reg.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg.i169.i.i, align 4
  %conv18.i.i.i = trunc i64 %and.i.i.i to i32
  %mw1_offset.i.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %mw1_offset.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 4)
  store i32 %conv18.i.i.i, ptr %mw1_offset.i.i.i, align 1
  %193 = load i64, ptr %arrayidx14.i.i.i, align 8
  %add21.i.i.i = add i64 %193, %and.i.i.i
  %extract.t602 = trunc i64 %add21.i.i.i to i32
  br label %if.end.i172.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx23.i.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 4, i32 %i.0104.i.i.i
  %194 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %arrayidx23.i.i.i, align 8
  %extract.t601 = trunc i64 %195 to i32
  br label %if.end.i172.i.i

if.end.i172.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %.sink.off0 = phi i32 [ %extract.t601, %if.else.i.i.i ], [ %extract.t602, %if.then.i.i.i ]
  %align.1.i.i.i = phi i32 [ %align.0103.i.i.i, %if.else.i.i.i ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr.i.i.i.i) #7
  %196 = ptrtoint ptr %phys_addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %phys_addr.i.i.i.i, align 4, !annotation !257
  %197 = ptrtoint ptr %epc_features5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %epc_features5.i.i.i, align 4
  %align2.i.i.i.i = getelementptr inbounds %struct.pci_epc_features, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %align2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %align2.i.i.i.i, align 8
  %201 = call i32 @llvm.umax.i32(i32 %.sink.off0, i32 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i.i.i.i103 = icmp eq i32 %200, 0
  %sub7.i.i.i.i = add i32 %201, -1
  br i1 %tobool.not.i.i.i.i103, label %if.else.i.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i.i.i = add i32 %200, %sub7.i.i.i.i
  %neg.i.i.i.i = sub i32 0, %200
  %and.i.i.i.i = and i32 %add.i.i.i.i, %neg.i.i.i.i
  br label %if.end26.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %202 = call i32 @llvm.ctlz.i32(i32 %sub7.i.i.i.i, i1 true) #7, !range !256
  %add19.i.i.i.i = sub nuw nsw i32 32, %202
  %shl.i.i.i.i = shl nuw i32 1, %add19.i.i.i.i
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.else.i.i.i.i, %if.then3.i.i.i.i
  %size.addr.0.i.i.i.i = phi i32 [ %and.i.i.i.i, %if.then3.i.i.i.i ], [ %shl.i.i.i.i, %if.else.i.i.i.i ]
  %203 = ptrtoint ptr %epc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %epc.i.i.i.i, align 4
  %call27.i.i.i.i = call ptr @pci_epc_mem_alloc_addr(ptr noundef %204, ptr noundef nonnull %phys_addr.i.i.i.i, i32 noundef %size.addr.0.i.i.i.i) #7
  %tobool28.not.i.i.i.i = icmp eq ptr %call27.i.i.i.i, null
  br i1 %tobool28.not.i.i.i.i, label %do.end.i173.i.i, label %if.end28.i.i.i

do.end.i173.i.i:                                  ; preds = %if.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %type.i.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %171, i32 0, i32 14
  %205 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %switch.selectcmp.i.i.i.i.i = icmp eq i32 %206, 1
  %switch.select.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %switch.selectcmp2.i.i.i.i.i = icmp eq i32 %206, 0
  %switch.select3.i.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i.i, ptr @.str.29, ptr %switch.select.i.i.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.75, ptr noundef nonnull %switch.select3.i.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i.i.i.i) #7
  br label %do.end31.i.i

if.end28.i.i.i:                                   ; preds = %if.end26.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.epf_ntb_epc, ptr %169, i32 0, i32 12, i32 %bar.0102.i.i.i
  %207 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %209 = ptrtoint ptr %epf_bar32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %epf_bar32.i.i.i.i, align 4
  %arrayidx33.i.i.i.i = getelementptr %struct.pci_epf_bar, ptr %210, i32 %208
  %arrayidx35.i.i.i.i = getelementptr %struct.epf_ntb_epc, ptr %169, i32 0, i32 8, i32 %208
  %211 = ptrtoint ptr %arrayidx35.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call27.i.i.i.i, ptr %arrayidx35.i.i.i.i, align 4
  %212 = ptrtoint ptr %phys_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %phys_addr.i.i.i.i, align 4
  %214 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx33.i.i.i.i, align 4
  %size37.i.i.i.i = getelementptr %struct.pci_epf_bar, ptr %210, i32 %208, i32 2
  %215 = ptrtoint ptr %size37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %size.addr.0.i.i.i.i, ptr %size37.i.i.i.i, align 4
  %barno38.i.i.i.i = getelementptr %struct.pci_epf_bar, ptr %210, i32 %208, i32 3
  %216 = ptrtoint ptr %barno38.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %208, ptr %barno38.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr %struct.pci_epf_bar, ptr %210, i32 %208, i32 4
  %217 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %flags.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i.i.i.i) #7
  %218 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %220 = ptrtoint ptr %epf_bar32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %epf_bar32.i.i.i.i, align 4
  %arrayidx31.i.i.i = getelementptr %struct.pci_epf_bar, ptr %221, i32 %219
  %call32.i.i.i = call i32 @pci_epc_set_bar(ptr noundef %179, i8 noundef zeroext %175, i8 noundef zeroext %177, ptr noundef %arrayidx31.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %for.inc.i.i.i, label %if.end28.i.i.i.do.end31.i.i_crit_edge

if.end28.i.i.i.do.end31.i.i_crit_edge:            ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i.i

for.inc.i.i.i:                                    ; preds = %if.end28.i.i.i
  %inc.i.i.i = add i32 %bar.0102.i.i.i, 1
  %inc40.i.i.i = add nuw i32 %i.0104.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc40.i.i.i, %181
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end33.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

do.end31.i.i:                                     ; preds = %if.end28.i.i.i.do.end31.i.i_crit_edge, %do.end.i173.i.i
  %.str.73.sink.i.i.i = phi ptr [ @.str.70, %do.end.i173.i.i ], [ @.str.73, %if.end28.i.i.i.do.end31.i.i_crit_edge ]
  %ret.0.i.i.i = phi i32 [ -12, %do.end.i173.i.i ], [ %call32.i.i.i, %if.end28.i.i.i.do.end31.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i95.i.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i96.i.i.i = select i1 %switch.selectcmp.i95.i.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i98.i.i.i = select i1 %tobool.not.i140.i.i, ptr @.str.29, ptr %switch.select.i96.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull %.str.73.sink.i.i.i, ptr noundef nonnull %switch.select3.i98.i.i.i) #10
  call fastcc void @epf_ntb_db_mw_bar_cleanup(ptr noundef %1, i32 noundef %type.0123.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.47, ptr noundef nonnull %switch.select3.i98.i.i.i) #10
  br label %err_db_mw_bar_init.i.i

if.end33.i.i:                                     ; preds = %for.inc.i.i.i.if.end33.i.i_crit_edge, %if.end25.i.i.if.end33.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp.i.i104 = icmp ult i8 %103, 2
  br i1 %cmp.i.i104, label %if.then35.i.i, label %if.end33.i.i.for.inc.i109_crit_edge

if.end33.i.i.for.inc.i109_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i109

if.then35.i.i:                                    ; preds = %if.end33.i.i
  %header.i.i = getelementptr inbounds %struct.pci_epf, ptr %97, i32 0, i32 2
  %222 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %header.i.i, align 4
  %call36.i.i = call i32 @pci_epc_write_header(ptr noundef %99, i8 noundef zeroext %101, i8 noundef zeroext %103, ptr noundef %223) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then35.i.i.for.inc.i109_crit_edge, label %do.end41.i.i

if.then35.i.i.for.inc.i109_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i109

do.end41.i.i:                                     ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i179.i.i = icmp eq i32 %type.0123.i, 1
  %switch.select.i180.i.i = select i1 %switch.selectcmp.i179.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i182.i.i = select i1 %tobool.not.i140.i.i, ptr @.str.29, ptr %switch.select.i180.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.50, ptr noundef nonnull %switch.select3.i182.i.i) #10
  call fastcc void @epf_ntb_db_mw_bar_cleanup(ptr noundef %1, i32 noundef %type.0123.i) #7
  br label %err_db_mw_bar_init.i.i

err_db_mw_bar_init.i.i:                           ; preds = %do.end41.i.i, %do.end31.i.i
  %ret.0.i.i = phi i32 [ %ret.0.i.i.i, %do.end31.i.i ], [ %call36.i.i, %do.end41.i.i ]
  %224 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i.i96, align 4
  %epc1.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %225, i32 0, i32 6
  %226 = ptrtoint ptr %epc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %epc1.i.i.i, align 4
  %228 = ptrtoint ptr %225 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %225, align 4
  %vfunc_no3.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %225, i32 0, i32 1
  %230 = ptrtoint ptr %vfunc_no3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %vfunc_no3.i.i.i, align 1
  %arrayidx.i184.i.i = getelementptr %struct.epf_ntb_epc, ptr %225, i32 0, i32 12, i32 1
  %232 = ptrtoint ptr %arrayidx.i184.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i184.i.i, align 4
  %epf_bar4.i185.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %225, i32 0, i32 11
  %234 = ptrtoint ptr %epf_bar4.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %epf_bar4.i185.i.i, align 4
  %arrayidx5.i186.i.i = getelementptr %struct.pci_epf_bar, ptr %235, i32 %233
  call void @pci_epc_clear_bar(ptr noundef %227, i8 noundef zeroext %229, i8 noundef zeroext %231, ptr noundef %arrayidx5.i186.i.i) #7
  br label %err_peer_spad_bar_init.i.i

err_peer_spad_bar_init.i.i:                       ; preds = %err_db_mw_bar_init.i.i, %do.end23.i.i, %do.end15.i.i
  %ret.1.i.i = phi i32 [ %call.i142.i.i, %do.end15.i.i ], [ %retval.0.i.ph.i.i, %do.end23.i.i ], [ %ret.0.i.i, %err_db_mw_bar_init.i.i ]
  %236 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i.i96, align 4
  %epc1.i187.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %237, i32 0, i32 6
  %238 = ptrtoint ptr %epc1.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %epc1.i187.i.i, align 4
  %240 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %237, align 4
  %vfunc_no3.i188.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %237, i32 0, i32 1
  %242 = ptrtoint ptr %vfunc_no3.i188.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %vfunc_no3.i188.i.i, align 1
  %epf_ntb_bar.i189.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %237, i32 0, i32 12
  %244 = ptrtoint ptr %epf_ntb_bar.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %epf_ntb_bar.i189.i.i, align 4
  %epf_bar4.i190.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %237, i32 0, i32 11
  %246 = ptrtoint ptr %epf_bar4.i190.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %epf_bar4.i190.i.i, align 4
  %arrayidx5.i191.i.i = getelementptr %struct.pci_epf_bar, ptr %247, i32 %245
  call void @pci_epc_clear_bar(ptr noundef %239, i8 noundef zeroext %241, i8 noundef zeroext %243, ptr noundef %arrayidx5.i191.i.i) #7
  br label %do.end.i108

do.end.i108:                                      ; preds = %err_peer_spad_bar_init.i.i, %do.end.i.i100
  %retval.0.i.ph.i105 = phi i32 [ %ret.1.i.i, %err_peer_spad_bar_init.i.i ], [ %call.i.i.i97, %do.end.i.i100 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0123.i)
  %switch.selectcmp.i.i106 = icmp eq i32 %type.0123.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i106, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.0123.i)
  %switch.selectcmp2.i.i = icmp eq i32 %type.0123.i, 0
  %switch.select3.i.i107 = select i1 %switch.selectcmp2.i.i, ptr @.str.29, ptr %switch.select.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.36, ptr noundef nonnull %switch.select3.i.i107) #10
  br i1 %switch.selectcmp2.i.i, label %do.end.i108.do.end56_crit_edge, label %if.end.i21.i

do.end.i108.do.end56_crit_edge:                   ; preds = %do.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end.i21.i:                                     ; preds = %do.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %type.0123.i, -1
  %arrayidx.i13.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 %sub.i
  %248 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i13.i, align 4
  %cmd_handler.i14.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %249, i32 0, i32 13
  %call.i.i = call zeroext i1 @cancel_delayed_work(ptr noundef %cmd_handler.i14.i) #7
  call fastcc void @epf_ntb_db_mw_bar_cleanup(ptr noundef %1, i32 noundef %sub.i) #7
  %epc1.i.i15.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %249, i32 0, i32 6
  %250 = ptrtoint ptr %epc1.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %epc1.i.i15.i, align 4
  %252 = ptrtoint ptr %249 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %249, align 4
  %vfunc_no3.i.i16.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %249, i32 0, i32 1
  %254 = ptrtoint ptr %vfunc_no3.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %vfunc_no3.i.i16.i, align 1
  %arrayidx.i.i17.i = getelementptr %struct.epf_ntb_epc, ptr %249, i32 0, i32 12, i32 1
  %256 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i.i17.i, align 4
  %epf_bar4.i.i18.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %249, i32 0, i32 11
  %258 = ptrtoint ptr %epf_bar4.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %epf_bar4.i.i18.i, align 4
  %arrayidx5.i.i19.i = getelementptr %struct.pci_epf_bar, ptr %259, i32 %257
  call void @pci_epc_clear_bar(ptr noundef %251, i8 noundef zeroext %253, i8 noundef zeroext %255, ptr noundef %arrayidx5.i.i19.i) #7
  %260 = ptrtoint ptr %epc1.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %epc1.i.i15.i, align 4
  %262 = ptrtoint ptr %249 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %249, align 4
  %264 = ptrtoint ptr %vfunc_no3.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %vfunc_no3.i.i16.i, align 1
  %epf_ntb_bar.i.i20.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %249, i32 0, i32 12
  %266 = ptrtoint ptr %epf_ntb_bar.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %epf_ntb_bar.i.i20.i, align 4
  %268 = ptrtoint ptr %epf_bar4.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %epf_bar4.i.i18.i, align 4
  %arrayidx5.i9.i.i = getelementptr %struct.pci_epf_bar, ptr %269, i32 %267
  call void @pci_epc_clear_bar(ptr noundef %261, i8 noundef zeroext %263, i8 noundef zeroext %265, ptr noundef %arrayidx5.i9.i.i) #7
  br label %do.end56

for.inc.i109:                                     ; preds = %if.then35.i.i.for.inc.i109_crit_edge, %if.end33.i.i.for.inc.i109_crit_edge
  %270 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx.i.i96, align 4
  %cmd_handler.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %271, i32 0, i32 13
  call void @__init_work(ptr noundef %cmd_handler.i.i, i32 noundef 0) #7
  %272 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.i.i96, align 4
  %cmd_handler51.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %273, i32 0, i32 13
  %274 = ptrtoint ptr %cmd_handler51.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -64, ptr %cmd_handler51.i.i, align 4
  %275 = load ptr, ptr %arrayidx.i.i96, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %275, i32 0, i32 13, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @epf_ntb_epc_init_interface.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %276 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i.i96, align 4
  %entry61.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %277, i32 0, i32 13, i32 0, i32 1
  %278 = ptrtoint ptr %entry61.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store volatile ptr %entry61.i.i, ptr %entry61.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %277, i32 0, i32 13, i32 0, i32 1, i32 1
  %279 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %entry61.i.i, ptr %prev.i.i.i, align 4
  %280 = load ptr, ptr %arrayidx.i.i96, align 4
  %func.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %280, i32 0, i32 13, i32 0, i32 2
  %281 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @epf_ntb_cmd_handler, ptr %func.i.i, align 4
  %282 = load ptr, ptr %arrayidx.i.i96, align 4
  %timer.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %282, i32 0, i32 13, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.54, ptr noundef nonnull @epf_ntb_epc_init_interface.__key.53) #7
  %283 = load ptr, ptr @kpcintb_workqueue, align 4
  %284 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i96, align 4
  %cmd_handler78.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %285, i32 0, i32 13
  %call.i183.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %283, ptr noundef %cmd_handler78.i.i) #7
  %inc.i = add nuw nsw i32 %type.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %if.end57, label %for.inc.i109.for.body.i98_crit_edge

for.inc.i109.for.body.i98_crit_edge:              ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i98

do.end56:                                         ; preds = %if.end.i21.i, %do.end.i108.do.end56_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.17) #10
  br label %err_bar_alloc

if.end57:                                         ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %1, ptr %driver_data.i.i, align 4
  br label %cleanup

err_bar_alloc:                                    ; preds = %do.end56, %do.end49
  %ret.0 = phi i32 [ %retval.0.i.ph.i90, %do.end49 ], [ %retval.0.i.ph.i105, %do.end56 ]
  %287 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %epf1.i, align 4
  %289 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx.i.i, align 4
  %reg.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %290, i32 0, i32 10
  %291 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %reg.i, align 4
  %tobool.not.i113 = icmp eq ptr %292, null
  br i1 %tobool.not.i113, label %err_bar_alloc.for.inc.i115_crit_edge, label %if.then.i

err_bar_alloc.for.inc.i115_crit_edge:             ; preds = %err_bar_alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i115

if.then.i:                                        ; preds = %err_bar_alloc
  call void @__sanitizer_cov_trace_pc() #9
  %epf_ntb_bar.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %290, i32 0, i32 12
  %293 = ptrtoint ptr %epf_ntb_bar.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %epf_ntb_bar.i, align 4
  call void @pci_epf_free_space(ptr noundef %288, ptr noundef nonnull %292, i32 noundef %294, i32 noundef 0) #7
  br label %for.inc.i115

for.inc.i115:                                     ; preds = %if.then.i, %err_bar_alloc.for.inc.i115_crit_edge
  %295 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i40.i, align 4
  %reg.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %296, i32 0, i32 10
  %297 = ptrtoint ptr %reg.1.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg.1.i, align 4
  %tobool.not.1.i114 = icmp eq ptr %298, null
  br i1 %tobool.not.1.i114, label %for.inc.i115.err_bar_init_crit_edge, label %if.then.1.i

for.inc.i115.err_bar_init_crit_edge:              ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bar_init

if.then.1.i:                                      ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #9
  %epf_ntb_bar.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %296, i32 0, i32 12
  %299 = ptrtoint ptr %epf_ntb_bar.1.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %epf_ntb_bar.1.i, align 4
  call void @pci_epf_free_space(ptr noundef %288, ptr noundef nonnull %298, i32 noundef %300, i32 noundef 1) #7
  br label %err_bar_init

err_bar_init:                                     ; preds = %if.then.1.i, %for.inc.i115.err_bar_init_crit_edge, %do.end42
  %ret.1 = phi i32 [ %call.lcssa.i, %do.end42 ], [ %ret.0, %for.inc.i115.err_bar_init_crit_edge ], [ %ret.0, %if.then.1.i ]
  %301 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i117 = icmp eq ptr %302, null
  br i1 %tobool.not.i.i117, label %err_bar_init.epf_ntb_epc_destroy_interface.exit.i_crit_edge, label %if.end4.i.i119

err_bar_init.epf_ntb_epc_destroy_interface.exit.i_crit_edge: ; preds = %err_bar_init
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_epc_destroy_interface.exit.i

if.end4.i.i119:                                   ; preds = %err_bar_init
  call void @__sanitizer_cov_trace_pc() #9
  %303 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %epf1.i, align 4
  %epc5.i.i118 = getelementptr inbounds %struct.epf_ntb_epc, ptr %302, i32 0, i32 6
  %305 = ptrtoint ptr %epc5.i.i118 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %epc5.i.i118, align 4
  call void @pci_epc_remove_epf(ptr noundef %306, ptr noundef %304, i32 noundef 0) #7
  call void @pci_epc_put(ptr noundef %306) #7
  br label %epf_ntb_epc_destroy_interface.exit.i

epf_ntb_epc_destroy_interface.exit.i:             ; preds = %if.end4.i.i119, %err_bar_init.epf_ntb_epc_destroy_interface.exit.i_crit_edge
  %307 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i40.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %308, null
  br i1 %tobool.not.i.1.i, label %epf_ntb_epc_destroy_interface.exit.i.cleanup_crit_edge, label %if.end4.i.1.i

epf_ntb_epc_destroy_interface.exit.i.cleanup_crit_edge: ; preds = %epf_ntb_epc_destroy_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.1.i:                                    ; preds = %epf_ntb_epc_destroy_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %epf1.i, align 4
  %epc5.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %308, i32 0, i32 6
  %311 = ptrtoint ptr %epc5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %epc5.i.1.i, align 4
  call void @pci_epc_remove_epf(ptr noundef %312, ptr noundef %310, i32 noundef 1) #7
  call void @pci_epc_put(ptr noundef %312) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.1.i, %epf_ntb_epc_destroy_interface.exit.i.cleanup_crit_edge, %if.end57, %do.end35, %if.then25, %do.body11, %if.then7, %do.body
  %retval.0 = phi i32 [ %retval.0.i83.ph, %do.end35 ], [ 0, %if.end57 ], [ 0, %if.then7 ], [ 0, %if.then25 ], [ %ret.1, %epf_ntb_epc_destroy_interface.exit.i.cleanup_crit_edge ], [ %ret.1, %if.end4.i.1.i ], [ 0, %do.body ], [ 0, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epf_ntb_unbind(ptr nocapture noundef readonly %epf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %cmd_handler.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cmd_handler.i.i) #7
  tail call fastcc void @epf_ntb_db_mw_bar_cleanup(ptr noundef %1, i32 noundef 0) #7
  %epc1.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %epc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epc1.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %vfunc_no3.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %vfunc_no3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vfunc_no3.i.i.i, align 1
  %arrayidx.i.i.i = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  %epf_bar4.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %epf_bar4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %epf_bar4.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.pci_epf_bar, ptr %13, i32 %11
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %arrayidx5.i.i.i) #7
  %14 = ptrtoint ptr %epc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %epc1.i.i.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 4
  %18 = ptrtoint ptr %vfunc_no3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vfunc_no3.i.i.i, align 1
  %epf_ntb_bar.i.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %epf_ntb_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %epf_ntb_bar.i.i.i, align 4
  %22 = ptrtoint ptr %epf_bar4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %epf_bar4.i.i.i, align 4
  %arrayidx5.i9.i.i = getelementptr %struct.pci_epf_bar, ptr %23, i32 %21
  tail call void @pci_epc_clear_bar(ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %19, ptr noundef %arrayidx5.i9.i.i) #7
  %arrayidx.i.1.i = getelementptr %struct.epf_ntb, ptr %1, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.1.i, align 4
  %cmd_handler.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %25, i32 0, i32 13
  %call.i.1.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cmd_handler.i.1.i) #7
  tail call fastcc void @epf_ntb_db_mw_bar_cleanup(ptr noundef %1, i32 noundef 1) #7
  %epc1.i.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %epc1.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epc1.i.i.1.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %25, align 4
  %vfunc_no3.i.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %vfunc_no3.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vfunc_no3.i.i.1.i, align 1
  %arrayidx.i.i.1.i = getelementptr %struct.epf_ntb_epc, ptr %25, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.1.i, align 4
  %epf_bar4.i.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %25, i32 0, i32 11
  %34 = ptrtoint ptr %epf_bar4.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %epf_bar4.i.i.1.i, align 4
  %arrayidx5.i.i.1.i = getelementptr %struct.pci_epf_bar, ptr %35, i32 %33
  tail call void @pci_epc_clear_bar(ptr noundef %27, i8 noundef zeroext %29, i8 noundef zeroext %31, ptr noundef %arrayidx5.i.i.1.i) #7
  %36 = ptrtoint ptr %epc1.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %epc1.i.i.1.i, align 4
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %25, align 4
  %40 = ptrtoint ptr %vfunc_no3.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vfunc_no3.i.i.1.i, align 1
  %epf_ntb_bar.i.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %25, i32 0, i32 12
  %42 = ptrtoint ptr %epf_ntb_bar.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %epf_ntb_bar.i.i.1.i, align 4
  %44 = ptrtoint ptr %epf_bar4.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %epf_bar4.i.i.1.i, align 4
  %arrayidx5.i9.i.1.i = getelementptr %struct.pci_epf_bar, ptr %45, i32 %43
  tail call void @pci_epc_clear_bar(ptr noundef %37, i8 noundef zeroext %39, i8 noundef zeroext %41, ptr noundef %arrayidx5.i9.i.1.i) #7
  %epf1.i = getelementptr inbounds %struct.epf_ntb, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %epf1.i, align 4
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %reg.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %epf_ntb_bar.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %49, i32 0, i32 12
  %52 = ptrtoint ptr %epf_ntb_bar.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %epf_ntb_bar.i, align 4
  tail call void @pci_epf_free_space(ptr noundef %47, ptr noundef nonnull %51, i32 noundef %53, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %54 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.1.i, align 4
  %reg.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %reg.1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %57, null
  br i1 %tobool.not.1.i, label %for.inc.i.epf_ntb_config_spad_bar_free.exit_crit_edge, label %if.then.1.i

for.inc.i.epf_ntb_config_spad_bar_free.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_config_spad_bar_free.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %epf_ntb_bar.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %55, i32 0, i32 12
  %58 = ptrtoint ptr %epf_ntb_bar.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %epf_ntb_bar.1.i, align 4
  tail call void @pci_epf_free_space(ptr noundef %47, ptr noundef nonnull %57, i32 noundef %59, i32 noundef 1) #7
  br label %epf_ntb_config_spad_bar_free.exit

epf_ntb_config_spad_bar_free.exit:                ; preds = %if.then.1.i, %for.inc.i.epf_ntb_config_spad_bar_free.exit_crit_edge
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %epf_ntb_config_spad_bar_free.exit.epf_ntb_epc_destroy_interface.exit.i_crit_edge, label %if.end4.i.i

epf_ntb_config_spad_bar_free.exit.epf_ntb_epc_destroy_interface.exit.i_crit_edge: ; preds = %epf_ntb_config_spad_bar_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_epc_destroy_interface.exit.i

if.end4.i.i:                                      ; preds = %epf_ntb_config_spad_bar_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %epf1.i, align 4
  %epc5.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %61, i32 0, i32 6
  %64 = ptrtoint ptr %epc5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %epc5.i.i, align 4
  tail call void @pci_epc_remove_epf(ptr noundef %65, ptr noundef %63, i32 noundef 0) #7
  tail call void @pci_epc_put(ptr noundef %65) #7
  br label %epf_ntb_epc_destroy_interface.exit.i

epf_ntb_epc_destroy_interface.exit.i:             ; preds = %if.end4.i.i, %epf_ntb_config_spad_bar_free.exit.epf_ntb_epc_destroy_interface.exit.i_crit_edge
  %66 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.1.i, label %epf_ntb_epc_destroy_interface.exit.i.epf_ntb_epc_destroy.exit_crit_edge, label %if.end4.i.1.i

epf_ntb_epc_destroy_interface.exit.i.epf_ntb_epc_destroy.exit_crit_edge: ; preds = %epf_ntb_epc_destroy_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_epc_destroy.exit

if.end4.i.1.i:                                    ; preds = %epf_ntb_epc_destroy_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %epf1.i, align 4
  %epc5.i.1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %67, i32 0, i32 6
  %70 = ptrtoint ptr %epc5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %epc5.i.1.i, align 4
  tail call void @pci_epc_remove_epf(ptr noundef %71, ptr noundef %69, i32 noundef 1) #7
  tail call void @pci_epc_put(ptr noundef %71) #7
  br label %epf_ntb_epc_destroy.exit

epf_ntb_epc_destroy.exit:                         ; preds = %if.end4.i.1.i, %epf_ntb_epc_destroy_interface.exit.i.epf_ntb_epc_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @epf_ntb_add_cfs(ptr nocapture noundef readonly %epf, ptr nocapture noundef readnone %group) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epf, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %group1 = getelementptr inbounds %struct.epf_ntb, ptr %1, i32 0, i32 5
  tail call void @config_group_init_type_name(ptr noundef %group1, ptr noundef %retval.0.i, ptr noundef nonnull @ntb_group_type) #7
  ret ptr %group1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_get_features(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_remove_epf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @epf_ntb_init_epc_bar_interface(ptr nocapture noundef %ntb, i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.epf_ntb, ptr %ntb, i32 0, i32 6, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %ntb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntb, align 8
  %epf = getelementptr inbounds %struct.epf_ntb, ptr %ntb, i32 0, i32 3
  %4 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epf, align 4
  %epc_features3 = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %epc_features3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %epc_features3, align 4
  %call = tail call i32 @pci_epc_get_next_free_bar(ptr noundef %7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %if.end.do.end_crit_edge ], [ %call.2, %if.end.1.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %switch.selectcmp.i = icmp eq i32 %type, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp2.i = icmp eq i32 %type, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.29, ptr %switch.select.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, ptr noundef nonnull %switch.select3.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %arrayidx6, align 4
  %inc7 = add nuw i32 %call, 1
  %call.1 = tail call i32 @pci_epc_get_next_free_bar(ptr noundef %7, i32 noundef %inc7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp slt i32 %call.1, 0
  br i1 %cmp4.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.1:                                         ; preds = %if.end
  %arrayidx6.1 = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.1, ptr %arrayidx6.1, align 4
  %inc7.1 = add nuw i32 %call.1, 1
  %call.2 = tail call i32 @pci_epc_get_next_free_bar(ptr noundef %7, i32 noundef %inc7.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp slt i32 %call.2, 0
  br i1 %cmp4.2, label %if.end.1.do.end_crit_edge, label %if.end.2

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  %arrayidx6.2 = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.2, ptr %arrayidx6.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp965 = icmp ugt i32 %3, 1
  br i1 %cmp965, label %if.end.2.for.body10_crit_edge, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2.for.body10_crit_edge:                    ; preds = %if.end.2
  br label %for.body10

for.body10:                                       ; preds = %if.end24.for.body10_crit_edge, %if.end.2.for.body10_crit_edge
  %i.068 = phi i32 [ %inc30, %if.end24.for.body10_crit_edge ], [ 1, %if.end.2.for.body10_crit_edge ]
  %bar.167 = phi i32 [ %inc28, %if.end24.for.body10_crit_edge ], [ 3, %if.end.2.for.body10_crit_edge ]
  %barno.166.in = phi i32 [ %call11, %if.end24.for.body10_crit_edge ], [ %call.2, %if.end.2.for.body10_crit_edge ]
  %barno.166 = add i32 %barno.166.in, 1
  %call11 = tail call i32 @pci_epc_get_next_free_bar(ptr noundef %7, i32 noundef %barno.166) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %for.body10.if.end24_crit_edge

for.body10.if.end24_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then13:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ntb to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.068, ptr %ntb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @epf_ntb_init_epc_bar_interface.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@epf_ntb_init_epc_bar_interface, %if.end24)) #7
          to label %if.then20 [label %if.end24], !srcloc !255

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw i32 %i.068, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @epf_ntb_init_epc_bar_interface.__UNIQUE_ID_ddebug236, ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %add) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then13, %for.body10.if.end24_crit_edge
  %arrayidx26 = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 %bar.167
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call11, ptr %arrayidx26, align 4
  %inc28 = add i32 %bar.167, 1
  %inc30 = add nuw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc30, %3
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body10_crit_edge

if.end24.for.body10_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_next_free_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_alloc_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_write_header(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epf_ntb_cmd_handler(ptr noundef %work) #4 align 64 {
entry:
  %db_data.i.i = alloca i32, align 4
  %db_offset.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.reset_handler_crit_edge, label %if.end

entry.reset_handler_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_handler

if.end:                                           ; preds = %entry
  %argument2 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %argument2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %argument2, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %1, align 1
  store i32 0, ptr %argument2, align 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %type6 = getelementptr i8, ptr %work, i32 100
  %9 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type6, align 4
  %epf_ntb = getelementptr i8, ptr %work, i32 -64
  %11 = ptrtoint ptr %epf_ntb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %epf_ntb, align 4
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb17
    i32 4, label %sw.bb26
    i32 5, label %sw.bb28
    i32 6, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %conv)
  %cmp.i = icmp ugt i16 %conv, 32
  br i1 %cmp.i, label %sw.bb.if.then12_crit_edge, label %if.end.i

sw.bb.if.then12_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.i:                                         ; preds = %sw.bb
  %and8 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %arrayidx.i = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %10
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %epc3.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %epc3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epc3.i, align 4
  br i1 %tobool9.not, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %epf_bar3.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %epf_bar3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %epf_bar3.i.i, align 4
  %msix_bar.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %msix_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msix_bar.i.i, align 4
  %addr.i.i = getelementptr %struct.pci_epf_bar, ptr %19, i32 %21, i32 1
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i.i, align 4
  %msix_table_offset.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 9
  %24 = ptrtoint ptr %msix_table_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msix_table_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  %lnot.ext.i.i = zext i1 %tobool.not.i.i to i32
  %arrayidx6.i.i = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %lnot.ext.i.i
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i, align 4
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %15, align 4
  %vfunc_no14.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 1
  %32 = ptrtoint ptr %vfunc_no14.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vfunc_no14.i.i, align 1
  %db_entry_size15.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %29, i32 0, i32 11
  %34 = ptrtoint ptr %db_entry_size15.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %db_entry_size15.i.i, align 1
  %conv.i.i = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp84.not.i.i = icmp eq i16 %conv, 0
  br i1 %cmp84.not.i.i, label %if.then4.i.if.end6.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.then4.i.if.end6.thread.i_crit_edge:            ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.then4.i
  %epc_features11.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 15
  %36 = ptrtoint ptr %epc_features11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %epc_features11.i.i, align 4
  %align12.i.i = getelementptr inbounds %struct.pci_epc_features, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %align12.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %align12.i.i, align 8
  %epf_bar8.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %27, i32 0, i32 11
  %40 = ptrtoint ptr %epf_bar8.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %epf_bar8.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.epf_ntb_epc, ptr %27, i32 0, i32 12, i32 2
  %42 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.pci_epf_bar, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i.i, align 4
  %sub.i.i = add i32 %39, -1
  %conv19.i.i = zext i32 %sub.i.i to i64
  %conv21.i.i = zext i32 %39 to i64
  %46 = xor i64 %conv19.i.i, -1
  %sub22.i.i = add nsw i64 %46, %conv21.i.i
  %neg.i.i = sub nsw i64 0, %conv21.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.086.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %phys_addr.085.i.i = phi i32 [ %45, %for.body.lr.ph.i.i ], [ %add29.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx17.i.i = getelementptr %struct.pci_epf_msix_tbl, ptr %add.ptr.i.i, i32 %i.086.i.i
  %47 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx17.i.i, align 8
  %add.i.i = add i64 %sub22.i.i, %48
  %and.i.i = and i64 %add.i.i, %neg.i.i
  %msg_data26.i.i = getelementptr inbounds %struct.pci_epf_msix_tbl, ptr %arrayidx17.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %msg_data26.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_data26.i.i, align 8
  %call.i.i = tail call i32 @pci_epc_map_addr(ptr noundef %17, i8 noundef zeroext %31, i8 noundef zeroext %33, i32 noundef %phys_addr.085.i.i, i64 noundef %and.i.i, i32 noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end.i.i, label %if.end6.thread39.i

if.end6.thread39.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp.i.i.i = icmp eq i32 %10, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i.i.i = select i1 %tobool.not.i.i, ptr @.str.29, ptr %switch.select.i.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.81, ptr noundef nonnull %switch.select3.i.i.i) #10
  br label %epf_ntb_configure_db.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %add29.i.i = add i32 %phys_addr.085.i.i, %35
  %arrayidx30.i.i = getelementptr %struct.epf_ntb_ctrl, ptr %29, i32 0, i32 12, i32 %i.086.i.i
  %51 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %arrayidx30.i.i, align 1
  %52 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx17.i.i, align 8
  %54 = trunc i64 %53 to i32
  %conv36.i.i = and i32 %sub.i.i, %54
  %arrayidx37.i.i = getelementptr %struct.epf_ntb_ctrl, ptr %29, i32 0, i32 13, i32 %i.086.i.i
  %55 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %conv36.i.i, ptr %arrayidx37.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.086.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end6.thread.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i.i.if.end6.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %if.end.i.i.if.end6.thread.i_crit_edge, %if.then4.i.if.end6.thread.i_crit_edge
  %is_msix.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 3
  %56 = ptrtoint ptr %is_msix.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %is_msix.i.i, align 1
  br label %if.else

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %db_data.i.i) #7
  %57 = ptrtoint ptr %db_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %db_data.i.i, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %db_offset.i.i) #7
  %58 = ptrtoint ptr %db_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %db_offset.i.i, align 4, !annotation !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i23.i = icmp eq i32 %10, 0
  %lnot.ext.i24.i = zext i1 %tobool.not.i23.i to i32
  %arrayidx4.i.i = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %lnot.ext.i24.i
  %59 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.epf_ntb_epc, ptr %60, i32 0, i32 12, i32 2
  %61 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx5.i.i, align 4
  %epf_bar.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %60, i32 0, i32 11
  %63 = ptrtoint ptr %epf_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %epf_bar.i.i, align 4
  %arrayidx6.i25.i = getelementptr %struct.pci_epf_bar, ptr %64, i32 %62
  %reg.i26.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %60, i32 0, i32 10
  %65 = ptrtoint ptr %reg.i26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i26.i, align 4
  %db_entry_size7.i.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %db_entry_size7.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %db_entry_size7.i.i, align 1
  %69 = ptrtoint ptr %arrayidx6.i25.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx6.i25.i, align 4
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %15, align 4
  %vfunc_no10.i.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %15, i32 0, i32 1
  %73 = ptrtoint ptr %vfunc_no10.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vfunc_no10.i.i, align 1
  %conv.i27.i = trunc i32 %5 to i8
  %call.i28.i = call i32 @pci_epc_map_msi_irq(ptr noundef %17, i8 noundef zeroext %72, i8 noundef zeroext %74, i32 noundef %70, i8 noundef zeroext %conv.i27.i, i32 noundef %68, ptr noundef nonnull %db_data.i.i, ptr noundef nonnull %db_offset.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool11.not.i.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool11.not.i.i, label %for.cond.preheader.i.i, label %if.end6.i

for.cond.preheader.i.i:                           ; preds = %if.else.i
  %conv13.i.i = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp48.not.i.i = icmp eq i16 %conv, 0
  br i1 %cmp48.not.i.i, label %for.cond.preheader.i.i.if.end6.thread43.i_crit_edge, label %for.cond.preheader.i.i.for.body.i35.i_crit_edge

for.cond.preheader.i.i.for.body.i35.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i35.i

for.cond.preheader.i.i.if.end6.thread43.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread43.i

for.body.i35.i:                                   ; preds = %for.body.i35.i.for.body.i35.i_crit_edge, %for.cond.preheader.i.i.for.body.i35.i_crit_edge
  %i.049.i.i = phi i32 [ %inc.i33.i, %for.body.i35.i.for.body.i35.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i35.i_crit_edge ]
  %75 = ptrtoint ptr %db_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %db_data.i.i, align 4
  %or.i.i = or i32 %76, %i.049.i.i
  %arrayidx16.i.i = getelementptr %struct.epf_ntb_ctrl, ptr %66, i32 0, i32 12, i32 %i.049.i.i
  %77 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %or.i.i, ptr %arrayidx16.i.i, align 1
  %78 = ptrtoint ptr %db_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %db_offset.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.epf_ntb_ctrl, ptr %66, i32 0, i32 13, i32 %i.049.i.i
  %80 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %arrayidx18.i.i, align 1
  %inc.i33.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i34.i = icmp eq i32 %inc.i33.i, %conv13.i.i
  br i1 %exitcond.not.i34.i, label %for.body.i35.i.if.end6.thread43.i_crit_edge, label %for.body.i35.i.for.body.i35.i_crit_edge

for.body.i35.i.for.body.i35.i_crit_edge:          ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i35.i

for.body.i35.i.if.end6.thread43.i_crit_edge:      ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread43.i

if.end6.thread43.i:                               ; preds = %for.body.i35.i.if.end6.thread43.i_crit_edge, %for.cond.preheader.i.i.if.end6.thread43.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_offset.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_data.i.i) #7
  br label %if.else

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp.i.i29.i = icmp eq i32 %10, 1
  %switch.select.i.i30.i = select i1 %switch.selectcmp.i.i29.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i.i31.i = select i1 %tobool.not.i23.i, ptr @.str.29, ptr %switch.select.i.i30.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.83, ptr noundef nonnull %switch.select3.i.i31.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_offset.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_data.i.i) #7
  br label %epf_ntb_configure_db.exit

epf_ntb_configure_db.exit:                        ; preds = %if.end6.i, %if.end6.thread39.i
  %switch.select3.i.pre-phi.i = phi ptr [ %switch.select3.i.i31.i, %if.end6.i ], [ %switch.select3.i.i.i, %if.end6.thread39.i ]
  %ret.042.i = phi i32 [ %call.i28.i, %if.end6.i ], [ %call.i.i, %if.end6.thread39.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.79, ptr noundef nonnull %switch.select3.i.pre-phi.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.042.i)
  %cmp = icmp slt i32 %ret.042.i, 0
  br i1 %cmp, label %epf_ntb_configure_db.exit.if.then12_crit_edge, label %epf_ntb_configure_db.exit.if.else_crit_edge

epf_ntb_configure_db.exit.if.else_crit_edge:      ; preds = %epf_ntb_configure_db.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

epf_ntb_configure_db.exit.if.then12_crit_edge:    ; preds = %epf_ntb_configure_db.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %epf_ntb_configure_db.exit.if.then12_crit_edge, %sw.bb.if.then12_crit_edge
  %command_status = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %81 = ptrtoint ptr %command_status to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 2, ptr %command_status, align 1
  br label %reset_handler

if.else:                                          ; preds = %epf_ntb_configure_db.exit.if.else_crit_edge, %if.end6.thread43.i, %if.end6.thread.i
  %command_status13 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %82 = ptrtoint ptr %command_status13 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 1, ptr %command_status13, align 1
  br label %reset_handler

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i101 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %10
  %83 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i101, align 4
  %epc2.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %epc2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %epc2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %arrayidx4.i = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %lnot.ext.i
  %87 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.epf_ntb_epc, ptr %88, i32 0, i32 12, i32 2
  %89 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx5.i, align 4
  %epf_bar.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %88, i32 0, i32 11
  %91 = ptrtoint ptr %epf_bar.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %epf_bar.i, align 4
  %arrayidx6.i = getelementptr %struct.pci_epf_bar, ptr %92, i32 %90
  %93 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx6.i, align 4
  %95 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %84, align 4
  %vfunc_no9.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %84, i32 0, i32 1
  %97 = ptrtoint ptr %vfunc_no9.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vfunc_no9.i, align 1
  tail call void @pci_epc_unmap_addr(ptr noundef %86, i8 noundef zeroext %96, i8 noundef zeroext %98, i32 noundef %94) #7
  %command_status16 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %99 = ptrtoint ptr %command_status16 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 1, ptr %command_status16, align 1
  br label %reset_handler

sw.bb17:                                          ; preds = %if.end
  %arrayidx.i102 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %10
  %100 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i102, align 4
  %epc2.i103 = getelementptr inbounds %struct.epf_ntb_epc, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %epc2.i103 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %epc2.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i104 = icmp eq i32 %10, 0
  %lnot.ext.i105 = zext i1 %tobool.not.i104 to i32
  %arrayidx4.i106 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %lnot.ext.i105
  %104 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx4.i106, align 4
  %add.i = add i32 %5, 2
  %arrayidx5.i107 = getelementptr %struct.epf_ntb_epc, ptr %105, i32 0, i32 12, i32 %add.i
  %106 = ptrtoint ptr %arrayidx5.i107 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx5.i107, align 4
  %epf_bar.i108 = getelementptr inbounds %struct.epf_ntb_epc, ptr %105, i32 0, i32 11
  %108 = ptrtoint ptr %epf_bar.i108 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %epf_bar.i108, align 4
  %arrayidx6.i109 = getelementptr %struct.pci_epf_bar, ptr %109, i32 %107
  %110 = ptrtoint ptr %arrayidx6.i109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx6.i109, align 4
  %reg.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %101, i32 0, i32 10
  %112 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i, align 4
  %addr8.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %addr8.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %115 = load i64, ptr %addr8.i, align 1
  %size9.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %113, i32 0, i32 6
  %116 = ptrtoint ptr %size9.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %size9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i110 = icmp eq i32 %5, 0
  br i1 %cmp.i110, label %if.then.i, label %sw.bb17.if.end.i111_crit_edge

sw.bb17.if.end.i111_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i111

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %mw1_offset.i = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %113, i32 0, i32 8
  %118 = ptrtoint ptr %mw1_offset.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %mw1_offset.i, align 1
  %add11.i = add i32 %119, %111
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.then.i, %sw.bb17.if.end.i111_crit_edge
  %phys_addr.0.i = phi i32 [ %add11.i, %if.then.i ], [ %111, %sw.bb17.if.end.i111_crit_edge ]
  %arrayidx12.i = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 4, i32 %5
  %120 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %121)
  %cmp13.i = icmp ugt i64 %117, %121
  br i1 %cmp13.i, label %epf_ntb_configure_mw.exit.thread, label %if.end17.i

epf_ntb_configure_mw.exit.thread:                 ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp.i.i = icmp eq i32 %10, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i.i = select i1 %tobool.not.i104, ptr @.str.29, ptr %switch.select.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.85, ptr noundef nonnull %switch.select3.i.i, i32 noundef %5, i64 noundef %117, i64 noundef %121) #10
  br label %if.then21

if.end17.i:                                       ; preds = %if.end.i111
  %122 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %101, align 4
  %vfunc_no19.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %101, i32 0, i32 1
  %124 = ptrtoint ptr %vfunc_no19.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %vfunc_no19.i, align 1
  %conv.i = trunc i64 %117 to i32
  %call20.i = tail call i32 @pci_epc_map_addr(ptr noundef %103, i8 noundef zeroext %123, i8 noundef zeroext %125, i32 noundef %phys_addr.0.i, i64 noundef %115, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end17.i.if.else23_crit_edge, label %epf_ntb_configure_mw.exit

if.end17.i.if.else23_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23

epf_ntb_configure_mw.exit:                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp.i52.i = icmp eq i32 %10, 1
  %switch.select.i53.i = select i1 %switch.selectcmp.i52.i, ptr @.str.30, ptr @.str.31
  %switch.select3.i55.i = select i1 %tobool.not.i104, ptr @.str.29, ptr %switch.select.i53.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.88, ptr noundef nonnull %switch.select3.i55.i, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp19 = icmp slt i32 %call20.i, 0
  br i1 %cmp19, label %epf_ntb_configure_mw.exit.if.then21_crit_edge, label %epf_ntb_configure_mw.exit.if.else23_crit_edge

epf_ntb_configure_mw.exit.if.else23_crit_edge:    ; preds = %epf_ntb_configure_mw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23

epf_ntb_configure_mw.exit.if.then21_crit_edge:    ; preds = %epf_ntb_configure_mw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %epf_ntb_configure_mw.exit.if.then21_crit_edge, %epf_ntb_configure_mw.exit.thread
  %command_status22 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %126 = ptrtoint ptr %command_status22 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 2, ptr %command_status22, align 1
  br label %reset_handler

if.else23:                                        ; preds = %epf_ntb_configure_mw.exit.if.else23_crit_edge, %if.end17.i.if.else23_crit_edge
  %command_status24 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %127 = ptrtoint ptr %command_status24 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 1, ptr %command_status24, align 1
  br label %reset_handler

sw.bb26:                                          ; preds = %if.end
  %arrayidx.i113 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %10
  %128 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i113, align 4
  %epc2.i114 = getelementptr inbounds %struct.epf_ntb_epc, ptr %129, i32 0, i32 6
  %130 = ptrtoint ptr %epc2.i114 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %epc2.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i115 = icmp eq i32 %10, 0
  %lnot.ext.i116 = zext i1 %tobool.not.i115 to i32
  %arrayidx4.i117 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 %lnot.ext.i116
  %132 = ptrtoint ptr %arrayidx4.i117 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx4.i117, align 4
  %add.i118 = add i32 %5, 2
  %arrayidx5.i119 = getelementptr %struct.epf_ntb_epc, ptr %133, i32 0, i32 12, i32 %add.i118
  %134 = ptrtoint ptr %arrayidx5.i119 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx5.i119, align 4
  %epf_bar.i120 = getelementptr inbounds %struct.epf_ntb_epc, ptr %133, i32 0, i32 11
  %136 = ptrtoint ptr %epf_bar.i120 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %epf_bar.i120, align 4
  %arrayidx6.i121 = getelementptr %struct.pci_epf_bar, ptr %137, i32 %135
  %138 = ptrtoint ptr %arrayidx6.i121 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx6.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i122 = icmp eq i32 %5, 0
  br i1 %cmp.i122, label %if.then.i125, label %sw.bb26.epf_ntb_teardown_mw.exit_crit_edge

sw.bb26.epf_ntb_teardown_mw.exit_crit_edge:       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_teardown_mw.exit

if.then.i125:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i123 = getelementptr inbounds %struct.epf_ntb_epc, ptr %129, i32 0, i32 10
  %140 = ptrtoint ptr %reg.i123 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg.i123, align 4
  %mw1_offset.i124 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %mw1_offset.i124 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %mw1_offset.i124, align 1
  %add9.i = add i32 %143, %139
  br label %epf_ntb_teardown_mw.exit

epf_ntb_teardown_mw.exit:                         ; preds = %if.then.i125, %sw.bb26.epf_ntb_teardown_mw.exit_crit_edge
  %phys_addr.0.i126 = phi i32 [ %add9.i, %if.then.i125 ], [ %139, %sw.bb26.epf_ntb_teardown_mw.exit_crit_edge ]
  %144 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %129, align 4
  %vfunc_no11.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %129, i32 0, i32 1
  %146 = ptrtoint ptr %vfunc_no11.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %vfunc_no11.i, align 1
  tail call void @pci_epc_unmap_addr(ptr noundef %131, i8 noundef zeroext %145, i8 noundef zeroext %147, i32 noundef %phys_addr.0.i126) #7
  %command_status27 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %148 = ptrtoint ptr %command_status27 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 1, ptr %command_status27, align 1
  br label %reset_handler

sw.bb28:                                          ; preds = %if.end
  %linkup = getelementptr i8, ptr %work, i32 -78
  %149 = ptrtoint ptr %linkup to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %linkup, align 2
  %epc = getelementptr inbounds %struct.epf_ntb, ptr %12, i32 0, i32 6
  %150 = ptrtoint ptr %epc to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %epc, align 8
  %linkup29 = getelementptr inbounds %struct.epf_ntb_epc, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %linkup29 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %linkup29, align 2, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool30.not = icmp eq i8 %153, 0
  br i1 %tobool30.not, label %sw.bb28.if.end46_crit_edge, label %land.lhs.true

sw.bb28.if.end46_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %sw.bb28
  %arrayidx33 = getelementptr %struct.epf_ntb, ptr %12, i32 0, i32 6, i32 1
  %154 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx33, align 4
  %linkup34 = getelementptr inbounds %struct.epf_ntb_epc, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %linkup34 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %linkup34, align 2, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool35.not = icmp eq i8 %157, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end46_crit_edge, label %if.then37

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then37:                                        ; preds = %land.lhs.true
  %call38 = tail call fastcc i32 @epf_ntb_link_up(ptr noundef %12, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  %command_status42 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %command_status42 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 2, ptr %command_status42, align 1
  br label %reset_handler

if.else43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %command_status42 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 1, ptr %command_status42, align 1
  br label %reset_handler

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %sw.bb28.if.end46_crit_edge
  %command_status47 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  %160 = ptrtoint ptr %command_status47 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 1, ptr %command_status47, align 1
  br label %reset_handler

sw.bb48:                                          ; preds = %if.end
  %linkup49 = getelementptr i8, ptr %work, i32 -78
  %161 = ptrtoint ptr %linkup49 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %linkup49, align 2
  %call50 = tail call fastcc i32 @epf_ntb_link_up(ptr noundef %12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  %command_status54 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %8, i32 0, i32 2
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %command_status54 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 2, ptr %command_status54, align 1
  br label %reset_handler

if.else55:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %command_status54 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 1, ptr %command_status54, align 1
  br label %reset_handler

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %epf = getelementptr inbounds %struct.epf_ntb, ptr %12, i32 0, i32 3
  %164 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %epf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp.i = icmp eq i32 %10, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.selectcmp2.i = icmp eq i32 %10, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.29, ptr %switch.select.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.77, ptr noundef nonnull %switch.select3.i, i32 noundef %3) #10
  br label %reset_handler

reset_handler:                                    ; preds = %do.end, %if.else55, %if.then53, %if.end46, %if.else43, %if.then41, %epf_ntb_teardown_mw.exit, %if.else23, %if.then21, %sw.bb15, %if.else, %if.then12, %entry.reset_handler_crit_edge
  %166 = load ptr, ptr @kpcintb_workqueue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %166, ptr noundef %work, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @epf_ntb_db_mw_bar_cleanup(ptr nocapture noundef readonly %ntb, i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.epf_ntb, ptr %ntb, i32 0, i32 6, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not = icmp eq i32 %type, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %arrayidx2 = getelementptr %struct.epf_ntb, ptr %ntb, i32 0, i32 6, i32 %lnot.ext
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %epc1.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %epc1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epc1.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %vfunc_no3.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vfunc_no3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vfunc_no3.i, align 1
  %epf_bar4.i = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 11
  %arrayidx.i = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %epf_bar4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %epf_bar4.i, align 4
  %arrayidx5.i = getelementptr %struct.pci_epf_bar, ptr %13, i32 %11
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %arrayidx5.i) #7
  %arrayidx.1.i = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 3
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %16 = ptrtoint ptr %epf_bar4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epf_bar4.i, align 4
  %arrayidx5.1.i = getelementptr %struct.pci_epf_bar, ptr %17, i32 %15
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %arrayidx5.1.i) #7
  %arrayidx.2.i = getelementptr %struct.epf_ntb_epc, ptr %1, i32 0, i32 12, i32 4
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %20 = ptrtoint ptr %epf_bar4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %epf_bar4.i, align 4
  %arrayidx5.2.i = getelementptr %struct.pci_epf_bar, ptr %21, i32 %19
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %arrayidx5.2.i) #7
  %epc1.i5 = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %epc1.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %epc1.i5, align 4
  %epf_bar4.i6 = getelementptr inbounds %struct.epf_ntb_epc, ptr %3, i32 0, i32 11
  %arrayidx.i7 = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i7, align 4
  %arrayidx3.i = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 8, i32 %25
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %epf_bar4.i6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %epf_bar4.i6, align 4
  %size7.i = getelementptr %struct.pci_epf_bar, ptr %29, i32 %25, i32 2
  %30 = ptrtoint ptr %size7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size7.i, align 4
  %arrayidx5.i8 = getelementptr %struct.pci_epf_bar, ptr %29, i32 %25
  %32 = ptrtoint ptr %arrayidx5.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.i8, align 4
  tail call void @pci_epc_mem_free_addr(ptr noundef %23, i32 noundef %33, ptr noundef nonnull %27, i32 noundef %31) #7
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx3.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i9 = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 12, i32 3
  %35 = ptrtoint ptr %arrayidx.1.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i9, align 4
  %arrayidx3.1.i = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 8, i32 %36
  %37 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %38, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %epf_bar4.i6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %epf_bar4.i6, align 4
  %size7.1.i = getelementptr %struct.pci_epf_bar, ptr %40, i32 %36, i32 2
  %41 = ptrtoint ptr %size7.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size7.1.i, align 4
  %arrayidx5.1.i10 = getelementptr %struct.pci_epf_bar, ptr %40, i32 %36
  %43 = ptrtoint ptr %arrayidx5.1.i10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.1.i10, align 4
  tail call void @pci_epc_mem_free_addr(ptr noundef %23, i32 noundef %44, ptr noundef nonnull %38, i32 noundef %42) #7
  %45 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx3.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i11 = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 12, i32 4
  %46 = ptrtoint ptr %arrayidx.2.i11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2.i11, align 4
  %arrayidx3.2.i = getelementptr %struct.epf_ntb_epc, ptr %3, i32 0, i32 8, i32 %47
  %48 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx3.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %49, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.epf_ntb_free_peer_mem.exit_crit_edge, label %if.then.2.i

for.inc.1.i.epf_ntb_free_peer_mem.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %epf_ntb_free_peer_mem.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %epf_bar4.i6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %epf_bar4.i6, align 4
  %size7.2.i = getelementptr %struct.pci_epf_bar, ptr %51, i32 %47, i32 2
  %52 = ptrtoint ptr %size7.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size7.2.i, align 4
  %arrayidx5.2.i12 = getelementptr %struct.pci_epf_bar, ptr %51, i32 %47
  %54 = ptrtoint ptr %arrayidx5.2.i12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.2.i12, align 4
  tail call void @pci_epc_mem_free_addr(ptr noundef %23, i32 noundef %55, ptr noundef nonnull %49, i32 noundef %53) #7
  %56 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx3.2.i, align 4
  br label %epf_ntb_free_peer_mem.exit

epf_ntb_free_peer_mem.exit:                       ; preds = %if.then.2.i, %for.inc.1.i.epf_ntb_free_peer_mem.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msi(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msix(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @epf_ntb_link_up(ptr nocapture noundef readonly %ntb, i1 noundef zeroext %link_up) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.epf_ntb, ptr %ntb, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %epc2 = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %vfunc_no4 = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vfunc_no4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfunc_no4, align 1
  %is_msix5 = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %is_msix5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_msix5, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %reg = getelementptr inbounds %struct.epf_ntb_epc, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %link_status = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %link_status to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %link_status, align 1
  %14 = and i16 %13, -2
  %masksel = zext i1 %link_up to i16
  %.sink = or i16 %14, %masksel
  store i16 %.sink, ptr %link_status, align 1
  %cond = select i1 %tobool.not, i32 2, i32 3
  %call = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %7, i32 noundef %cond, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %for.inc, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %switch.select3.i = phi ptr [ @.str.30, %for.inc.do.end_crit_edge ], [ @.str.29, %entry.do.end_crit_edge ]
  %call.lcssa = phi i32 [ %call.1, %for.inc.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ]
  %.lcssa = phi ptr [ %18, %for.inc.do.end_crit_edge ], [ %3, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %.lcssa, ptr noundef nonnull @.str.90, ptr noundef nonnull %switch.select3.i) #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.epf_ntb, ptr %ntb, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %epc2.1 = getelementptr inbounds %struct.epf_ntb_epc, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %epc2.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epc2.1, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %16, align 4
  %vfunc_no4.1 = getelementptr inbounds %struct.epf_ntb_epc, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %vfunc_no4.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vfunc_no4.1, align 1
  %is_msix5.1 = getelementptr inbounds %struct.epf_ntb_epc, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %is_msix5.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_msix5.1, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.1 = icmp eq i8 %24, 0
  %reg.1 = getelementptr inbounds %struct.epf_ntb_epc, ptr %16, i32 0, i32 10
  %25 = ptrtoint ptr %reg.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.1, align 4
  %link_status.1 = getelementptr inbounds %struct.epf_ntb_ctrl, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %link_status.1 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %link_status.1, align 1
  %29 = and i16 %28, -2
  %masksel42 = zext i1 %link_up to i16
  %.sink41 = or i16 %29, %masksel42
  store i16 %.sink41, ptr %link_status.1, align 1
  %cond.1 = select i1 %tobool.not.1, i32 2, i32 3
  %call.1 = tail call i32 @pci_epc_raise_irq(ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i32 noundef %cond.1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool14.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool14.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_map_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_map_msi_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_unmap_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_raise_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_clear_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_free_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_free_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_spad_count_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spad_count = getelementptr i8, ptr %item, i32 -40
  %0 = ptrtoint ptr %spad_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spad_count, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.93, i32 noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_spad_count_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !257
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %spad_count = getelementptr i8, ptr %item, i32 -40
  %3 = ptrtoint ptr %spad_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %spad_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_db_count_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %db_count = getelementptr i8, ptr %item, i32 -44
  %0 = ptrtoint ptr %db_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %db_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.93, i32 noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_db_count_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !257
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %db_count = getelementptr i8, ptr %item, i32 -44
  %3 = ptrtoint ptr %db_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %db_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_num_mws_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.93, i32 noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_num_mws_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !257
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp ugt i32 %2, 4
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw1_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %0 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %1 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %win_no, align 4
  %sub = add i32 %2, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.98, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw1_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  %epf = getelementptr i8, ptr %item, i32 -36
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %2 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %val, align 8, !annotation !257
  %call.i = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %win_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %5) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %sub = add i32 %7, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw2_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %0 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %1 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %win_no, align 4
  %sub = add i32 %2, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.98, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw2_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  %epf = getelementptr i8, ptr %item, i32 -36
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %2 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %val, align 8, !annotation !257
  %call.i = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %win_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %5) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %sub = add i32 %7, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw3_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %0 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %1 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %win_no, align 4
  %sub = add i32 %2, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.98, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw3_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  %epf = getelementptr i8, ptr %item, i32 -36
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %2 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %val, align 8, !annotation !257
  %call.i = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %win_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %5) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %sub = add i32 %7, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw4_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %0 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %1 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %win_no, align 4
  %sub = add i32 %2, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.98, i64 noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @epf_ntb_mw4_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #4 align 64 {
entry:
  %win_no = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -48
  %epf = getelementptr i8, ptr %item, i32 -36
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_no) #7
  %2 = ptrtoint ptr %win_no to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %win_no, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %val, align 8, !annotation !257
  %call.i = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.97, ptr noundef nonnull %win_no)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %win_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %win_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %5) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  %mws_size = getelementptr i8, ptr %item, i32 -32
  %sub = add i32 %7, -1
  %arrayidx = getelementptr [4 x i64], ptr %mws_size, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_no) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !201, !203, !204, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__initcall__kmod_pci_epf_ntb__239_2136_epf_ntb_init6, !1, !"__initcall__kmod_pci_epf_ntb__239_2136_epf_ntb_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2136, i32 1}
!2 = !{ptr @__exitcall_epf_ntb_exit, !3, !"__exitcall_epf_ntb_exit", i1 false, i1 false}
!3 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2143, i32 1}
!4 = !{ptr @__UNIQUE_ID_description240, !5, !"__UNIQUE_ID_description240", i1 false, i1 false}
!5 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2145, i32 1}
!6 = !{ptr @__UNIQUE_ID_author241, !7, !"__UNIQUE_ID_author241", i1 false, i1 false}
!7 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2146, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2147, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @kpcintb_workqueue, !12, !"kpcintb_workqueue", i1 false, i1 false}
!12 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 45, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2125, i32 38}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2130, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @epf_ntb_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @epf_ntb_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2114, i32 17}
!23 = !{ptr @epf_ntb_driver, !24, !"epf_ntb_driver", i1 false, i1 false}
!24 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2113, i32 30}
!25 = !{ptr @epf_ntb_header, !26, !"epf_ntb_header", i1 false, i1 false}
!26 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 124, i32 30}
!27 = !{ptr @epf_ntb_ops, !28, !"epf_ntb_ops", i1 false, i1 false}
!28 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2100, i32 27}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1872, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @epf_ntb_bind.__UNIQUE_ID_ddebug237, !30, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1877, i32 3}
!35 = !{ptr @epf_ntb_bind.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1883, i32 3}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @epf_ntb_bind._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @epf_ntb_bind._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @epf_ntb_bind._entry.11, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1889, i32 3}
!44 = !{ptr @epf_ntb_bind._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1895, i32 3}
!47 = !{ptr @epf_ntb_bind._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @epf_ntb_bind._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1901, i32 3}
!51 = !{ptr @epf_ntb_bind._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @epf_ntb_bind._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1611, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @epf_ntb_epc_create._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @epf_ntb_epc_create._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1618, i32 3}
!60 = !{ptr @epf_ntb_epc_create._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @epf_ntb_epc_create._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1699, i32 4}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @epf_ntb_init_epc_bar._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @epf_ntb_init_epc_bar._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1660, i32 4}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @epf_ntb_init_epc_bar_interface._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @epf_ntb_init_epc_bar_interface._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1672, i32 4}
!74 = !{ptr @epf_ntb_init_epc_bar_interface.__UNIQUE_ID_ddebug236, !73, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/pci-epc.h", i32 34, i32 10}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/pci-epc.h", i32 36, i32 10}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/pci-epc.h", i32 38, i32 10}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1108, i32 4}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @epf_ntb_config_spad_bar_alloc_interface._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @epf_ntb_config_spad_bar_alloc_interface._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1072, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @epf_ntb_config_spad_bar_alloc._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @epf_ntb_config_spad_bar_alloc._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1842, i32 4}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @epf_ntb_epc_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @epf_ntb_epc_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1736, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @epf_ntb_epc_init_interface._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @epf_ntb_epc_init_interface._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1743, i32 3}
!103 = !{ptr @epf_ntb_epc_init_interface._entry.40, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @epf_ntb_epc_init_interface._entry_ptr.42, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1750, i32 3}
!107 = !{ptr @epf_ntb_epc_init_interface._entry.43, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @epf_ntb_epc_init_interface._entry_ptr.45, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1757, i32 3}
!111 = !{ptr @epf_ntb_epc_init_interface._entry.46, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @epf_ntb_epc_init_interface._entry_ptr.48, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1765, i32 4}
!115 = !{ptr @epf_ntb_epc_init_interface._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @epf_ntb_epc_init_interface._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @epf_ntb_epc_init_interface.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1771, i32 2}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @epf_ntb_epc_init_interface.__key.53, !118, !"__key", i1 false, i1 false}
!121 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 916, i32 3}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @epf_ntb_config_sspad_bar_set._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @epf_ntb_config_sspad_bar_set._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 812, i32 3}
!129 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @epf_ntb_peer_spad_bar_set._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @epf_ntb_peer_spad_bar_set._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1292, i32 3}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @epf_ntb_configure_interrupt._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @epf_ntb_configure_interrupt._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1301, i32 3}
!139 = !{ptr @epf_ntb_configure_interrupt._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @epf_ntb_configure_interrupt._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1311, i32 4}
!143 = !{ptr @epf_ntb_configure_interrupt._entry.64, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @epf_ntb_configure_interrupt._entry_ptr.66, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1322, i32 4}
!147 = !{ptr @epf_ntb_configure_interrupt._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @epf_ntb_configure_interrupt._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1473, i32 4}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @epf_ntb_db_mw_bar_init._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @epf_ntb_db_mw_bar_init._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1483, i32 4}
!156 = !{ptr @epf_ntb_db_mw_bar_init._entry.72, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @epf_ntb_db_mw_bar_init._entry_ptr.74, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 1404, i32 3}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @epf_ntb_alloc_peer_mem._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @epf_ntb_alloc_peer_mem._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 694, i32 3}
!165 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @epf_ntb_cmd_handler._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @epf_ntb_cmd_handler._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 574, i32 3}
!170 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @epf_ntb_configure_db._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @epf_ntb_configure_db._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 529, i32 4}
!175 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @epf_ntb_configure_msix._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @epf_ntb_configure_msix._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 412, i32 3}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @epf_ntb_configure_msi._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @epf_ntb_configure_msi._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 263, i32 3}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @epf_ntb_configure_mw._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @epf_ntb_configure_mw._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 276, i32 3}
!190 = !{ptr @epf_ntb_configure_mw._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @epf_ntb_configure_mw._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 165, i32 4}
!194 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @epf_ntb_link_up._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @epf_ntb_link_up._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @ntb_group_type, !198, !"ntb_group_type", i1 false, i1 false}
!198 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2049, i32 38}
!199 = !{ptr @epf_ntb_attrs, !200, !"epf_ntb_attrs", i1 false, i1 false}
!200 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2038, i32 35}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2030, i32 1}
!203 = !{ptr @epf_ntb_attr_spad_count, !202, !"epf_ntb_attr_spad_count", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2016, i32 1}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2031, i32 1}
!208 = !{ptr @epf_ntb_attr_db_count, !207, !"epf_ntb_attr_db_count", i1 false, i1 false}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2032, i32 1}
!211 = !{ptr @epf_ntb_attr_num_mws, !210, !"epf_ntb_attr_num_mws", i1 false, i1 false}
!212 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2033, i32 1}
!214 = !{ptr @epf_ntb_attr_mw1, !213, !"epf_ntb_attr_mw1", i1 false, i1 false}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2021, i32 1}
!217 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2022, i32 1}
!220 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @epf_ntb_mw1_store._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @epf_ntb_mw1_store._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2034, i32 1}
!225 = !{ptr @epf_ntb_attr_mw2, !224, !"epf_ntb_attr_mw2", i1 false, i1 false}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2024, i32 1}
!228 = !{ptr @epf_ntb_mw2_store._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @epf_ntb_mw2_store._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2035, i32 1}
!232 = !{ptr @epf_ntb_attr_mw3, !231, !"epf_ntb_attr_mw3", i1 false, i1 false}
!233 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2026, i32 1}
!235 = !{ptr @epf_ntb_mw3_store._entry, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @epf_ntb_mw3_store._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2036, i32 1}
!239 = !{ptr @epf_ntb_attr_mw4, !238, !"epf_ntb_attr_mw4", i1 false, i1 false}
!240 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2028, i32 1}
!242 = !{ptr @epf_ntb_mw4_store._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @epf_ntb_mw4_store._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @epf_ntb_ids, !245, !"epf_ntb_ids", i1 false, i1 false}
!245 = !{!"../drivers/pci/endpoint/functions/pci-epf-ntb.c", i32 2106, i32 39}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{i64 2148829108, i64 2148829113, i64 2148829126, i64 2148829170, i64 2148829204, i64 2148829225}
!256 = !{i32 0, i32 33}
!257 = !{!"auto-init"}
!258 = !{i8 0, i8 2}
