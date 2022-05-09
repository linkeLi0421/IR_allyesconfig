; ModuleID = '/llk/IR_all_yes/drivers/usb/isp1760/isp1760-if.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@__initcall__kmod_isp1760__297_294_isp1760_init6 = internal global ptr @isp1760_init, section ".initcall6.init", align 4
@isp1760_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @isp1760_plat_probe, ptr @isp1760_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isp1760_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@isp1761_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @isp1760_plx, ptr @isp1761_pci_probe, ptr @isp1761_pci_remove, ptr null, ptr null, ptr @isp1761_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_isp1760_exit = internal global ptr @isp1760_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1760\00", [24 x i8] zeroinitializer }, align 32
@isp1760_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,usb-isp1763\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp,usb-isp1761\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp,usb-isp1763\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"analog-oc\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dack-polarity\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dreq-polarity\00", [18 x i8] zeroinitializer }, align 32
@isp1760_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013isp1760: no platform data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp1760_plat_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/isp1760/isp1760-if.c\00", [63 x i8] zeroinitializer }, align 32
@isp1760_plat_probe._entry_ptr = internal global ptr @isp1760_plat_probe._entry, section ".printk_index", align 4
@isp1760_plat_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ISP1760 USB device initialised\0A\00", [62 x i8] zeroinitializer }, align 32
@isp1760_plat_probe._entry_ptr.12 = internal global ptr @isp1760_plat_probe._entry.10, section ".printk_index", align 4
@isp1760_plx = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 21510, i32 4277, i32 36948, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013memory length for this resource is wrong\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1761_pci_init\00", [47 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr = internal global ptr @isp1761_pci_init._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ISP-PCI\00", [24 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.9, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013host controller already in use\0A\00", [62 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr.18 = internal global ptr @isp1761_pci_init._entry.16, section ".printk_index", align 4
@isp1761_pci_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.9, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Error ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr.21 = internal global ptr @isp1761_pci_init._entry.19, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@isp1761_pci_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.9, i32 93, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scratch register mismatch %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr.26 = internal global ptr @isp1761_pci_init._entry.22, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ISP1761 IO MEM\00", [17 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.9, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013request region #1\0A\00", [43 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr.30 = internal global ptr @isp1761_pci_init._entry.28, section ".printk_index", align 4
@isp1761_pci_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.9, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013ioremap #1\0A\00", [18 x i8] zeroinitializer }, align 32
@isp1761_pci_init._entry_ptr.33 = internal global ptr @isp1761_pci_init._entry.31, section ".printk_index", align 4
@isp1761_pci_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ips1761_pci_shutdown\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isp1761_pci_shutdown\00", [43 x i8] zeroinitializer }, align 32
@isp1761_pci_shutdown._entry_ptr = internal global ptr @isp1761_pci_shutdown._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"isp1760_plat_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 266, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"isp1761_pci_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 181, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 285, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"isp1760_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 257, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 209, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 212, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 219, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 228, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 231, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 234, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 237, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 245, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"isp1760_plx\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 168, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 45, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 49, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 50, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 93, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 101, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 102, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 108, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [36 x i8] c"../drivers/usb/isp1760/isp1760-if.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 165, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__exitcall_isp1760_exit, ptr @__initcall__kmod_isp1760__297_294_isp1760_init6, ptr @isp1760_exit, ptr @isp1760_plat_probe._entry, ptr @isp1760_plat_probe._entry.10, ptr @isp1760_plat_probe._entry_ptr, ptr @isp1760_plat_probe._entry_ptr.12, ptr @isp1761_pci_init._entry, ptr @isp1761_pci_init._entry.16, ptr @isp1761_pci_init._entry.19, ptr @isp1761_pci_init._entry.22, ptr @isp1761_pci_init._entry.28, ptr @isp1761_pci_init._entry.31, ptr @isp1761_pci_init._entry_ptr, ptr @isp1761_pci_init._entry_ptr.18, ptr @isp1761_pci_init._entry_ptr.21, ptr @isp1761_pci_init._entry_ptr.26, ptr @isp1761_pci_init._entry_ptr.30, ptr @isp1761_pci_init._entry_ptr.33, ptr @isp1761_pci_shutdown._entry, ptr @isp1761_pci_shutdown._entry_ptr, ptr @isp1760_plat_driver, ptr @isp1761_pci_driver, ptr @.str, ptr @isp1760_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @isp1760_plx, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_plat_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_plx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1761_pci_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @isp1760_init_kmem_once() #6
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @isp1760_plat_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @isp1761_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %0 = select i1 %tobool3.not, i1 true, i1 %tobool.not
  br i1 %0, label %entry.if.end8_crit_edge, label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @isp1760_deinit_kmem_cache() #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %any_ret.1 = phi i32 [ -19, %if.then7 ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %any_ret.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @isp1760_plat_driver) #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @isp1761_pci_driver) #6
  tail call void @isp1760_deinit_kmem_cache() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_deinit_kmem_cache() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_init_kmem_once() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_plat_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %bus_width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %call1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end.irq_get_trigger_type.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 15
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %and.i.i, %cond.true.i ], [ 0, %if.end.irq_get_trigger_type.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %irq_get_trigger_type.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_width) #6
  %6 = ptrtoint ptr %bus_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bus_width, align 4
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 64
  %call10 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %5, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %or13 = or i32 %spec.select, 512
  %devflags.1 = select i1 %tobool11.not, i32 %spec.select, i32 %or13
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %bus_width, i32 noundef 1, i32 noundef 0) #6
  %7 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_width, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.then3.if.end23_crit_edge [
    i32 16, label %if.then17
    i32 8, label %if.then20
  ]

if.then3.if.end23_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %devflags.1, 2
  br label %if.end23

if.then20:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %or21 = or i32 %devflags.1, 1024
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then17, %if.then3.if.end23_crit_edge
  %devflags.2 = phi i32 [ %or18, %if.then17 ], [ %or21, %if.then20 ], [ %devflags.1, %if.then3.if.end23_crit_edge ]
  %call25 = call i32 @usb_get_dr_mode(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 2
  %or28 = or i32 %devflags.2, 4
  %spec.select82 = select i1 %cmp26, i32 %or28, i32 %devflags.2
  %call.i83 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i83, null
  %or32 = or i32 %spec.select82, 8
  %devflags.4 = select i1 %tobool.i.not, i32 %spec.select82, i32 %or32
  %call.i84 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.i85.not = icmp eq ptr %call.i84, null
  %or36 = or i32 %devflags.4, 16
  %devflags.5 = select i1 %tobool.i85.not, i32 %devflags.4, i32 %or36
  %call.i86 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i87.not = icmp eq ptr %call.i86, null
  %or40 = or i32 %devflags.5, 32
  %devflags.6 = select i1 %tobool.i87.not, i32 %devflags.5, i32 %or40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width) #6
  %call46 = call i32 @isp1760_register(ptr noundef %call, i32 noundef %call1, i32 noundef %cond.i, ptr noundef %dev, i32 noundef %devflags.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end23.cleanup_crit_edge, label %do.end52

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.end52:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end52 ], [ -6, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call46, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_plat_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @isp1760_unregister(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1761_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %latency.i = alloca i8, align 1
  %limit.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %latency.i) #6
  %2 = ptrtoint ptr %latency.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %latency.i, align 1, !annotation !81
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %limit.i) #6
  %3 = ptrtoint ptr %limit.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %limit.i, align 1, !annotation !81
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cond.i)
  %cmp9.i = icmp ult i32 %cond.i, 65535
  br i1 %cmp9.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %isp1761_pci_init.exit.thread

if.end.i:                                         ; preds = %if.end2
  %call10.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond.i, ptr noundef nonnull @.str.15, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %isp1761_pci_init.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %call18.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond.i) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %do.end23.i, label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond.i) #6
  br label %isp1761_pci_init.exit.thread

if.end26.i:                                       ; preds = %if.end17.i
  %call27.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 13, ptr noundef nonnull %latency.i) #6
  %8 = ptrtoint ptr %latency.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %latency.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool28.not.i = icmp eq i8 %9, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end39.i_crit_edge, label %if.then29.i

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end26.i
  %call30.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 63, ptr noundef nonnull %limit.i) #6
  %10 = ptrtoint ptr %limit.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %limit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool31.not.i = icmp eq i8 %11, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.end39.i_crit_edge, label %land.lhs.true.i

if.then29.i.if.end39.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.then29.i
  %12 = ptrtoint ptr %latency.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %latency.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp34.i = icmp ult i8 %11, %13
  br i1 %cmp34.i, label %if.then36.i, label %land.lhs.true.i.if.end39.i_crit_edge

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 13, i8 noundef zeroext %11) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %land.lhs.true.i.if.end39.i_crit_edge, %if.then29.i.if.end39.i_crit_edge, %if.end26.i.if.end39.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call18.i, i32 776
  br label %do.body43.i

do.body43.i:                                      ; preds = %do.body43.i.do.body43.i_crit_edge, %if.end39.i
  %retry_count.0152.i = phi i32 [ 20, %if.end39.i ], [ %dec.i, %do.body43.i.do.body43.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -822476800) #6, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 21474800) #6
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %16 = and i32 %15, -65536
  %dec.i = add nsw i32 %retry_count.0152.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822476800, i32 %16)
  %cmp40.not.i = icmp eq i32 %16, -822476800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool42.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp40.not.i, i1 true, i1 %tobool42.not.i
  br i1 %or.cond.i, label %while.end.i, label %do.body43.i.do.body43.i_crit_edge

do.body43.i.do.body43.i_crit_edge:                ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

while.end.i:                                      ; preds = %do.body43.i
  call void @iounmap(ptr noundef nonnull %call18.i) #6
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %cond.i) #6
  br i1 %cmp40.not.i, label %if.end57.i, label %do.end55.i

do.end55.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call i32 @llvm.bswap.i32(i32 %16) #6
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.23, i32 noundef %17) #9
  br label %isp1761_pci_init.exit.thread

if.end57.i:                                       ; preds = %while.end.i
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource.i, align 8
  %end63.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %20 = ptrtoint ptr %end63.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp64.i = icmp eq i32 %21, 0
  %sub74.i = sub i32 1, %19
  %add75.i = add i32 %sub74.i, %21
  %cond77.i = select i1 %cmp64.i, i32 0, i32 %add75.i
  %call78.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %cond77.i, ptr noundef nonnull @.str.27, i32 noundef 0) #6
  %tobool79.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool79.not.i, label %do.end83.i, label %if.end86.i

do.end83.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %isp1761_pci_init.exit.thread

if.end86.i:                                       ; preds = %if.end57.i
  %call87.i = call ptr @ioremap(i32 noundef %19, i32 noundef %cond77.i) #6
  %tobool88.not.i = icmp eq ptr %call87.i, null
  br i1 %tobool88.not.i, label %do.end92.i, label %if.end6

do.end92.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %cond77.i) #6
  br label %isp1761_pci_init.exit.thread

isp1761_pci_init.exit.thread:                     ; preds = %do.end92.i, %do.end83.i, %do.end55.i, %do.end23.i, %do.end14.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -16, %do.end14.i ], [ -12, %do.end23.i ], [ -16, %do.end83.i ], [ -12, %do.end92.i ], [ -12, %do.end55.i ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limit.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %latency.i) #6
  br label %error

if.end6:                                          ; preds = %if.end86.i
  %add.ptr98.i = getelementptr i8, ptr %call87.i, i32 104
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.i) #6, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %23 = or i32 %22, 589824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %23) #6, !srcloc !83
  call void @iounmap(ptr noundef nonnull %call87.i) #6
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %cond77.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limit.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %latency.i) #6
  call void @pci_set_master(ptr noundef %dev) #6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call9 = call i32 @isp1760_register(ptr noundef %arrayidx.i, i32 noundef %25, i32 noundef 0, ptr noundef %dev8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.error_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end6.error_crit_edge, %isp1761_pci_init.exit.thread
  %ret.0 = phi i32 [ %call9, %if.end6.error_crit_edge ], [ %retval.0.i.ph, %isp1761_pci_init.exit.thread ]
  call void @pci_disable_device(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1761_pci_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @isp1760_unregister(ptr noundef %dev1) #6
  tail call void @pci_disable_device(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1761_pci_shutdown(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_isp1760__297_294_isp1760_init6, !1, !"__initcall__kmod_isp1760__297_294_isp1760_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_isp1760_exit, !3, !"__exitcall_isp1760_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 304, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 285, i32 8}
!6 = !{ptr @isp1760_plat_driver, !7, !"isp1760_plat_driver", i1 false, i1 false}
!7 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 266, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 209, i32 35}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 212, i32 35}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 219, i32 28}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 228, i32 33}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 231, i32 33}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 234, i32 33}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 237, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @isp1760_plat_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @isp1760_plat_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 245, i32 2}
!28 = !{ptr @isp1760_plat_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @isp1760_plat_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @isp1760_of_match, !31, !"isp1760_of_match", i1 false, i1 false}
!31 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 257, i32 34}
!32 = !{ptr @isp1761_pci_driver, !33, !"isp1761_pci_driver", i1 false, i1 false}
!33 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 181, i32 26}
!34 = !{ptr @isp1760_plx, !35, !"isp1760_plx", i1 false, i1 false}
!35 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 168, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 45, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @isp1761_pci_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @isp1761_pci_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 49, i32 7}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 50, i32 3}
!45 = !{ptr @isp1761_pci_init._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @isp1761_pci_init._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 57, i32 3}
!49 = !{ptr @isp1761_pci_init._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @isp1761_pci_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 93, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @isp1761_pci_init._entry.22, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @isp1761_pci_init._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 101, i32 7}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 102, i32 3}
!61 = !{ptr @isp1761_pci_init._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @isp1761_pci_init._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 108, i32 3}
!65 = !{ptr @isp1761_pci_init._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @isp1761_pci_init._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/isp1760/isp1760-if.c", i32 165, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @isp1761_pci_shutdown._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @isp1761_pci_shutdown._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2155747302}
!83 = !{i64 4365269}
!84 = !{i64 4365687}
!85 = !{i64 2155748511}
!86 = !{i64 2155753970}
!87 = !{i64 2155754190}
