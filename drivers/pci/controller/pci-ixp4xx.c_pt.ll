; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-ixp4xx.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-ixp4xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.ixp4xx_pci = type { ptr, ptr, i8, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_ixp4xx__249_671_ixp4xx_pci_driver_init6 = internal global ptr @ixp4xx_pci_driver_init, section ".initcall6.init", align 4
@ixp4xx_pci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ixp4xx_pci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ixp4xx-pci\00", [21 x i8] zeroinitializer }, align 32
@ixp4xx_pci_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp42x-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp43x-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@__const.ixp4xx_pci_probe.basereg = private unnamed_addr constant [4 x i32] [i32 16, i32 20, i32 24, i32 28], align 4
@ixp4xx_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @ixp4xx_pci_read_config, ptr @ixp4xx_pci_write_config }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel,ixp42x-pci\00", [47 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"activate hammering errata\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ixp4xx_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pci/controller/pci-ixp4xx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr = internal global ptr @ixp4xx_pci_probe._entry, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"controller is in %s mode\0A\00", [38 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.9 = internal global ptr @ixp4xx_pci_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"option\00", [25 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_singleton = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imprecise external abort\00", [39 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 580, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set up PCI_BASE_ADDRESS_%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.16 = internal global ptr @ixp4xx_pci_probe._entry.13, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set PCI_BASE_ADDR_%d to %pa\0A\00", [35 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.19 = internal global ptr @ixp4xx_pci_probe._entry.17, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 593, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set up PCI_BASE_ADDRESS_4\0A\00", [59 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.22 = internal global ptr @ixp4xx_pci_probe._entry.20, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set PCI_BASE_ADDR_4 to %pa\0A\00", [36 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.25 = internal global ptr @ixp4xx_pci_probe._entry.23, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 606, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set up PCI_BASE_ADDRESS_5\0A\00", [59 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.28 = internal global ptr @ixp4xx_pci_probe._entry.26, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 608, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set PCI_BASE_ADDR_5 to %pa\0A\00", [36 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.31 = internal global ptr @ixp4xx_pci_probe._entry.29, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 617, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set up TRDY limit\0A\00", [35 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.34 = internal global ptr @ixp4xx_pci_probe._entry.32, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set TRDY limit to 0x80ff\0A\00", [38 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.37 = internal global ptr @ixp4xx_pci_probe._entry.35, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 639, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to initialize master and command memory\0A\00", [48 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.40 = internal global ptr @ixp4xx_pci_probe._entry.38, section ".printk_index", align 4
@ixp4xx_pci_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"initialized as master\0A\00", [41 x i8] zeroinitializer }, align 32
@ixp4xx_pci_probe._entry_ptr.43 = internal global ptr @ixp4xx_pci_probe._entry.41, section ".printk_index", align 4
@ixp4xx_pci_read_config.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_ixp4xx\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixp4xx_pci_read_config\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"read_config from %d size %d dev %d:%d:%d address: %08x cmd: %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ixp4xx_pci_read_config.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s read byte %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_pci_read_config.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s read word %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_pci_read_config.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.49, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s read long %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_pci_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 331, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s illegal size\0A\00", [47 x i8] zeroinitializer }, align 32
@ixp4xx_pci_read_config._entry_ptr = internal global ptr @ixp4xx_pci_read_config._entry, section ".printk_index", align 4
@ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixp4xx_pci_check_master_abort\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"master abort detected\0A\00", [41 x i8] zeroinitializer }, align 32
@ixp4xx_pci_write_config.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixp4xx_pci_write_config\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"write_config_byte %#x to %d size %d dev %d:%d:%d addr: %08x cmd %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 485, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read abort status\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixp4xx_pci_abort_handler\00", [39 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_handler._entry_ptr = internal global ptr @ixp4xx_pci_abort_handler._entry, section ".printk_index", align 4
@ixp4xx_pci_abort_handler._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 491, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PCI: abort_handler addr = %#lx, isr = %#x, status = %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_handler._entry_ptr.59 = internal global ptr @ixp4xx_pci_abort_handler._entry.57, section ".printk_index", align 4
@ixp4xx_pci_abort_handler._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 498, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to clear abort status bit\0A\00", [62 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_handler._entry_ptr.62 = internal global ptr @ixp4xx_pci_abort_handler._entry.60, section ".printk_index", align 4
@ixp4xx_pci_abort_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.4, i32 505, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imprecise abort\0A\00", [47 x i8] zeroinitializer }, align 32
@ixp4xx_pci_abort_handler._entry_ptr.65 = internal global ptr @ixp4xx_pci_abort_handler._entry.63, section ".printk_index", align 4
@ixp4xx_crp_read_config.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixp4xx_crp_read_config\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s from %d size %d cmd %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ixp4xx_crp_read_config.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.66, ptr @.str.4, ptr @.str.48, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ixp4xx_crp_read_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.66, ptr @.str.4, i32 246, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ixp4xx_crp_read_config._entry_ptr = internal global ptr @ixp4xx_crp_read_config._entry, section ".printk_index", align 4
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IXP4xx PCI PRE-MEM\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IXP4xx PCI NON-PRE-MEM\00", [41 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.70, ptr @.str.4, ptr @.str.71, i8 0, i8 100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ixp4xx_pci_parse_map_ranges\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s window %pR, bus addr %pa\0A\00", [35 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 403, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memory range is not 64MB\0A\00", [38 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry_ptr = internal global ptr @ixp4xx_pci_parse_map_ranges._entry, section ".printk_index", align 4
@ixp4xx_pci_parse_map_ranges._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.4, i32 411, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no AHB memory mapping defined\0A\00", [33 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry_ptr.75 = internal global ptr @ixp4xx_pci_parse_map_ranges._entry.73, section ".printk_index", align 4
@ixp4xx_pci_parse_map_ranges._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.70, ptr @.str.4, i32 420, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IO mem at uneven address: %pa\0A\00", [33 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry_ptr.78 = internal global ptr @ixp4xx_pci_parse_map_ranges._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IXP4xx PCI IO MEM\00", [46 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no IO space AHB memory mapping defined\0A\00", [56 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_ranges._entry_ptr.82 = internal global ptr @ixp4xx_pci_parse_map_ranges._entry.80, section ".printk_index", align 4
@ixp4xx_pci_parse_map_dma_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 453, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA memory range is not 64MB\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixp4xx_pci_parse_map_dma_ranges\00", [32 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_dma_ranges._entry_ptr = internal global ptr @ixp4xx_pci_parse_map_dma_ranges._entry, section ".printk_index", align 4
@ixp4xx_pci_parse_map_dma_ranges.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA MEM BASE: %pa\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_dma_ranges._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.4, i32 466, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no DMA memory range defined\0A\00", [35 x i8] zeroinitializer }, align 32
@ixp4xx_pci_parse_map_dma_ranges._entry_ptr.88 = internal global ptr @ixp4xx_pci_parse_map_dma_ranges._entry.86, section ".printk_index", align 4
@ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.89, ptr @.str.4, ptr @.str.90, i8 0, i8 67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixp4xx_crp_write_config\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s to %d size %d cmd %08x val %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"ixp4xx_pci_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 664, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 666, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"ixp4xx_pci_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 648, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"ixp4xx_pci_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 366, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 543, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 545, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 554, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"ixp4xx_pci_abort_singleton\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 473, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 560, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 580, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 582, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 593, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 595, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 606, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 608, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 617, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 619, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 639, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 641, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 308, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 319, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 323, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 327, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 331, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 141, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 356, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 485, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 489, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 498, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 505, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 224, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 246, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 396, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 398, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 400, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 403, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 411, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 420, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 424, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 432, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 453, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 457, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 466, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [39 x i8] c"../drivers/pci/controller/pci-ixp4xx.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 268, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__initcall__kmod_pci_ixp4xx__249_671_ixp4xx_pci_driver_init6, ptr @ixp4xx_crp_read_config._entry, ptr @ixp4xx_crp_read_config._entry_ptr, ptr @ixp4xx_pci_abort_handler._entry, ptr @ixp4xx_pci_abort_handler._entry.57, ptr @ixp4xx_pci_abort_handler._entry.60, ptr @ixp4xx_pci_abort_handler._entry.63, ptr @ixp4xx_pci_abort_handler._entry_ptr, ptr @ixp4xx_pci_abort_handler._entry_ptr.59, ptr @ixp4xx_pci_abort_handler._entry_ptr.62, ptr @ixp4xx_pci_abort_handler._entry_ptr.65, ptr @ixp4xx_pci_parse_map_dma_ranges._entry, ptr @ixp4xx_pci_parse_map_dma_ranges._entry.86, ptr @ixp4xx_pci_parse_map_dma_ranges._entry_ptr, ptr @ixp4xx_pci_parse_map_dma_ranges._entry_ptr.88, ptr @ixp4xx_pci_parse_map_ranges._entry, ptr @ixp4xx_pci_parse_map_ranges._entry.73, ptr @ixp4xx_pci_parse_map_ranges._entry.76, ptr @ixp4xx_pci_parse_map_ranges._entry.80, ptr @ixp4xx_pci_parse_map_ranges._entry_ptr, ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.75, ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.78, ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.82, ptr @ixp4xx_pci_probe._entry, ptr @ixp4xx_pci_probe._entry.13, ptr @ixp4xx_pci_probe._entry.17, ptr @ixp4xx_pci_probe._entry.20, ptr @ixp4xx_pci_probe._entry.23, ptr @ixp4xx_pci_probe._entry.26, ptr @ixp4xx_pci_probe._entry.29, ptr @ixp4xx_pci_probe._entry.32, ptr @ixp4xx_pci_probe._entry.35, ptr @ixp4xx_pci_probe._entry.38, ptr @ixp4xx_pci_probe._entry.41, ptr @ixp4xx_pci_probe._entry.7, ptr @ixp4xx_pci_probe._entry_ptr, ptr @ixp4xx_pci_probe._entry_ptr.16, ptr @ixp4xx_pci_probe._entry_ptr.19, ptr @ixp4xx_pci_probe._entry_ptr.22, ptr @ixp4xx_pci_probe._entry_ptr.25, ptr @ixp4xx_pci_probe._entry_ptr.28, ptr @ixp4xx_pci_probe._entry_ptr.31, ptr @ixp4xx_pci_probe._entry_ptr.34, ptr @ixp4xx_pci_probe._entry_ptr.37, ptr @ixp4xx_pci_probe._entry_ptr.40, ptr @ixp4xx_pci_probe._entry_ptr.43, ptr @ixp4xx_pci_probe._entry_ptr.9, ptr @ixp4xx_pci_read_config._entry, ptr @ixp4xx_pci_read_config._entry_ptr, ptr @ixp4xx_pci_driver, ptr @.str, ptr @ixp4xx_pci_of_match, ptr @ixp4xx_pci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @ixp4xx_pci_abort_singleton, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_abort_singleton to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_abort_handler._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_abort_handler._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_abort_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_crp_read_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_ranges._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_ranges._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_ranges._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_dma_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pci_parse_map_dma_ranges._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ixp4xx_pci_driver, ptr noundef nonnull @ixp4xx_pci_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pci_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #5
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !178
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ixp4xx_pci_ops, ptr %ops, align 4
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %private.i, ptr %sysdata, align 4
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %private.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %private.i, ptr %driver_data.i, align 4
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %errata_hammer = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %errata_hammer to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %errata_hammer, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %call8, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !179
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %host_mode = getelementptr inbounds %struct.ixp4xx_pci, ptr %private.i, i32 0, i32 3
  %11 = trunc i32 %and to i8
  %12 = ptrtoint ptr %host_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %host_mode, align 1
  %cond = select i1 %tobool16.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #8
  store ptr %private.i, ptr @ixp4xx_pci_abort_singleton, align 4
  tail call void @hook_fault_code(i32 noundef 22, ptr noundef nonnull @ixp4xx_pci_abort_handler, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str.12) #5
  %call23 = tail call fastcc i32 @ixp4xx_pci_parse_map_ranges(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %call27 = tail call fastcc i32 @ixp4xx_pci_parse_map_dma_ranges(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %13 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %host_mode, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool32.not = icmp eq i8 %14, 0
  br i1 %tobool32.not, label %if.end30.if.end79_crit_edge, label %if.then33

if.end30.if.end79_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #5
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call34, ptr %addr, align 4
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %if.then33
  %i.0160 = phi i32 [ 0, %if.then33 ], [ %inc, %if.end44.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__const.ixp4xx_pci_probe.basereg, i32 0, i32 %i.0160
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %call35 = call fastcc i32 @ixp4xx_crp_write_config(ptr noundef %private.i, i32 noundef %17, i32 noundef 4, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end43, label %do.end40

do.end40:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %i.0160) #8
  br label %if.end44

do.end43:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %i.0160, ptr noundef nonnull %addr) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.end40
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %add = add i32 %21, 16777216
  store i32 %add, ptr %addr, align 4
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end44
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %call45 = call fastcc i32 @ixp4xx_crp_write_config(ptr noundef %private.i, i32 noundef 32, i32 noundef 4, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end54, label %do.end50

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %if.end55

do.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull %addr) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %do.end50
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1023, ptr %addr, align 4
  %call57 = call fastcc i32 @ixp4xx_crp_write_config(ptr noundef %private.i, i32 noundef 36, i32 noundef 4, i32 noundef -1023)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end66, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  br label %if.end67

do.end66:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull %addr) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %do.end62
  %call68 = call fastcc i32 @ixp4xx_crp_write_config(ptr noundef %private.i, i32 noundef 64, i32 noundef 4, i32 noundef 33023)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end77, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #8
  br label %if.end79

do.end77:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.36) #8
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %do.end73, %if.end30.if.end79_crit_edge
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i157 = getelementptr i8, ptr %26, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 15) #5, !srcloc !181
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.i159 = getelementptr i8, ptr %28, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 32796) #5, !srcloc !181
  %call81 = call fastcc i32 @ixp4xx_crp_write_config(ptr noundef %private.i, i32 noundef 4, i32 noundef 2, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end90, label %do.end86

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #8
  br label %if.end91

do.end90:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.42) #8
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %do.end86
  %call92 = call i32 @pci_host_probe(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end26.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11 ], [ 0, %if.end91 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end14.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pci_abort_handler(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef %regs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ixp4xx_pci_abort_singleton, align 4
  %base.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_abort_handler, %do.end.i)) #5
          to label %if.then.i [label %do.end.i], !srcloc !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 6, i32 noundef 2, i32 noundef 4) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 4) #5, !srcloc !181
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #5, !srcloc !179
  %shr.i = lshr i32 %10, 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_abort_handler, %ixp4xx_crp_read_config.exit)) #5
          to label %if.then41.i [label %ixp4xx_crp_read_config.exit], !srcloc !182

if.then41.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug239, ptr noundef %12, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.66, i32 noundef %shr.i) #5
  br label %ixp4xx_crp_read_config.exit

ixp4xx_crp_read_config.exit:                      ; preds = %if.then41.i, %do.end.i
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.58, i32 noundef %addr, i32 noundef %3, i32 noundef %shr.i) #8
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 2) #5, !srcloc !181
  %or = and i32 %10, -536936448
  %shl.i = or i32 %or, 536870912
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_abort_handler, %if.end13)) #5
          to label %if.then6.i [label %if.end13], !srcloc !182

if.then6.i:                                       ; preds = %ixp4xx_crp_read_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241, ptr noundef %18, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef 6, i32 noundef 2, i32 noundef 3211268, i32 noundef %shl.i) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then6.i, %ixp4xx_crp_read_config.exit
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 3211268) #5, !srcloc !181
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %shl.i) #5, !srcloc !181
  %and = and i32 %fsr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %do.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.64) #8
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add = add i32 %26, 4
  store i32 %add, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end13.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixp4xx_pci_parse_map_ranges(ptr noundef readonly %p) unnamed_addr #4 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #5
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !178
  %windows = getelementptr i8, ptr %p, i32 -72
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %windows, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.do.end25_crit_edge, label %for.body.i

for.cond.i.do.end25_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %resource_list_first_type.exit.do.end25_crit_edge, label %if.then

resource_list_first_type.exit.do.end25_crit_edge: ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

if.then:                                          ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res.i.le, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %sub = sub i32 %11, %13
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %addr, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, ptr @.str.69, ptr @.str.68
  %17 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select, ptr %17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_parse_map_ranges.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_parse_map_ranges, %do.end)) #5
          to label %if.then12 [label %do.end], !srcloc !182

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_parse_map_ranges.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef %20, ptr noundef %9, ptr noundef nonnull %addr) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then
  %end.i = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 4
  %sub.i = add i32 %22, 1
  %add.i = sub i32 %sub.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %add.i)
  %cmp.not = icmp eq i32 %add.i, 67108864
  br i1 %cmp.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72) #8
  br label %cleanup47

if.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr, align 4
  %shr.i = lshr i32 %26, 24
  %shl.i = and i32 %26, -16777216
  %add.i73 = shl nuw nsw i32 %shr.i, 16
  %shl3.i = add nuw nsw i32 %add.i73, 65536
  %add5.i = shl nuw nsw i32 %shr.i, 8
  %shl6.i = add nuw nsw i32 %add5.i, 512
  %add9.i = add nuw nsw i32 %shr.i, 3
  %or.i = or i32 %add9.i, %shl.i
  %or7.i = or i32 %or.i, %shl3.i
  %or10.i = or i32 %or7.i, %shl6.i
  %base.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 1
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %28, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %or10.i) #5, !srcloc !181
  br label %for.cond.i78.preheader

do.end25:                                         ; preds = %resource_list_first_type.exit.do.end25_crit_edge, %for.cond.i.do.end25_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74) #8
  br label %for.cond.i78.preheader

for.cond.i78.preheader:                           ; preds = %do.end25, %if.end20
  br label %for.cond.i78

for.cond.i78:                                     ; preds = %for.body.i83.for.cond.i78_crit_edge, %for.cond.i78.preheader
  %entry1.0.in.i75 = phi ptr [ %entry1.0.i76, %for.body.i83.for.cond.i78_crit_edge ], [ %windows, %for.cond.i78.preheader ]
  %29 = ptrtoint ptr %entry1.0.in.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %entry1.0.i76 = load ptr, ptr %entry1.0.in.i75, align 4
  %cmp.not.i77 = icmp eq ptr %entry1.0.i76, %windows
  br i1 %cmp.not.i77, label %for.cond.i78.do.end45_crit_edge, label %for.body.i83

for.cond.i78.do.end45_crit_edge:                  ; preds = %for.cond.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

for.body.i83:                                     ; preds = %for.cond.i78
  %res.i79 = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i76, i32 0, i32 1
  %30 = ptrtoint ptr %res.i79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %res.i79, align 4
  %flags.i.i80 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i.i80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i80, align 4
  %and.i.i81 = and i32 %33, 7936
  %cmp2.i82 = icmp eq i32 %and.i.i81, 256
  br i1 %cmp2.i82, label %resource_list_first_type.exit85, label %for.body.i83.for.cond.i78_crit_edge

for.body.i83.for.cond.i78_crit_edge:              ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i78

resource_list_first_type.exit85:                  ; preds = %for.body.i83
  %tobool29.not = icmp eq ptr %entry1.0.i76, null
  br i1 %tobool29.not, label %resource_list_first_type.exit85.do.end45_crit_edge, label %if.then30

resource_list_first_type.exit85.do.end45_crit_edge: ; preds = %resource_list_first_type.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

if.then30:                                        ; preds = %resource_list_first_type.exit85
  %res.i79.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i76, i32 0, i32 1
  %34 = ptrtoint ptr %res.i79.le to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res.i79.le, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %call33 = call i32 @pci_pio_to_address(i32 noundef %37) #5
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call33, ptr %addr, align 4
  %and34 = and i32 %call33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef nonnull %addr) #8
  br label %cleanup47

if.end40:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %name41 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 2
  %39 = ptrtoint ptr %name41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.79, ptr %name41, align 4
  %shr = lshr i32 %call33, 8
  %base.i86 = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 1
  %40 = ptrtoint ptr %base.i86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %41, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %shr) #5, !srcloc !181
  br label %cleanup47

do.end45:                                         ; preds = %resource_list_first_type.exit85.do.end45_crit_edge, %for.cond.i78.do.end45_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.81) #8
  br label %cleanup47

cleanup47:                                        ; preds = %do.end45, %if.end40, %do.end39, %do.end19
  %retval.1 = phi i32 [ -22, %do.end39 ], [ -22, %do.end19 ], [ 0, %do.end45 ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixp4xx_pci_parse_map_dma_ranges(ptr noundef readonly %p) unnamed_addr #4 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #5
  %dma_ranges = getelementptr i8, ptr %p, i32 -64
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %dma_ranges, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %dma_ranges
  br i1 %cmp.not.i, label %for.cond.i.do.end19_crit_edge, label %for.body.i

for.cond.i.do.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %resource_list_first_type.exit.do.end19_crit_edge, label %if.then

resource_list_first_type.exit.do.end19_crit_edge: ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.then:                                          ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res.i.le, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %offset = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %sub = sub i32 %10, %12
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %addr, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %16 = load i32, ptr %8, align 4
  %sub.i = add i32 %15, 1
  %add.i = sub i32 %sub.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %add.i)
  %cmp.not = icmp eq i32 %add.i, 67108864
  br i1 %cmp.not, label %do.body6, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83) #8
  br label %cleanup

do.body6:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_parse_map_dma_ranges.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_parse_map_dma_ranges, %do.end15)) #5
          to label %if.then12 [label %do.end15], !srcloc !182

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_parse_map_dma_ranges.__UNIQUE_ID_ddebug248, ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef nonnull %addr) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body6
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %shr.i = lshr i32 %18, 24
  %shl.i = and i32 %18, -16777216
  %add.i34 = shl nuw nsw i32 %shr.i, 16
  %shl3.i = add nuw nsw i32 %add.i34, 65536
  %add5.i = shl nuw nsw i32 %shr.i, 8
  %shl6.i = add nuw nsw i32 %add5.i, 512
  %add9.i = add nuw nsw i32 %shr.i, 3
  %or.i = or i32 %add9.i, %shl.i
  %or7.i = or i32 %or.i, %shl3.i
  %or10.i = or i32 %or7.i, %shl6.i
  %base.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 1
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %20, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %or10.i) #5, !srcloc !181
  br label %cleanup

do.end19:                                         ; preds = %resource_list_first_type.exit.do.end19_crit_edge, %for.cond.i.do.end19_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.87) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end19 ], [ 0, %do.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixp4xx_crp_write_config(ptr nocapture noundef readonly %p, i32 noundef %where, i32 noundef %size, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %where, 4
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 2, label %if.then3.i
    i32 4, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl4.i = shl nuw nsw i32 1, %rem
  %add.i = add nsw i32 %rem, 1
  %shl5.i = shl nuw nsw i32 1, %add.i
  %or.i = or i32 %shl5.i, %shl4.i
  %neg6.i = shl i32 %or.i, 20
  %and7.i = and i32 %neg6.i, 15728640
  %shl8.i = xor i32 %and7.i, 15728640
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %entry.if.end_crit_edge
  %retval.0.i21.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %shl8.i, %if.then3.i ]
  %and = and i32 %where, -65540
  %or = or i32 %and, %retval.0.i21.ph
  %or1 = or i32 %or, 65536
  %mul = shl nsw i32 %rem, 3
  %shl = shl i32 %value, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_crp_write_config, %do.end)) #5
          to label %if.then6 [label %do.end], !srcloc !182

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241, ptr noundef %2, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %where, i32 noundef %size, i32 noundef %or1, i32 noundef %shl) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %base.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or1) #5, !srcloc !181
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %shl) #5, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 135, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pci_read_config(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %value) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !178
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %value, align 4
  %rem = srem i32 %where, 4
  %6 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then3.i
    i32 4, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = shl nuw nsw i32 16, %rem
  %and.i = and i32 %neg.i, 240
  %shl1.i = xor i32 %and.i, 240
  br label %if.end

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl4.i = shl nuw nsw i32 1, %rem
  %add.i = add nsw i32 %rem, 1
  %shl5.i = shl nuw nsw i32 1, %add.i
  %or.i = or i32 %shl5.i, %shl4.i
  %neg6.i = shl i32 %or.i, 4
  %and7.i = and i32 %neg6.i, 240
  %shl8.i = xor i32 %and7.i, 240
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.then.i, %entry.if.end_crit_edge
  %retval.0.i115.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %shl8.i, %if.then3.i ], [ %shl1.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.then.i118, label %if.else.i

if.then.i118:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = lshr i32 %devfn, 3
  %and.i116 = and i32 %7, 31
  %sub.i = sub nuw nsw i32 32, %and.i116
  %shl.i = shl nuw i32 1, %sub.i
  %conv2.i = shl i32 %devfn, 8
  %shl5.i117 = and i32 %conv2.i, 1792
  %and6.i = and i32 %where, -4
  br label %ixp4xx_config_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %4 to i32
  %shl9.i = shl nuw nsw i32 %conv.i, 16
  %conv10.i = shl i32 %devfn, 8
  %shl13.i = and i32 %conv10.i, 63488
  %or14.i = or i32 %shl9.i, %shl13.i
  %shl17.i = and i32 %conv10.i, 1792
  %or18.i = or i32 %or14.i, %shl17.i
  %and19.i = and i32 %where, -4
  br label %ixp4xx_config_addr.exit

ixp4xx_config_addr.exit:                          ; preds = %if.else.i, %if.then.i118
  %or18.sink.i = phi i32 [ %or18.i, %if.else.i ], [ %and6.i, %if.then.i118 ]
  %and19.sink.i = phi i32 [ %and19.i, %if.else.i ], [ %shl5.i117, %if.then.i118 ]
  %.sink.i = phi i32 [ 1, %if.else.i ], [ %shl.i, %if.then.i118 ]
  %or20.i = or i32 %and19.sink.i, %or18.sink.i
  %or21.i = or i32 %or20.i, %.sink.i
  %or = or i32 %retval.0.i115.ph, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_read_config, %do.end)) #5
          to label %if.then6 [label %do.end], !srcloc !182

if.then6:                                         ; preds = %ixp4xx_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv7 = zext i8 %4 to i32
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %and8 = and i32 %devfn, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug242, ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef %where, i32 noundef %size, i32 noundef %conv7, i32 noundef %and, i32 noundef %and8, i32 noundef %or21.i, i32 noundef %or) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %ixp4xx_config_addr.exit
  %call10 = call fastcc i32 @ixp4xx_pci_read_indirect(ptr noundef %1, i32 noundef %or21.i, i32 noundef %or, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %mul = shl nsw i32 %rem, 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %shr14 = lshr i32 %11, %mul
  %12 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %size, label %do.end79 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb35
    i32 4, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %and15 = and i32 %shr14, 255
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_read_config, %sw.epilog)) #5
          to label %if.then30 [label %sw.epilog], !srcloc !182

if.then30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug243, ptr noundef %15, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %and15) #5
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %and36 = and i32 %shr14, 65535
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and36, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_read_config, %sw.epilog)) #5
          to label %if.then51 [label %sw.epilog], !srcloc !182

if.then51:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug244, ptr noundef %18, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, i32 noundef %and36) #5
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr14, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_read_config, %sw.epilog)) #5
          to label %if.then72 [label %sw.epilog], !srcloc !182

if.then72:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug245, ptr noundef %21, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef %shr14) #5
  br label %sw.epilog

do.end79:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then72, %sw.bb56, %if.then51, %sw.bb35, %if.then30, %sw.bb
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end79, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %do.end79 ], [ 0, %sw.epilog ], [ 134, %do.end.cleanup_crit_edge ], [ 135, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pci_write_config(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %rem = srem i32 %where, 4
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then3.i
    i32 4, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = shl nuw nsw i32 16, %rem
  %and.i = and i32 %neg.i, 240
  %shl1.i = xor i32 %and.i, 240
  br label %if.end

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl4.i = shl nuw nsw i32 1, %rem
  %add.i = add nsw i32 %rem, 1
  %shl5.i = shl nuw nsw i32 1, %add.i
  %or.i = or i32 %shl5.i, %shl4.i
  %neg6.i = shl i32 %or.i, 4
  %and7.i = and i32 %neg6.i, 240
  %shl8.i = xor i32 %and7.i, 240
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.then.i, %entry.if.end_crit_edge
  %retval.0.i34.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %shl8.i, %if.then3.i ], [ %shl1.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = lshr i32 %devfn, 3
  %and.i35 = and i32 %5, 31
  %sub.i = sub nuw nsw i32 32, %and.i35
  %shl.i = shl nuw i32 1, %sub.i
  %conv2.i = shl i32 %devfn, 8
  %shl5.i36 = and i32 %conv2.i, 1792
  %and6.i = and i32 %where, -4
  br label %ixp4xx_config_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %3 to i32
  %shl9.i = shl nuw nsw i32 %conv.i, 16
  %conv10.i = shl i32 %devfn, 8
  %shl13.i = and i32 %conv10.i, 63488
  %or14.i = or i32 %shl9.i, %shl13.i
  %shl17.i = and i32 %conv10.i, 1792
  %or18.i = or i32 %or14.i, %shl17.i
  %and19.i = and i32 %where, -4
  br label %ixp4xx_config_addr.exit

ixp4xx_config_addr.exit:                          ; preds = %if.else.i, %if.then.i37
  %or18.sink.i = phi i32 [ %or18.i, %if.else.i ], [ %and6.i, %if.then.i37 ]
  %and19.sink.i = phi i32 [ %and19.i, %if.else.i ], [ %shl5.i36, %if.then.i37 ]
  %.sink.i = phi i32 [ 1, %if.else.i ], [ %shl.i, %if.then.i37 ]
  %or20.i = or i32 %and19.sink.i, %or18.sink.i
  %or21.i = or i32 %or20.i, %.sink.i
  %or = or i32 %retval.0.i34.ph, 11
  %mul = shl nsw i32 %rem, 3
  %shl = shl i32 %value, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_write_config.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_write_config, %do.end)) #5
          to label %if.then6 [label %do.end], !srcloc !182

if.then6:                                         ; preds = %ixp4xx_config_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %conv7 = zext i8 %3 to i32
  %shr = lshr i32 %devfn, 3
  %and = and i32 %shr, 31
  %and8 = and i32 %devfn, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_write_config.__UNIQUE_ID_ddebug246, ptr noundef %7, ptr noundef nonnull @.str.54, i32 noundef %value, i32 noundef %where, i32 noundef %size, i32 noundef %conv7, i32 noundef %and, i32 noundef %and8, i32 noundef %or21.i, i32 noundef %or) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %ixp4xx_config_addr.exit
  %base.i.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or21.i) #5, !srcloc !181
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or) #5, !srcloc !181
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %shl) #5, !srcloc !181
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !179
  %and.i.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.cleanup_crit_edge, label %if.then.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 2) #5, !srcloc !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_write_config, %cleanup)) #5
          to label %if.then6.i.i [label %cleanup], !srcloc !182

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236, ptr noundef %20, ptr noundef nonnull @.str.52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i.i, %if.then.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 135, %entry.cleanup_crit_edge ], [ 134, %if.then.i.i ], [ 134, %if.then6.i.i ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixp4xx_pci_read_indirect(ptr nocapture noundef readonly %p, i32 noundef %addr, i32 noundef %cmd, ptr nocapture noundef writeonly %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %addr) #5, !srcloc !181
  %errata_hammer = getelementptr inbounds %struct.ixp4xx_pci, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %errata_hammer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %errata_hammer, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %cmd) #5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #5
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !179
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %cmd) #5, !srcloc !181
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.1 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.1) #5, !srcloc !179
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data, align 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.1 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.1) #5, !srcloc !179
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %cmd) #5, !srcloc !181
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.2 = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.2) #5, !srcloc !179
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data, align 4
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.2 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.2) #5, !srcloc !179
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %data, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %cmd) #5, !srcloc !181
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.3 = getelementptr i8, ptr %37, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.3) #5, !srcloc !179
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %data, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.3 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.3) #5, !srcloc !179
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data, align 4
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %cmd) #5, !srcloc !181
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.4 = getelementptr i8, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.4) #5, !srcloc !179
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %data, align 4
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.4 = getelementptr i8, ptr %51, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.4) #5, !srcloc !179
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %data, align 4
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %cmd) #5, !srcloc !181
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.5 = getelementptr i8, ptr %57, i32 12
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.5) #5, !srcloc !179
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %data, align 4
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.5 = getelementptr i8, ptr %61, i32 12
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.5) #5, !srcloc !179
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %data, align 4
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %cmd) #5, !srcloc !181
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.6 = getelementptr i8, ptr %67, i32 12
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.6) #5, !srcloc !179
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %data, align 4
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.6 = getelementptr i8, ptr %71, i32 12
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.6) #5, !srcloc !179
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %data, align 4
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %cmd) #5, !srcloc !181
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.7 = getelementptr i8, ptr %77, i32 12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.7) #5, !srcloc !179
  %79 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %data, align 4
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i19.7 = getelementptr i8, ptr %81, i32 12
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.7) #5, !srcloc !179
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %82, %for.body.preheader ], [ %8, %entry.if.end_crit_edge ]
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge, ptr %data, align 4
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 32
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !179
  %and.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ixp4xx_pci_check_master_abort.exit_crit_edge, label %if.then.i

if.end.ixp4xx_pci_check_master_abort.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixp4xx_pci_check_master_abort.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %88, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 2) #5, !srcloc !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ixp4xx_pci_read_indirect, %ixp4xx_pci_check_master_abort.exit)) #5
          to label %if.then6.i [label %ixp4xx_pci_check_master_abort.exit], !srcloc !182

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %p, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236, ptr noundef %90, ptr noundef nonnull @.str.52) #5
  br label %ixp4xx_pci_check_master_abort.exit

ixp4xx_pci_check_master_abort.exit:               ; preds = %if.then6.i, %if.then.i, %if.end.ixp4xx_pci_check_master_abort.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then6.i ], [ 0, %if.end.ixp4xx_pci_check_master_abort.exit_crit_edge ], [ -22, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_pci_ixp4xx__249_671_ixp4xx_pci_driver_init6, !1, !"__initcall__kmod_pci_ixp4xx__249_671_ixp4xx_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 671, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 666, i32 11}
!4 = !{ptr @ixp4xx_pci_driver, !5, !"ixp4xx_pci_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 664, i32 31}
!6 = !{ptr @ixp4xx_pci_of_match, !7, !"ixp4xx_pci_of_match", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 648, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 543, i32 34}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 545, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ixp4xx_pci_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ixp4xx_pci_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 554, i32 2}
!20 = !{ptr @ixp4xx_pci_probe._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ixp4xx_pci_probe._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 560, i32 4}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 580, i32 5}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ixp4xx_pci_probe._entry.13, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ixp4xx_pci_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 582, i32 5}
!33 = !{ptr @ixp4xx_pci_probe._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ixp4xx_pci_probe._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 593, i32 4}
!37 = !{ptr @ixp4xx_pci_probe._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ixp4xx_pci_probe._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 595, i32 4}
!41 = !{ptr @ixp4xx_pci_probe._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ixp4xx_pci_probe._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 606, i32 4}
!45 = !{ptr @ixp4xx_pci_probe._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ixp4xx_pci_probe._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 608, i32 4}
!49 = !{ptr @ixp4xx_pci_probe._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ixp4xx_pci_probe._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 617, i32 4}
!53 = !{ptr @ixp4xx_pci_probe._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ixp4xx_pci_probe._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 619, i32 4}
!57 = !{ptr @ixp4xx_pci_probe._entry.35, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ixp4xx_pci_probe._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 639, i32 3}
!61 = !{ptr @ixp4xx_pci_probe._entry.38, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ixp4xx_pci_probe._entry_ptr.40, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 641, i32 3}
!65 = !{ptr @ixp4xx_pci_probe._entry.41, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ixp4xx_pci_probe._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ixp4xx_pci_ops, !68, !"ixp4xx_pci_ops", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 366, i32 23}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 308, i32 2}
!71 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug242, !70, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 319, i32 3}
!76 = !{ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug243, !75, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 323, i32 3}
!79 = !{ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug244, !78, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 327, i32 3}
!82 = !{ptr @ixp4xx_pci_read_config.__UNIQUE_ID_ddebug245, !81, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 331, i32 3}
!85 = !{ptr @ixp4xx_pci_read_config._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ixp4xx_pci_read_config._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 141, i32 3}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ixp4xx_pci_check_master_abort.__UNIQUE_ID_ddebug236, !88, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 356, i32 2}
!93 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ixp4xx_pci_write_config.__UNIQUE_ID_ddebug246, !92, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!95 = !{ptr @ixp4xx_pci_abort_singleton, !96, !"ixp4xx_pci_abort_singleton", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 473, i32 27}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 485, i32 3}
!99 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ixp4xx_pci_abort_handler._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ixp4xx_pci_abort_handler._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 489, i32 2}
!104 = !{ptr @ixp4xx_pci_abort_handler._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ixp4xx_pci_abort_handler._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 498, i32 3}
!108 = !{ptr @ixp4xx_pci_abort_handler._entry.60, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ixp4xx_pci_abort_handler._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 505, i32 3}
!112 = !{ptr @ixp4xx_pci_abort_handler._entry.63, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ixp4xx_pci_abort_handler._entry_ptr.65, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 224, i32 2}
!116 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug237, !115, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!118 = distinct !{null, !119, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 234, i32 3}
!120 = !{ptr @ixp4xx_crp_read_config.__UNIQUE_ID_ddebug239, !121, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!121 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 238, i32 3}
!122 = distinct !{null, !123, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 242, i32 3}
!124 = !{ptr @ixp4xx_crp_read_config._entry, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 246, i32 3}
!126 = !{ptr @ixp4xx_crp_read_config._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 396, i32 16}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 398, i32 16}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 400, i32 3}
!133 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ixp4xx_pci_parse_map_ranges.__UNIQUE_ID_ddebug247, !132, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 403, i32 4}
!137 = !{ptr @ixp4xx_pci_parse_map_ranges._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ixp4xx_pci_parse_map_ranges._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 411, i32 3}
!141 = !{ptr @ixp4xx_pci_parse_map_ranges._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 420, i32 4}
!145 = !{ptr @ixp4xx_pci_parse_map_ranges._entry.76, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.78, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 424, i32 15}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 432, i32 3}
!151 = !{ptr @ixp4xx_pci_parse_map_ranges._entry.80, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ixp4xx_pci_parse_map_ranges._entry_ptr.82, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 453, i32 4}
!155 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ixp4xx_pci_parse_map_dma_ranges._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ixp4xx_pci_parse_map_dma_ranges._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 457, i32 3}
!160 = !{ptr @ixp4xx_pci_parse_map_dma_ranges.__UNIQUE_ID_ddebug248, !159, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 466, i32 3}
!163 = !{ptr @ixp4xx_pci_parse_map_dma_ranges._entry.86, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ixp4xx_pci_parse_map_dma_ranges._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/controller/pci-ixp4xx.c", i32 268, i32 2}
!167 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ixp4xx_crp_write_config.__UNIQUE_ID_ddebug241, !166, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{i64 701639}
!180 = !{i8 0, i8 2}
!181 = !{i64 701221}
!182 = !{i64 2148168378, i64 2148168383, i64 2148168396, i64 2148168440, i64 2148168474, i64 2148168495}
