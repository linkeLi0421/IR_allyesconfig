; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/pd6729.c_pt.bc'
source_filename = "../drivers/pcmcia/pd6729.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_resource_ops = type opaque
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pccard_io_map = type { i8, i8, i16, i32, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pd6729_socket = type { i32, i32, i32, %struct.pcmcia_socket, %struct.timer_list }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }

@__UNIQUE_ID_file236 = internal constant [34 x i8] c"pd6729.file=drivers/pcmcia/pd6729\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [19 x i8] c"pd6729.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [66 x i8] c"pd6729.description=Driver for the Cirrus PD6729 PCI-PCMCIA bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [51 x i8] c"pd6729.author=Jun Komuro <komurojun-mbn@nifty.com>\00", section ".modinfo", align 1
@__param_str_irq_mode = internal constant [16 x i8] c"pd6729.irq_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irq_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_irq_mode = internal constant %struct.kernel_param { ptr @__param_str_irq_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @irq_mode } }, section "__param", align 4
@__UNIQUE_ID_irq_modetype240 = internal constant [29 x i8] c"pd6729.parmtype=irq_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_mode241 = internal constant [77 x i8] c"pd6729.parm=irq_mode:interrupt delivery mode. 0 = ISA, 1 = PCI. default is 1\00", section ".modinfo", align 1
@__initcall__kmod_pd6729__253_777_pd6729_pci_driver_init6 = internal global ptr @pd6729_pci_driver_init, section ".initcall6.init", align 4
@pd6729_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pd6729_pci_ids, ptr @pd6729_pci_probe, ptr @pd6729_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pd6729_pci_driver_exit = internal global ptr @pd6729_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pd6729\00", [25 x i8] zeroinitializer }, align 32
@pd6729_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4115, i32 4352, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to kzalloc socket.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pd6729_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pcmcia/pd6729.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr = internal global ptr @pd6729_pci_probe._entry, section ".printk_index", align 4
@pd6729_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable pci_device.\0A\00", [34 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.8 = internal global ptr @pd6729_pci_probe._entry.6, section ".printk_index", align 4
@pd6729_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 646, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"refusing to load the driver as the io_base is NULL.\0A\00", [43 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.11 = internal global ptr @pd6729_pci_probe._entry.9, section ".printk_index", align 4
@pd6729_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 653, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cirrus PD6729 PCI to PCMCIA Bridge at 0x%llx on irq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.15 = internal global ptr @pd6729_pci_probe._entry.12, section ".printk_index", align 4
@pd6729_pci_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pd6729: Enabling PCI_COMMAND_MEMORY.\0A\00", [58 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci request region failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.19 = internal global ptr @pd6729_pci_probe._entry.17, section ".printk_index", align 4
@pd6729_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no ISA interrupt is available.\0A\00", [32 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.22 = internal global ptr @pd6729_pci_probe._entry.20, section ".printk_index", align 4
@pd6729_operations = internal global { %struct.pccard_operations, [40 x i8] } { %struct.pccard_operations { ptr @pd6729_init, ptr null, ptr @pd6729_get_status, ptr @pd6729_set_socket, ptr @pd6729_set_io_map, ptr @pd6729_set_mem_map }, [40 x i8] zeroinitializer }, align 32
@pccard_nonstatic_ops = external dso_local global %struct.pccard_resource_ops, align 1
@pd6729_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 705, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.26 = internal global ptr @pd6729_pci_probe._entry.23, section ".printk_index", align 4
@pd6729_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&socket->poll_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pd6729_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pcmcia_register_socket failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@pd6729_pci_probe._entry_ptr.30 = internal global ptr @pd6729_pci_probe._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pd6729_isa_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pd6729: PCI card interrupts, PCI status changes\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pd6729_isa_scan\00", [16 x i8] zeroinitializer }, align 32
@pd6729_isa_scan._entry_ptr = internal global ptr @pd6729_isa_scan._entry, section ".printk_index", align 4
@pd6729_isa_scan._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016pd6729: ISA irqs = \00", [42 x i8] zeroinitializer }, align 32
@pd6729_isa_scan._entry_ptr.35 = internal global ptr @pd6729_isa_scan._entry.33, section ".printk_index", align 4
@pd6729_isa_scan._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@pd6729_isa_scan._entry_ptr.38 = internal global ptr @pd6729_isa_scan._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pd6729_isa_scan._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none!\00", [26 x i8] zeroinitializer }, align 32
@pd6729_isa_scan._entry_ptr.43 = internal global ptr @pd6729_isa_scan._entry.41, section ".printk_index", align 4
@pd6729_isa_scan._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.3, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  polling status changes.\0A\00", [37 x i8] zeroinitializer }, align 32
@pd6729_isa_scan._entry_ptr.46 = internal global ptr @pd6729_isa_scan._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@__const.pd6729_init.res = private unnamed_addr constant %struct.resource { i32 0, i32 4095, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, align 4
@__const.pd6729_init.io = private unnamed_addr constant %struct.pccard_io_map { i8 0, i8 0, i16 0, i32 0, i32 1 }, align 4
@dead_socket = external dso_local global %struct.socket_state_t, align 4
@port_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port_lock\00", [22 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pd6729_set_socket\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Auto power\0A\00", [20 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Power Enabled\0A\00", [17 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.52, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setting voltage to Vcc to 3.3V on socket %i\0A\00", [51 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.53, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setting voltage to Vcc to 5V on socket %i\0A\00", [53 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.54, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pd6729_set_socket called with invalid VCC power value: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.55, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not setting Vpp on socket %i\0A\00", [34 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.56, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting Vpp to Vcc for socket %i\0A\00", [62 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.57, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting Vpp to 12.0\0A\00", [43 x i8] zeroinitializer }, align 32
@pd6729_set_socket.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.58, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pd6729: pd6729_set_socket called with invalid VPP power value: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@pd6729_set_io_map.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pd6729_set_io_map\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pd6729_set_io_map with invalid map\0A\00", [60 x i8] zeroinitializer }, align 32
@pd6729_set_mem_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid map requested\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pd6729_set_mem_map\00", [45 x i8] zeroinitializer }, align 32
@pd6729_set_mem_map._entry_ptr = internal global ptr @pd6729_set_mem_map._entry, section ".printk_index", align 4
@pd6729_set_mem_map._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid invalid address / speed\0A\00", [63 x i8] zeroinitializer }, align 32
@pd6729_set_mem_map._entry_ptr.65 = internal global ptr @pd6729_set_mem_map._entry.63, section ".printk_index", align 4
@pd6729_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pd6729: infinite eventloop in interrupt\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pd6729_interrupt\00", [47 x i8] zeroinitializer }, align 32
@pd6729_interrupt._entry_ptr = internal global ptr @pd6729_interrupt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 33, i64 50]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 33, i64 50, i64 120]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"irq_mode\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 51, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"pd6729_pci_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 770, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 777, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"pd6729_pci_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 764, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 634, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 640, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 645, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 651, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 660, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 667, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 676, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"pd6729_operations\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 565, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 704, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 710, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 717, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 598, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 610, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 613, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 616, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 618, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 583, i32 57 }
@___asan_gen_.202 = private unnamed_addr constant [10 x i8] c"port_lock\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 57, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 322, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 326, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 334, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 341, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 348, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 356, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 361, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 366, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 370, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 433, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 476, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 481, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [27 x i8] c"../drivers/pcmcia/pd6729.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 184, i32 4 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_irq_mode241, ptr @__UNIQUE_ID_irq_modetype240, ptr @__UNIQUE_ID_license237, ptr @__exitcall_pd6729_pci_driver_exit, ptr @__initcall__kmod_pd6729__253_777_pd6729_pci_driver_init6, ptr @__param_irq_mode, ptr @pd6729_interrupt._entry, ptr @pd6729_interrupt._entry_ptr, ptr @pd6729_isa_scan._entry, ptr @pd6729_isa_scan._entry.33, ptr @pd6729_isa_scan._entry.36, ptr @pd6729_isa_scan._entry.41, ptr @pd6729_isa_scan._entry.44, ptr @pd6729_isa_scan._entry_ptr, ptr @pd6729_isa_scan._entry_ptr.35, ptr @pd6729_isa_scan._entry_ptr.38, ptr @pd6729_isa_scan._entry_ptr.43, ptr @pd6729_isa_scan._entry_ptr.46, ptr @pd6729_pci_driver_exit, ptr @pd6729_pci_probe._entry, ptr @pd6729_pci_probe._entry.12, ptr @pd6729_pci_probe._entry.17, ptr @pd6729_pci_probe._entry.20, ptr @pd6729_pci_probe._entry.23, ptr @pd6729_pci_probe._entry.28, ptr @pd6729_pci_probe._entry.6, ptr @pd6729_pci_probe._entry.9, ptr @pd6729_pci_probe._entry_ptr, ptr @pd6729_pci_probe._entry_ptr.11, ptr @pd6729_pci_probe._entry_ptr.15, ptr @pd6729_pci_probe._entry_ptr.19, ptr @pd6729_pci_probe._entry_ptr.22, ptr @pd6729_pci_probe._entry_ptr.26, ptr @pd6729_pci_probe._entry_ptr.30, ptr @pd6729_pci_probe._entry_ptr.8, ptr @pd6729_set_mem_map._entry, ptr @pd6729_set_mem_map._entry.63, ptr @pd6729_set_mem_map._entry_ptr, ptr @pd6729_set_mem_map._entry_ptr.65, ptr @irq_mode, ptr @pd6729_pci_driver, ptr @.str, ptr @pd6729_pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @pd6729_operations, ptr @.str.24, ptr @.str.25, ptr @pd6729_pci_probe.__key, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @port_lock, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_operations to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_isa_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_isa_scan._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_isa_scan._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_isa_scan._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_isa_scan._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_set_mem_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_set_mem_map._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pd6729_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pd6729_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pd6729_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pd6729_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %configbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %configbyte) #8
  %0 = ptrtoint ptr %configbyte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %configbyte, align 1, !annotation !152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 3184) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.7) #12
  br label %err_out_free_mem

if.end9:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool10.not, label %do.end14, label %do.end19

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.10) #12
  br label %err_out_disable

do.end19:                                         ; preds = %if.end9
  %conv = zext i32 %3 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.13, i64 noundef %conv, i32 noundef %5) #12
  %call24 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %configbyte) #8
  %6 = ptrtoint ptr %configbyte to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %configbyte, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %do.body28, label %do.end19.if.end41_crit_edge

do.end19.if.end41_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body28:                                        ; preds = %do.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_pci_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_pci_probe, %if.then33)) #8
          to label %do.end37 [label %if.then33], !srcloc !153

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_pci_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev15, ptr noundef nonnull @.str.16) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body28
  %9 = ptrtoint ptr %configbyte to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %configbyte, align 1
  %11 = or i8 %10, 2
  store i8 %11, ptr %configbyte, align 1
  %call40 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 4, i8 noundef zeroext %11) #8
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %do.end19.if.end41_crit_edge
  %call42 = call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.18) #12
  br label %err_out_disable

if.end49:                                         ; preds = %if.end41
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp eq i32 %13, -1
  br i1 %cmp, label %if.end53.thread, label %if.end53

if.end53.thread:                                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr @irq_mode, align 4
  br label %for.body.i.preheader

if.end53:                                         ; preds = %if.end49
  %.pr = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 1
  br i1 %phi.cmp, label %if.end53.pd6729_isa_scan.exit_crit_edge, label %if.end53.for.body.i.preheader_crit_edge

if.end53.for.body.i.preheader_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.end53.pd6729_isa_scan.exit_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %pd6729_isa_scan.exit

for.body.i.preheader:                             ; preds = %if.end53.for.body.i.preheader_crit_edge, %if.end53.thread
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %mask.065.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw nsw i32 1, %i.063.i
  %and.i = and i32 %shl.i, 3768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %i.063.i, ptr noundef nonnull @pd6729_test, ptr noundef null, i32 noundef 256, ptr noundef nonnull @.str.47, ptr noundef nonnull @pd6729_test) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %14, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

14:                                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call ptr @free_irq(i32 noundef %i.063.i, ptr noundef nonnull @pd6729_test) #8
  %or61.i = or i32 %shl.i, %mask.065.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %14, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %mask.065.i, %for.body.i.for.inc.i_crit_edge ], [ %or61.i, %14 ], [ %mask.065.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %do.end9.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end9.i:                                        ; preds = %for.inc.i
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc28.i.for.body14.i_crit_edge, %do.end9.i
  %i.166.i = phi i32 [ 0, %do.end9.i ], [ %inc29.i, %for.inc28.i.for.body14.i_crit_edge ]
  %shl15.i = shl nuw nsw i32 1, %i.166.i
  %and16.i = and i32 %shl15.i, %mask.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.body14.i.for.inc28.i_crit_edge, label %do.end21.i

for.body14.i.for.inc28.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i

do.end21.i:                                       ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %shl15.i, -1
  %and24.i = and i32 %sub.i, %mask.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond.i = select i1 %tobool25.not.i, ptr @.str.40, ptr @.str.39
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %cond.i, i32 noundef %i.166.i) #12
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %do.end21.i, %for.body14.i.for.inc28.i_crit_edge
  %inc29.i = add nuw nsw i32 %i.166.i, 1
  %exitcond68.not.i = icmp eq i32 %inc29.i, 16
  br i1 %exitcond68.not.i, label %for.end30.i, label %for.inc28.i.for.body14.i_crit_edge

for.inc28.i.for.body14.i_crit_edge:               ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i

for.end30.i:                                      ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.i)
  %cmp31.i = icmp eq i32 %mask.1.i, 0
  %.str.42..str.45.i = select i1 %cmp31.i, ptr @.str.42, ptr @.str.45
  br label %pd6729_isa_scan.exit

pd6729_isa_scan.exit:                             ; preds = %for.end30.i, %if.end53.pd6729_isa_scan.exit_crit_edge
  %.str.42.sink.i = phi ptr [ @.str.31, %if.end53.pd6729_isa_scan.exit_crit_edge ], [ %.str.42..str.45.i, %for.end30.i ]
  %retval.0.i230 = phi i32 [ 0, %if.end53.pd6729_isa_scan.exit_crit_edge ], [ %mask.1.i, %for.end30.i ]
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink.i) #12
  %15 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp55 = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i230)
  %cmp57 = icmp eq i32 %retval.0.i230, 0
  %or.cond = select i1 %cmp55, i1 %cmp57, i1 false
  br i1 %or.cond, label %do.end62, label %for.cond.preheader

for.cond.preheader:                               ; preds = %pd6729_isa_scan.exit
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %io_base = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %io_base, align 8
  %socket72 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3
  %features = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 16
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features, align 4
  %or73 = or i32 %22, 16385
  store i32 %or73, ptr %features, align 4
  %map_size = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 18
  %23 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096, ptr %map_size, align 4
  %irq_mask = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 17
  %24 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i230, ptr %irq_mask, align 8
  %pci_irq = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 20
  %25 = ptrtoint ptr %pci_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %19, ptr %pci_irq, align 4
  %cb_dev = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 21
  %26 = ptrtoint ptr %cb_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %cb_dev, align 8
  %27 = ptrtoint ptr %socket72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %socket72, align 8
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %call7.i.i.i, align 8
  %ops = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 23
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pd6729_operations, ptr %ops, align 8
  %resource_ops = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %resource_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pccard_nonstatic_ops, ptr %resource_ops, align 4
  %parent = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 42, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev15, ptr %parent, align 8
  %driver_data = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 3, i32 43
  %32 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i, ptr %driver_data, align 8
  %arrayidx70.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1
  %io_base.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 2
  %33 = ptrtoint ptr %io_base.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %17, ptr %io_base.1, align 8
  %socket72.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3
  %features.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 16
  %34 = ptrtoint ptr %features.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %features.1, align 4
  %or73.1 = or i32 %35, 16385
  store i32 %or73.1, ptr %features.1, align 4
  %map_size.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 18
  %36 = ptrtoint ptr %map_size.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4096, ptr %map_size.1, align 4
  %irq_mask.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 17
  %37 = ptrtoint ptr %irq_mask.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i230, ptr %irq_mask.1, align 8
  %pci_irq.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 20
  %38 = ptrtoint ptr %pci_irq.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %19, ptr %pci_irq.1, align 4
  %cb_dev.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 21
  %39 = ptrtoint ptr %cb_dev.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %cb_dev.1, align 8
  %40 = ptrtoint ptr %socket72.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %socket72.1, align 8
  %41 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %arrayidx70.1, align 8
  %ops.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 23
  %42 = ptrtoint ptr %ops.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pd6729_operations, ptr %ops.1, align 8
  %resource_ops.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 24
  %43 = ptrtoint ptr %resource_ops.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pccard_nonstatic_ops, ptr %resource_ops.1, align 4
  %parent.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 42, i32 1
  %44 = ptrtoint ptr %parent.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev15, ptr %parent.1, align 8
  %driver_data.1 = getelementptr %struct.pd6729_socket, ptr %call7.i.i.i, i32 1, i32 3, i32 43
  %45 = ptrtoint ptr %driver_data.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx70.1, ptr %driver_data.1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp97 = icmp eq i32 %15, 1
  br i1 %cmp97, label %if.then99, label %do.body110

do.end62:                                         ; preds = %pd6729_isa_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.21) #12
  br label %err_out_free_res

if.then99:                                        ; preds = %for.cond.preheader
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %48, ptr noundef nonnull @pd6729_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool102.not = icmp eq i32 %call.i, 0
  br i1 %tobool102.not, label %if.then99.if.end115_crit_edge, label %do.end106

if.then99.if.end115_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.end106:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.24, i32 noundef %50) #12
  br label %err_out_free_res

do.body110:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %poll_timer = getelementptr inbounds %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 4
  call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @pd6729_interrupt_wrapper, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @pd6729_pci_probe.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %51, 100
  %call114 = call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #8
  br label %if.end115

if.end115:                                        ; preds = %do.body110, %if.then99.if.end115_crit_edge
  %call122 = call i32 @pcmcia_register_socket(ptr noundef %socket72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %for.inc139, label %do.end127

do.end127:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.29) #12
  br label %err_out_free_res2

for.body132.lr.ph:                                ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.29) #12
  call void @pcmcia_unregister_socket(ptr noundef %socket72) #8
  br label %err_out_free_res2

for.inc139:                                       ; preds = %if.end115
  %call122.1 = call i32 @pcmcia_register_socket(ptr noundef %socket72.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.1)
  %tobool123.not.1 = icmp eq i32 %call122.1, 0
  br i1 %tobool123.not.1, label %for.inc139.cleanup_crit_edge, label %for.body132.lr.ph

for.inc139.cleanup_crit_edge:                     ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_out_free_res2:                                ; preds = %for.body132.lr.ph, %do.end127
  %call122.lcssa239 = phi i32 [ %call122, %do.end127 ], [ %call122.1, %for.body132.lr.ph ]
  %52 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp142 = icmp eq i32 %52, 1
  br i1 %cmp142, label %if.then144, label %if.else147

if.then144:                                       ; preds = %err_out_free_res2
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %call146 = call ptr @free_irq(i32 noundef %54, ptr noundef nonnull %call7.i.i.i) #8
  br label %err_out_free_res

if.else147:                                       ; preds = %err_out_free_res2
  call void @__sanitizer_cov_trace_pc() #10
  %poll_timer148 = getelementptr inbounds %struct.pd6729_socket, ptr %call7.i.i.i, i32 0, i32 4
  %call149 = call i32 @del_timer_sync(ptr noundef %poll_timer148) #8
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %if.else147, %if.then144, %do.end106, %do.end62
  %ret.0 = phi i32 [ -19, %do.end62 ], [ %call.i, %do.end106 ], [ %call122.lcssa239, %if.then144 ], [ %call122.lcssa239, %if.else147 ]
  call void @pci_release_regions(ptr noundef %dev) #8
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_free_res, %do.end47, %do.end14
  %ret.1 = phi i32 [ %call42, %do.end47 ], [ %ret.0, %err_out_free_res ], [ -12, %do.end14 ]
  call void @pci_disable_device(ptr noundef %dev) #8
  br label %err_out_free_mem

err_out_free_mem:                                 ; preds = %err_out_disable, %do.end7
  %ret.2 = phi i32 [ %call2, %do.end7 ], [ %ret.1, %err_out_disable ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_mem, %for.inc139.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %err_out_free_mem ], [ -12, %do.end ], [ 0, %for.inc139.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %configbyte) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd6729_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %.tr.i = trunc i32 %3 to i8
  %4 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %4, 5
  %io_base.i = getelementptr %struct.pd6729_socket, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %6, 1048575
  %add11.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv6.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i = add i32 %6, 1
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %8 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %call2.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %.tr.i20 = trunc i32 %10 to i8
  %11 = shl i8 %.tr.i20, 6
  %conv6.i21 = or i8 %11, 3
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i24 = and i32 %13, 1048575
  %add11.i25 = or i32 %and.i24, -18874368
  %14 = inttoptr i32 %add11.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv6.i21) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i26 = add i32 %13, 1
  %and17.i27 = and i32 %add16.i26, 1048575
  %add18.i28 = or i32 %and17.i27, -18874368
  %15 = inttoptr i32 %add18.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i19) #8
  %socket3 = getelementptr %struct.pd6729_socket, ptr %1, i32 0, i32 3
  tail call void @pcmcia_unregister_socket(ptr noundef %socket3) #8
  %arrayidx.1 = getelementptr %struct.pd6729_socket, ptr %1, i32 1
  %call2.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 8
  %.tr.i.1 = trunc i32 %17 to i8
  %18 = shl i8 %.tr.i.1, 6
  %conv6.i.1 = or i8 %18, 5
  %io_base.i.1 = getelementptr %struct.pd6729_socket, ptr %1, i32 1, i32 2
  %19 = ptrtoint ptr %io_base.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_base.i.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i.1 = and i32 %20, 1048575
  %add11.i.1 = or i32 %and.i.1, -18874368
  %21 = inttoptr i32 %add11.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv6.i.1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i.1 = add i32 %20, 1
  %and17.i.1 = and i32 %add16.i.1, 1048575
  %add18.i.1 = or i32 %and17.i.1, -18874368
  %22 = inttoptr i32 %add18.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i.1) #8
  %call2.i19.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 8
  %.tr.i20.1 = trunc i32 %24 to i8
  %25 = shl i8 %.tr.i20.1, 6
  %conv6.i21.1 = or i8 %25, 3
  %26 = ptrtoint ptr %io_base.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_base.i.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i24.1 = and i32 %27, 1048575
  %add11.i25.1 = or i32 %and.i24.1, -18874368
  %28 = inttoptr i32 %add11.i25.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv6.i21.1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i26.1 = add i32 %27, 1
  %and17.i27.1 = and i32 %add16.i26.1, 1048575
  %add18.i28.1 = or i32 %and17.i27.1, -18874368
  %29 = inttoptr i32 %add18.i28.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i19.1) #8
  %socket3.1 = getelementptr %struct.pd6729_socket, ptr %1, i32 1, i32 3
  tail call void @pcmcia_unregister_socket(ptr noundef %socket3.1) #8
  %30 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp4 = icmp eq i32 %30, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %1) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %poll_timer = getelementptr inbounds %struct.pd6729_socket, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @del_timer_sync(ptr noundef %poll_timer) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @pci_disable_device(ptr noundef %dev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_interrupt(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr %struct.pd6729_socket, ptr %dev, i32 0, i32 2
  %socket34 = getelementptr %struct.pd6729_socket, ptr %dev, i32 0, i32 3
  %arrayidx.1 = getelementptr %struct.pd6729_socket, ptr %dev, i32 1
  %io_base.i.1 = getelementptr %struct.pd6729_socket, ptr %dev, i32 1, i32 2
  %socket34.1 = getelementptr %struct.pd6729_socket, ptr %dev, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %cleanup.1.while.cond_crit_edge, %entry
  %loopcount.0 = phi i32 [ 0, %entry ], [ %inc, %cleanup.1.while.cond_crit_edge ]
  %handled.0 = phi i32 [ 0, %entry ], [ %handled.2.1, %cleanup.1.while.cond_crit_edge ]
  %inc = add nuw nsw i32 %loopcount.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %loopcount.0)
  %exitcond = icmp eq i32 %loopcount.0, 20
  br i1 %exitcond, label %do.end, label %for.body

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %while.end

for.body:                                         ; preds = %while.cond
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %.tr.i = trunc i32 %1 to i8
  %2 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %2, 4
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %4, 1048575
  %add11.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv6.i) #8, !srcloc !155
  %add13.i = add i32 %4, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %6 = inttoptr i32 %add15.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp3 = icmp eq i8 %7, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %call2.i70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev, align 8
  %.tr.i71 = trunc i32 %9 to i8
  %10 = shl i8 %.tr.i71, 6
  %conv6.i72 = or i8 %10, 3
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i75 = and i32 %12, 1048575
  %add11.i76 = or i32 %and.i75, -18874368
  %13 = inttoptr i32 %add11.i76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv6.i72) #8, !srcloc !155
  %add13.i77 = add i32 %12, 1
  %and14.i78 = and i32 %add13.i77, 1048575
  %add15.i79 = or i32 %and14.i78, -18874368
  %14 = inttoptr i32 %add15.i79 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i70) #8
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %trunc = zext i8 %7 to i11
  %rev = tail call i11 @llvm.bitreverse.i11(i11 %trunc)
  %mask = and i11 %rev, -896
  %or17 = zext i11 %mask to i32
  br label %if.end30

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and = shl nuw nsw i32 %conv, 4
  %or29 = and i32 %and, 240
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then14
  %events.1 = phi i32 [ %or17, %if.then14 ], [ %or29, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.1)
  %tobool31.not = icmp eq i32 %events.1, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcmcia_parse_events(ptr noundef %socket34, i32 noundef %events.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %handled.2 = phi i32 [ %handled.0, %for.body.cleanup_crit_edge ], [ 1, %if.then32 ], [ 1, %if.end30.cleanup_crit_edge ]
  %active.1 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ %events.1, %if.then32 ], [ %events.1, %if.end30.cleanup_crit_edge ]
  %call2.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 8
  %.tr.i.1 = trunc i32 %18 to i8
  %19 = shl i8 %.tr.i.1, 6
  %conv6.i.1 = or i8 %19, 4
  %20 = ptrtoint ptr %io_base.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i.1 = and i32 %21, 1048575
  %add11.i.1 = or i32 %and.i.1, -18874368
  %22 = inttoptr i32 %add11.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv6.i.1) #8, !srcloc !155
  %add13.i.1 = add i32 %21, 1
  %and14.i.1 = and i32 %add13.i.1, 1048575
  %add15.i.1 = or i32 %and14.i.1, -18874368
  %23 = inttoptr i32 %add15.i.1 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i.1) #8
  %conv.1 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp3.1 = icmp eq i8 %24, 0
  br i1 %cmp3.1, label %cleanup.cleanup.1_crit_edge, label %if.end6.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end6.1:                                        ; preds = %cleanup
  %call2.i70.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 8
  %.tr.i71.1 = trunc i32 %26 to i8
  %27 = shl i8 %.tr.i71.1, 6
  %conv6.i72.1 = or i8 %27, 3
  %28 = ptrtoint ptr %io_base.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_base.i.1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i75.1 = and i32 %29, 1048575
  %add11.i76.1 = or i32 %and.i75.1, -18874368
  %30 = inttoptr i32 %add11.i76.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv6.i72.1) #8, !srcloc !155
  %add13.i77.1 = add i32 %29, 1
  %and14.i78.1 = and i32 %add13.i77.1, 1048575
  %add15.i79.1 = or i32 %and14.i78.1, -18874368
  %31 = inttoptr i32 %add15.i79.1 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i70.1) #8
  %33 = and i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not.1 = icmp eq i8 %33, 0
  br i1 %tobool13.not.1, label %if.else.1, label %if.then14.1

if.then14.1:                                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  %trunc.1 = zext i8 %24 to i11
  %rev.1 = tail call i11 @llvm.bitreverse.i11(i11 %trunc.1)
  %mask.1 = and i11 %rev.1, -896
  %or17.1 = zext i11 %mask.1 to i32
  br label %if.end30.1

if.else.1:                                        ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  %and.1 = shl nuw nsw i32 %conv.1, 4
  %or29.1 = and i32 %and.1, 240
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.else.1, %if.then14.1
  %events.1.1 = phi i32 [ %or17.1, %if.then14.1 ], [ %or29.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.1.1)
  %tobool31.not.1 = icmp eq i32 %events.1.1, 0
  br i1 %tobool31.not.1, label %if.end30.1.if.end35.1_crit_edge, label %if.then32.1

if.end30.1.if.end35.1_crit_edge:                  ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.1

if.then32.1:                                      ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcmcia_parse_events(ptr noundef %socket34.1, i32 noundef %events.1.1) #8
  br label %if.end35.1

if.end35.1:                                       ; preds = %if.then32.1, %if.end30.1.if.end35.1_crit_edge
  %or36.1 = or i32 %events.1.1, %active.1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end35.1, %cleanup.cleanup.1_crit_edge
  %handled.2.1 = phi i32 [ 1, %if.end35.1 ], [ %handled.2, %cleanup.cleanup.1_crit_edge ]
  %active.1.1 = phi i32 [ %or36.1, %if.end35.1 ], [ %active.1, %cleanup.cleanup.1_crit_edge ]
  %cmp38 = icmp eq i32 %active.1.1, 0
  br i1 %cmp38, label %cleanup.1.while.end_crit_edge, label %cleanup.1.while.cond_crit_edge

cleanup.1.while.cond_crit_edge:                   ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

cleanup.1.while.end_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.1.while.end_crit_edge, %do.end
  %handled.3 = phi i32 [ %handled.0, %do.end ], [ %handled.2.1, %cleanup.1.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.3)
  %tobool42.not = icmp ne i32 %handled.3, 0
  %cond43 = zext i1 %tobool42.not to i32
  ret i32 %cond43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd6729_interrupt_wrapper(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1544
  %call = tail call i32 @pd6729_interrupt(i32 noundef 0, ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pd6729_test(i32 noundef %irq, ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_init(ptr noundef %sock) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %io = alloca %struct.pccard_io_map, align 4
  %mem = alloca %struct.pccard_mem_map, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %0 = call ptr @memcpy(ptr %res, ptr @__const.pd6729_init.res, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %io) #8
  %1 = call ptr @memcpy(ptr %io, ptr @__const.pd6729_init.io, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mem) #8
  %2 = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 5
  %3 = call ptr @memset(ptr %mem, i32 0, i32 12)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %res, ptr %2, align 4
  %call = call i32 @pd6729_set_socket(ptr noundef %sock, ptr noundef nonnull @dead_socket)
  %5 = ptrtoint ptr %io to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %io, align 4
  %call3 = call i32 @pd6729_set_io_map(ptr noundef %sock, ptr noundef nonnull %io)
  %6 = ptrtoint ptr %io to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %io, align 4
  %call3.1 = call i32 @pd6729_set_io_map(ptr noundef %sock, ptr noundef nonnull %io)
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mem, align 4
  %call10 = call i32 @pd6729_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mem, align 4
  %call10.1 = call i32 @pd6729_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %mem, align 4
  %call10.2 = call i32 @pd6729_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %mem, align 4
  %call10.3 = call i32 @pd6729_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %mem, align 4
  %call10.4 = call i32 @pd6729_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mem) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %io) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_get_status(ptr nocapture noundef readonly %sock, ptr nocapture noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %.tr.i = trunc i32 %1 to i8
  %2 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %2, 1
  %io_base.i = getelementptr i8, ptr %sock, i32 -8
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %4, 1048575
  %add11.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv6.i) #8, !srcloc !155
  %add13.i = add i32 %4, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %6 = inttoptr i32 %add15.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp = icmp eq i32 %and, 12
  %spec.select = select i1 %cmp, i32 128, i32 0
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %value, align 4
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 8
  %.tr.i68 = trunc i32 %10 to i8
  %11 = shl i8 %.tr.i68, 6
  %conv6.i69 = or i8 %11, 3
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i72 = and i32 %13, 1048575
  %add11.i73 = or i32 %and.i72, -18874368
  %14 = inttoptr i32 %add11.i73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv6.i69) #8, !srcloc !155
  %add13.i74 = add i32 %13, 1
  %and14.i75 = and i32 %add13.i74, 1048575
  %add15.i76 = or i32 %and14.i75, -18874368
  %15 = inttoptr i32 %add15.i76 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i67) #8
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %and11 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  br i1 %tobool12.not, label %if.then5.if.end21.sink.split_crit_edge, label %if.then5.if.end21_crit_edge

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then5.if.end21.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %or14 = or i32 %19, 16
  store i32 %or14, ptr %value, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge
  %and16 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21.sink.split_crit_edge, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end15.if.end21.sink.split_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.end15.if.end21.sink.split_crit_edge, %if.then5.if.end21.sink.split_crit_edge
  %.sink88 = phi i32 [ 1024, %if.then5.if.end21.sink.split_crit_edge ], [ 32, %if.end15.if.end21.sink.split_crit_edge ]
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %or19 = or i32 %21, %.sink88
  store i32 %or19, ptr %value, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end15.if.end21_crit_edge, %if.then5.if.end21_crit_edge
  %and22 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  %or25 = or i32 %23, 1
  store i32 %or25, ptr %value, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %and27 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %or30 = or i32 %25, 64
  store i32 %or30, ptr %value, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %and32 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %or35 = or i32 %27, 256
  store i32 %or35, ptr %value, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %add.ptr38 = getelementptr i8, ptr %sock, i32 1576
  %cond = select i1 %tobool37.not, ptr %add.ptr38, ptr %add.ptr
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond, align 8
  %.tr.i78 = trunc i32 %31 to i8
  %32 = shl i8 %.tr.i78, 6
  %conv6.i79 = or i8 %32, 46
  %io_base.i80 = getelementptr inbounds %struct.pd6729_socket, ptr %cond, i32 0, i32 2
  %33 = ptrtoint ptr %io_base.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_base.i80, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i82 = and i32 %34, 1048575
  %add11.i83 = or i32 %and.i82, -18874368
  %35 = inttoptr i32 %add11.i83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv6.i79) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i = add i32 %34, 1
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %36 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 10) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i77) #8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cond, align 8
  %.tr.i84 = trunc i32 %38 to i8
  %39 = shl i8 %.tr.i84, 6
  %40 = ptrtoint ptr %io_base.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_base.i80, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %conv11.i = or i8 %39, 47
  %and.i86 = and i32 %41, 1048575
  %add12.i = or i32 %and.i86, -18874368
  %42 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv11.i) #8, !srcloc !155
  %add14.i = add i32 %41, 1
  %and15.i = and i32 %add14.i, 1048575
  %add16.i87 = or i32 %and15.i, -18874368
  %43 = inttoptr i32 %add16.i87 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %conv24.i = or i8 %39, 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv24.i) #8, !srcloc !155
  %conv28.i = zext i8 %44 to i32
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %conv36.i = zext i8 %45 to i32
  %shl.i = shl nuw nsw i32 %conv36.i, 8
  %or.i = or i32 %shl.i, %conv28.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call3.i) #8
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 8
  %shl = shl i32 %47, 1
  %shl42 = shl nuw i32 1, %shl
  %and43 = and i32 %shl42, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, i32 4096, i32 0
  %48 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value, align 4
  %or46 = or i32 %cond45, %49
  store i32 %or46, ptr %value, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_set_socket(ptr noundef %sock, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %.tr.i = trunc i32 %1 to i8
  %2 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %2, 30
  %io_base.i = getelementptr i8, ptr %sock, i32 -8
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %4, 1048575
  %add11.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv6.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i = add i32 %4, 1
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %6 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %call2.i363 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %.tr.i364 = trunc i32 %8 to i8
  %9 = shl i8 %.tr.i364, 6
  %conv6.i365 = or i8 %9, 22
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i368 = and i32 %11, 1048575
  %add11.i369 = or i32 %and.i368, -18874368
  %12 = inttoptr i32 %add11.i369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv6.i365) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i370 = add i32 %11, 1
  %and17.i371 = and i32 %add16.i370, 1048575
  %add18.i372 = or i32 %and17.i371, -18874368
  %13 = inttoptr i32 %add18.i372 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i363) #8
  %io_irq = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %io_irq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %io_irq, align 2
  %conv = zext i8 %15 to i32
  %card_irq = getelementptr i8, ptr %sock, i32 -12
  %16 = ptrtoint ptr %card_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %card_irq, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 96
  %21 = xor i8 %20, 64
  %call2.i373 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 8
  %.tr.i374 = trunc i32 %23 to i8
  %24 = shl i8 %.tr.i374, 6
  %conv6.i375 = or i8 %24, 3
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i378 = and i32 %26, 1048575
  %add11.i379 = or i32 %and.i378, -18874368
  %27 = inttoptr i32 %add11.i379 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv6.i375) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i380 = add i32 %26, 1
  %and17.i381 = and i32 %add16.i380, 1048575
  %add18.i382 = or i32 %and17.i381, -18874368
  %28 = inttoptr i32 %add18.i382 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %21) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i373) #8
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %and12 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %entry.if.end24_crit_edge, label %do.body

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then19)) #8
          to label %if.end24 [label %if.then19], !srcloc !153

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.50) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body, %entry.if.end24_crit_edge
  %reg.2 = phi i8 [ 64, %entry.if.end24_crit_edge ], [ 96, %if.then19 ], [ 96, %do.body ]
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %and26 = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end49_crit_edge, label %do.body29

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body29:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then41)) #8
          to label %do.end45 [label %if.then41], !srcloc !153

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %dev42 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug243, ptr noundef %dev42, ptr noundef nonnull @.str.51) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %33 = or i8 %reg.2, -128
  br label %if.end49

if.end49:                                         ; preds = %do.end45, %if.end24.if.end49_crit_edge
  %reg.3 = phi i8 [ %33, %do.end45 ], [ %reg.2, %if.end24.if.end49_crit_edge ]
  %Vcc = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 2
  %34 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %Vcc, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %do.body93 [
    i8 0, label %if.end49.sw.epilog_crit_edge
    i8 33, label %do.body51
    i8 50, label %do.body72
  ]

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body51:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then63)) #8
          to label %do.end67 [label %if.then63], !srcloc !153

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug244, ptr noundef %dev64, ptr noundef nonnull @.str.52, i32 noundef %38) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %call2.i383 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr, align 8
  %.tr.i384 = trunc i32 %40 to i8
  %41 = shl i8 %.tr.i384, 6
  %conv6.i385 = or i8 %41, 22
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %and.i388 = and i32 %43, 1048575
  %add11.i389 = or i32 %and.i388, -18874368
  %44 = inttoptr i32 %add11.i389 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv6.i385) #8, !srcloc !155
  %add13.i = add i32 %43, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %45 = inttoptr i32 %add15.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %or43.i = or i8 %46, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv6.i385) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %or43.i) #8, !srcloc !155
  br label %sw.epilog.sink.split

do.body72:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then84)) #8
          to label %do.end89 [label %if.then84], !srcloc !153

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug245, ptr noundef %dev85, ptr noundef nonnull @.str.53, i32 noundef %48) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.body72
  %call2.i390 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 8
  %.tr.i391 = trunc i32 %50 to i8
  %51 = shl i8 %.tr.i391, 6
  %conv6.i392 = or i8 %51, 22
  %52 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %and.i395 = and i32 %53, 1048575
  %add11.i396 = or i32 %and.i395, -18874368
  %54 = inttoptr i32 %add11.i396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv6.i392) #8, !srcloc !155
  %add13.i397 = add i32 %53, 1
  %and14.i398 = and i32 %add13.i397, 1048575
  %add15.i399 = or i32 %and14.i398, -18874368
  %55 = inttoptr i32 %add15.i399 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %and21.i = and i8 %56, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv6.i392) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %and21.i) #8, !srcloc !155
  br label %sw.epilog.sink.split

do.body93:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then105)) #8
          to label %cleanup [label %if.then105], !srcloc !153

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %dev106 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %57 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %Vcc, align 4
  %conv108 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug246, ptr noundef %dev106, ptr noundef nonnull @.str.54, i32 noundef %conv108) #8
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.end89, %do.end67
  %call2.i390.sink = phi i32 [ %call2.i390, %do.end89 ], [ %call2.i383, %do.end67 ]
  %reg.4.ph = or i8 %reg.3, 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i390.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end49.sw.epilog_crit_edge
  %reg.4 = phi i8 [ %reg.3, %if.end49.sw.epilog_crit_edge ], [ %reg.4.ph, %sw.epilog.sink.split ]
  %Vpp = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 3
  %59 = ptrtoint ptr %Vpp to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %Vpp, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %60, label %do.body176 [
    i8 0, label %do.body114
    i8 33, label %sw.epilog.do.body133_crit_edge
    i8 50, label %sw.epilog.do.body133_crit_edge489
    i8 120, label %do.body155
  ]

sw.epilog.do.body133_crit_edge489:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body133

sw.epilog.do.body133_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body133

do.body114:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then126)) #8
          to label %sw.epilog195 [label %if.then126], !srcloc !153

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  %dev127 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug247, ptr noundef %dev127, ptr noundef nonnull @.str.55, i32 noundef %63) #8
  br label %sw.epilog195

do.body133:                                       ; preds = %sw.epilog.do.body133_crit_edge, %sw.epilog.do.body133_crit_edge489
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then145)) #8
          to label %do.end150 [label %if.then145], !srcloc !153

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  %dev146 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug248, ptr noundef %dev146, ptr noundef nonnull @.str.56, i32 noundef %65) #8
  br label %do.end150

do.end150:                                        ; preds = %if.then145, %do.body133
  %66 = or i8 %reg.4, 1
  br label %sw.epilog195

do.body155:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then167)) #8
          to label %do.end171 [label %if.then167], !srcloc !153

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  %dev168 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug249, ptr noundef %dev168, ptr noundef nonnull @.str.57) #8
  br label %do.end171

do.end171:                                        ; preds = %if.then167, %do.body155
  %67 = or i8 %reg.4, 2
  br label %sw.epilog195

do.body176:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_socket.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_socket, %if.then188)) #8
          to label %cleanup [label %if.then188], !srcloc !153

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #10
  %dev189 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  %68 = ptrtoint ptr %Vpp to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %Vpp, align 1
  %conv191 = zext i8 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_socket.__UNIQUE_ID_ddebug250, ptr noundef %dev189, ptr noundef nonnull @.str.58, i32 noundef %conv191) #8
  br label %cleanup

sw.epilog195:                                     ; preds = %do.end171, %do.end150, %if.then126, %do.body114
  %reg.5 = phi i8 [ %67, %do.end171 ], [ %66, %do.end150 ], [ %reg.4, %if.then126 ], [ %reg.4, %do.body114 ]
  %call2.i400 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr, align 8
  %.tr.i401 = trunc i32 %71 to i8
  %72 = shl i8 %.tr.i401, 6
  %conv6.i402 = or i8 %72, 2
  %73 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i405 = and i32 %74, 1048575
  %add11.i406 = or i32 %and.i405, -18874368
  %75 = inttoptr i32 %add11.i406 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 %conv6.i402) #8, !srcloc !155
  %add13.i407 = add i32 %74, 1
  %and14.i408 = and i32 %add13.i407, 1048575
  %add15.i409 = or i32 %and14.i408, -18874368
  %76 = inttoptr i32 %add15.i409 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i400) #8
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.5, i8 %77)
  %cmp.not = icmp eq i8 %reg.5, %77
  br i1 %cmp.not, label %sw.epilog195.if.end201_crit_edge, label %if.then200

sw.epilog195.if.end201_crit_edge:                 ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then200:                                       ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i410 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr, align 8
  %.tr.i411 = trunc i32 %79 to i8
  %80 = shl i8 %.tr.i411, 6
  %conv6.i412 = or i8 %80, 2
  %81 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i415 = and i32 %82, 1048575
  %add11.i416 = or i32 %and.i415, -18874368
  %83 = inttoptr i32 %add11.i416 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv6.i412) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i417 = add i32 %82, 1
  %and17.i418 = and i32 %add16.i417, 1048575
  %add18.i419 = or i32 %and17.i418, -18874368
  %84 = inttoptr i32 %add18.i419 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %reg.5) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i410) #8
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %sw.epilog195.if.end201_crit_edge
  %85 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp202 = icmp eq i32 %85, 1
  %. = select i1 %cmp202, i8 24, i8 0
  %call2.i420 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr, align 8
  %.tr.i421 = trunc i32 %87 to i8
  %88 = shl i8 %.tr.i421, 6
  %conv6.i422 = or i8 %88, 46
  %89 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i425 = and i32 %90, 1048575
  %add11.i426 = or i32 %and.i425, -18874368
  %91 = inttoptr i32 %add11.i426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %conv6.i422) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i427 = add i32 %90, 1
  %and17.i428 = and i32 %add16.i427, 1048575
  %add18.i429 = or i32 %and17.i428, -18874368
  %92 = inttoptr i32 %add18.i429 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 3) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i420) #8
  %call2.i430 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr, align 8
  %.tr.i431 = trunc i32 %94 to i8
  %95 = shl i8 %.tr.i431, 6
  %conv6.i432 = or i8 %95, 47
  %96 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i435 = and i32 %97, 1048575
  %add11.i436 = or i32 %and.i435, -18874368
  %98 = inttoptr i32 %add11.i436 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 %conv6.i432) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i437 = add i32 %97, 1
  %and17.i438 = and i32 %add16.i437, 1048575
  %add18.i439 = or i32 %and17.i438, -18874368
  %99 = inttoptr i32 %add18.i439 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 %.) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i430) #8
  %csc_mask = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 1
  %100 = ptrtoint ptr %csc_mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %csc_mask, align 4
  %102 = trunc i32 %101 to i8
  %103 = lshr i8 %102, 4
  %104 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state, align 4
  %and214 = and i32 %105, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  %106 = and i8 %103, 8
  %and218 = lshr i32 %101, 10
  %107 = trunc i32 %and218 to i8
  %108 = and i8 %107, 1
  %109 = or i8 %108, %106
  %reg.9 = select i1 %tobool215.not, i8 %103, i8 %109
  %110 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp251 = icmp eq i32 %110, 1
  %111 = or i8 %reg.9, 48
  %spec.select337 = select i1 %cmp251, i8 %111, i8 %reg.9
  %call2.i440 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr, align 8
  %.tr.i441 = trunc i32 %113 to i8
  %114 = shl i8 %.tr.i441, 6
  %conv6.i442 = or i8 %114, 5
  %115 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i445 = and i32 %116, 1048575
  %add11.i446 = or i32 %and.i445, -18874368
  %117 = inttoptr i32 %add11.i446 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %conv6.i442) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i447 = add i32 %116, 1
  %and17.i448 = and i32 %add16.i447, 1048575
  %add18.i449 = or i32 %and17.i448, -18874368
  %118 = inttoptr i32 %add18.i449 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 %spec.select337) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i440) #8
  %call2.i450 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %119 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr, align 8
  %.tr.i451 = trunc i32 %120 to i8
  %121 = shl i8 %.tr.i451, 6
  %conv6.i452 = or i8 %121, 3
  %122 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i455 = and i32 %123, 1048575
  %add11.i456 = or i32 %and.i455, -18874368
  %124 = inttoptr i32 %add11.i456 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv6.i452) #8, !srcloc !155
  %add13.i457 = add i32 %123, 1
  %and14.i458 = and i32 %add13.i457, 1048575
  %add15.i459 = or i32 %and14.i458, -18874368
  %125 = inttoptr i32 %add15.i459 to ptr
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %125) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i450) #8
  %127 = load i32, ptr @irq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp259 = icmp eq i32 %127, 1
  br i1 %cmp259, label %if.end201.if.end270_crit_edge, label %if.else265

if.end201.if.end270_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end270

if.else265:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %card_irq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %card_irq, align 4
  %130 = trunc i32 %129 to i8
  br label %if.end270

if.end270:                                        ; preds = %if.else265, %if.end201.if.end270_crit_edge
  %.sink = phi i8 [ %130, %if.else265 ], [ 3, %if.end201.if.end270_crit_edge ]
  %conv269 = or i8 %126, %.sink
  %call2.i460 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %131 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr, align 8
  %.tr.i461 = trunc i32 %132 to i8
  %133 = shl i8 %.tr.i461, 6
  %conv6.i462 = or i8 %133, 3
  %134 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i465 = and i32 %135, 1048575
  %add11.i466 = or i32 %and.i465, -18874368
  %136 = inttoptr i32 %add11.i466 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 %conv6.i462) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i467 = add i32 %135, 1
  %and17.i468 = and i32 %add16.i467, 1048575
  %add18.i469 = or i32 %and17.i468, -18874368
  %137 = inttoptr i32 %add18.i469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %conv269) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i460) #8
  %call2.i470 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr, align 8
  %.tr.i471 = trunc i32 %139 to i8
  %140 = shl i8 %.tr.i471, 6
  %conv6.i472 = or i8 %140, 4
  %141 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i475 = and i32 %142, 1048575
  %add11.i476 = or i32 %and.i475, -18874368
  %143 = inttoptr i32 %add11.i476 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 %conv6.i472) #8, !srcloc !155
  %add13.i477 = add i32 %142, 1
  %and14.i478 = and i32 %add13.i477, 1048575
  %add15.i479 = or i32 %and14.i478, -18874368
  %144 = inttoptr i32 %add15.i479 to ptr
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %144) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i470) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end270, %if.then188, %do.body176, %if.then105, %do.body93
  %retval.0 = phi i32 [ 0, %if.end270 ], [ -22, %if.then105 ], [ -22, %if.then188 ], [ -22, %do.body93 ], [ -22, %do.body176 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_set_io_map(ptr noundef %sock, ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -16
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pd6729_set_io_map.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pd6729_set_io_map, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !153

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pd6729_set_io_map.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.60) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  %.tr.i = trunc i32 %3 to i8
  %4 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %4, 6
  %io_base.i = getelementptr i8, ptr %sock, i32 -8
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %6, 1048575
  %add11.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv6.i) #8, !srcloc !155
  %add13.i = add i32 %6, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %8 = inttoptr i32 %add15.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %conv9 = zext i8 %9 to i32
  %shl = shl i32 64, %conv
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end7.if.end16_crit_edge, label %if.then12

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = trunc i32 %shl to i8
  %call2.i105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 8
  %.tr.i106 = trunc i32 %11 to i8
  %12 = shl i8 %.tr.i106, 6
  %conv6.i107 = or i8 %12, 6
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %and.i110 = and i32 %14, 1048575
  %add11.i111 = or i32 %and.i110, -18874368
  %15 = inttoptr i32 %add11.i111 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv6.i107) #8, !srcloc !155
  %add13.i112 = add i32 %14, 1
  %and14.i113 = and i32 %add13.i112, 1048575
  %add15.i114 = or i32 %and14.i113, -18874368
  %16 = inttoptr i32 %add15.i114 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %neg.i = xor i8 %conv15, -1
  %and21.i = and i8 %17, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv6.i107) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %and21.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i105) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end7.if.end16_crit_edge
  %shl18 = shl nuw nsw i32 %conv, 2
  %18 = trunc i32 %shl18 to i16
  %conv20 = add nuw nsw i16 %18, 8
  %start = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 3
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start, align 4
  %call2.i115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 8
  %.tr.i116 = trunc i32 %22 to i16
  %23 = shl i16 %.tr.i116, 6
  %conv6.i117 = add i16 %conv20, %23
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %conv10.i119 = trunc i16 %conv6.i117 to i8
  %and.i120 = and i32 %25, 1048575
  %add11.i121 = or i32 %and.i120, -18874368
  %26 = inttoptr i32 %add11.i121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv10.i119) #8, !srcloc !155
  %conv15.i = trunc i32 %20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %add19.i = add i32 %25, 1
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %27 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv15.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %conv26.i = or i8 %conv10.i119, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv26.i) #8, !srcloc !155
  %28 = lshr i32 %20, 8
  %conv31.i = trunc i32 %28 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv31.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i115) #8
  %conv26 = add nuw nsw i16 %18, 10
  %stop = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 4
  %29 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop, align 4
  %call2.i122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 8
  %.tr.i123 = trunc i32 %32 to i16
  %33 = shl i16 %.tr.i123, 6
  %conv6.i124 = add i16 %conv26, %33
  %34 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %conv10.i126 = trunc i16 %conv6.i124 to i8
  %and.i127 = and i32 %35, 1048575
  %add11.i128 = or i32 %and.i127, -18874368
  %36 = inttoptr i32 %add11.i128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv10.i126) #8, !srcloc !155
  %conv15.i129 = trunc i32 %30 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %add19.i130 = add i32 %35, 1
  %and20.i131 = and i32 %add19.i130, 1048575
  %add21.i132 = or i32 %and20.i131, -18874368
  %37 = inttoptr i32 %add21.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv15.i129) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %conv26.i133 = or i8 %conv10.i126, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv26.i133) #8, !srcloc !155
  %38 = lshr i32 %30, 8
  %conv31.i134 = trunc i32 %38 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv31.i134) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i122) #8
  %call2.i135 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr, align 8
  %.tr.i136 = trunc i32 %40 to i8
  %41 = shl i8 %.tr.i136, 6
  %conv6.i137 = or i8 %41, 7
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i140 = and i32 %43, 1048575
  %add11.i141 = or i32 %and.i140, -18874368
  %44 = inttoptr i32 %add11.i141 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv6.i137) #8, !srcloc !155
  %add13.i142 = add i32 %43, 1
  %and14.i143 = and i32 %add13.i142, 1048575
  %add15.i144 = or i32 %and14.i143, -18874368
  %45 = inttoptr i32 %add15.i144 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i135) #8
  %shl32 = shl i32 15, %shl18
  %47 = trunc i32 %shl32 to i8
  %48 = xor i8 %47, -1
  %conv34 = and i8 %46, %48
  %flags = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags, align 1
  %51 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool37.not = icmp eq i8 %51, 0
  %shl41 = shl i32 4, %shl18
  %52 = trunc i32 %shl41 to i8
  %conv43 = select i1 %tobool37.not, i8 0, i8 %52
  %ioctl.0 = or i8 %conv43, %conv34
  %53 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool48.not = icmp eq i8 %53, 0
  %shl52 = shl nuw i32 1, %shl18
  %54 = trunc i32 %shl52 to i8
  %conv55 = select i1 %tobool48.not, i8 0, i8 %54
  %ioctl.1 = or i8 %ioctl.0, %conv55
  %55 = and i8 %50, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool60.not = icmp eq i8 %55, 0
  %shl64 = shl i32 2, %shl18
  %56 = trunc i32 %shl64 to i8
  %conv67 = select i1 %tobool60.not, i8 0, i8 %56
  %ioctl.2 = or i8 %ioctl.1, %conv67
  %call2.i145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr, align 8
  %.tr.i146 = trunc i32 %58 to i8
  %59 = shl i8 %.tr.i146, 6
  %conv6.i147 = or i8 %59, 7
  %60 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i150 = and i32 %61, 1048575
  %add11.i151 = or i32 %and.i150, -18874368
  %62 = inttoptr i32 %add11.i151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %conv6.i147) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i = add i32 %61, 1
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %63 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %ioctl.2) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i145) #8
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags, align 1
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool72.not = icmp eq i8 %66, 0
  br i1 %tobool72.not, label %if.end16.cleanup_crit_edge, label %if.then73

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %conv76 = trunc i32 %shl to i8
  %call2.i152 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr, align 8
  %.tr.i153 = trunc i32 %68 to i8
  %69 = shl i8 %.tr.i153, 6
  %conv6.i154 = or i8 %69, 6
  %70 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %and.i157 = and i32 %71, 1048575
  %add11.i158 = or i32 %and.i157, -18874368
  %72 = inttoptr i32 %add11.i158 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %conv6.i154) #8, !srcloc !155
  %add13.i159 = add i32 %71, 1
  %and14.i160 = and i32 %add13.i159, 1048575
  %add15.i161 = or i32 %and14.i160, -18874368
  %73 = inttoptr i32 %add15.i161 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %or43.i = or i8 %74, %conv76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %conv6.i154) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %or43.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i152) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end16.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ 0, %if.then73 ], [ 0, %if.end16.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pd6729_set_mem_map(ptr noundef %sock, ptr nocapture noundef readonly %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -16
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mem, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ugt i8 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 5
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp ugt i32 %5, %7
  br i1 %cmp4, label %if.end.do.end12_crit_edge, label %lor.lhs.false

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end
  %speed = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 2
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %9)
  %cmp7 = icmp ugt i16 %9, 1000
  br i1 %cmp7, label %lor.lhs.false.do.end12_crit_edge, label %if.end14

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 42
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 8
  %.tr.i = trunc i32 %11 to i8
  %12 = shl i8 %.tr.i, 6
  %conv6.i = or i8 %12, 6
  %io_base.i = getelementptr i8, ptr %sock, i32 -8
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %14, 1048575
  %add11.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv6.i) #8, !srcloc !155
  %add13.i = add i32 %14, 1
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %16 = inttoptr i32 %add15.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i) #8
  %conv15 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv20 = trunc i32 %shl to i8
  %call2.i153 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 8
  %.tr.i154 = trunc i32 %19 to i8
  %20 = shl i8 %.tr.i154, 6
  %conv6.i155 = or i8 %20, 6
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %and.i158 = and i32 %22, 1048575
  %add11.i159 = or i32 %and.i158, -18874368
  %23 = inttoptr i32 %add11.i159 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv6.i155) #8, !srcloc !155
  %add13.i160 = add i32 %22, 1
  %and14.i161 = and i32 %add13.i160, 1048575
  %add15.i162 = or i32 %and14.i161, -18874368
  %24 = inttoptr i32 %add15.i162 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %neg.i = xor i8 %conv20, -1
  %and21.i = and i8 %25, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv6.i155) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %and21.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i153) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %conv.tr = zext i8 %1 to i16
  %26 = shl nuw nsw i16 %conv.tr, 3
  %conv24 = add nuw nsw i16 %26, 16
  %27 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %shr = lshr i32 %30, 12
  %31 = trunc i32 %shr to i16
  %conv28 = and i16 %31, 3840
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 1
  %34 = and i8 %33, 2
  %35 = zext i8 %34 to i16
  %36 = shl nuw i16 %35, 14
  %37 = or i16 %36, %conv28
  %38 = and i8 %33, 8
  %39 = zext i8 %38 to i16
  %40 = shl nuw nsw i16 %39, 11
  %41 = or i16 %37, %40
  %call2.i163 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr, align 8
  %.tr.i164 = trunc i32 %43 to i16
  %44 = shl i16 %.tr.i164, 6
  %conv6.i165 = add nuw i16 %44, %conv24
  %45 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %conv10.i167 = trunc i16 %conv6.i165 to i8
  %and.i168 = and i32 %46, 1048575
  %add11.i169 = or i32 %and.i168, -18874368
  %47 = inttoptr i32 %add11.i169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv10.i167) #8, !srcloc !155
  %conv15.i = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %add19.i = add i32 %46, 1
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %48 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv15.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %conv26.i = or i8 %conv10.i167, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv26.i) #8, !srcloc !155
  %49 = lshr exact i16 %41, 8
  %conv31.i = trunc i16 %49 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv31.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i163) #8
  %50 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %res, align 4
  %end49 = getelementptr inbounds %struct.resource, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %end49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end49, align 4
  %shr50 = lshr i32 %53, 12
  %54 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %speed, align 2
  %56 = udiv i16 %55, 120
  %div = zext i16 %56 to i32
  %conv52233 = lshr i32 %53, 20
  %57 = trunc i32 %conv52233 to i8
  %extract.t232 = and i8 %57, 15
  %58 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %div, label %sw.default [
    i32 0, label %if.end21.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb58
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t230 = or i8 %extract.t232, 64
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t228 = or i8 %extract.t232, -128
  br label %sw.epilog

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t226 = or i8 %extract.t232, -64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb58, %sw.bb, %if.end21.sw.epilog_crit_edge
  %i.2.off8 = phi i8 [ %extract.t226, %sw.default ], [ %extract.t228, %sw.bb58 ], [ %extract.t230, %sw.bb ], [ %extract.t232, %if.end21.sw.epilog_crit_edge ]
  %i.2.off0 = trunc i32 %shr50 to i8
  %add66 = add nuw nsw i16 %26, 18
  %call2.i170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr, align 8
  %.tr.i171 = trunc i32 %60 to i16
  %61 = shl i16 %.tr.i171, 6
  %conv6.i172 = add nuw i16 %add66, %61
  %62 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %conv10.i174 = trunc i16 %conv6.i172 to i8
  %and.i175 = and i32 %63, 1048575
  %add11.i176 = or i32 %and.i175, -18874368
  %64 = inttoptr i32 %add11.i176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv10.i174) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %add19.i178 = add i32 %63, 1
  %and20.i179 = and i32 %add19.i178, 1048575
  %add21.i180 = or i32 %and20.i179, -18874368
  %65 = inttoptr i32 %add21.i180 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %i.2.off0) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %conv26.i181 = or i8 %conv10.i174, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv26.i181) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %i.2.off8) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i170) #8
  %add69 = add nuw nsw i8 %1, 5
  %call2.i183 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr, align 8
  %.tr.i184 = trunc i32 %67 to i8
  %68 = shl i8 %.tr.i184, 6
  %conv6.i185 = or i8 %68, 46
  %69 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i188 = and i32 %70, 1048575
  %add11.i189 = or i32 %and.i188, -18874368
  %71 = inttoptr i32 %add11.i189 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %conv6.i185) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i = add i32 %70, 1
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %72 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %add69) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i183) #8
  %73 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %res, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %shr73 = lshr i32 %76, 24
  %conv74 = trunc i32 %shr73 to i8
  %call2.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr, align 8
  %.tr.i191 = trunc i32 %78 to i8
  %79 = shl i8 %.tr.i191, 6
  %conv6.i192 = or i8 %79, 47
  %80 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %and.i195 = and i32 %81, 1048575
  %add11.i196 = or i32 %and.i195, -18874368
  %82 = inttoptr i32 %add11.i196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %conv6.i192) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %add16.i197 = add i32 %81, 1
  %and17.i198 = and i32 %add16.i197, 1048575
  %add18.i199 = or i32 %and17.i198, -18874368
  %83 = inttoptr i32 %add18.i199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv74) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i190) #8
  %card_start = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 4
  %84 = ptrtoint ptr %card_start to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %card_start, align 4
  %86 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %res, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %sub = sub i32 %85, %89
  %shr77 = lshr i32 %sub, 12
  %90 = trunc i32 %shr77 to i16
  %conv79 = and i16 %90, 16128
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags, align 1
  %93 = and i8 %92, 16
  %94 = zext i8 %93 to i16
  %95 = shl nuw i16 %94, 11
  %96 = or i16 %95, %conv79
  %97 = and i8 %92, 32
  %98 = zext i8 %97 to i16
  %99 = shl nuw nsw i16 %98, 9
  %100 = or i16 %96, %99
  %narrow = add nuw nsw i16 %26, 20
  %call2.i200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr, align 8
  %.tr.i201 = trunc i32 %102 to i16
  %103 = shl i16 %.tr.i201, 6
  %conv6.i202 = add nuw i16 %narrow, %103
  %104 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %conv10.i204 = trunc i16 %conv6.i202 to i8
  %and.i205 = and i32 %105, 1048575
  %add11.i206 = or i32 %and.i205, -18874368
  %106 = inttoptr i32 %add11.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %conv10.i204) #8, !srcloc !155
  %conv15.i207 = trunc i32 %shr77 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %add19.i208 = add i32 %105, 1
  %and20.i209 = and i32 %add19.i208, 1048575
  %add21.i210 = or i32 %and20.i209, -18874368
  %107 = inttoptr i32 %add21.i210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %conv15.i207) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %conv26.i211 = or i8 %conv10.i204, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %conv26.i211) #8, !srcloc !155
  %108 = lshr exact i16 %100, 8
  %conv31.i212 = trunc i16 %108 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %conv31.i212) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i200) #8
  %109 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool104.not = icmp eq i8 %111, 0
  br i1 %tobool104.not, label %sw.epilog.cleanup_crit_edge, label %if.then105

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv108 = trunc i32 %shl to i8
  %call2.i213 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_lock) #8
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr, align 8
  %.tr.i214 = trunc i32 %113 to i8
  %114 = shl i8 %.tr.i214, 6
  %conv6.i215 = or i8 %114, 6
  %115 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_base.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %and.i218 = and i32 %116, 1048575
  %add11.i219 = or i32 %and.i218, -18874368
  %117 = inttoptr i32 %add11.i219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %conv6.i215) #8, !srcloc !155
  %add13.i220 = add i32 %116, 1
  %and14.i221 = and i32 %add13.i220, 1048575
  %add15.i222 = or i32 %and14.i221, -18874368
  %118 = inttoptr i32 %add15.i222 to ptr
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %118) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %or43.i = or i8 %119, %conv108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %conv6.i215) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 %or43.i) #8, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_lock, i32 noundef %call2.i213) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %sw.epilog.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %if.then105 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i11 @llvm.bitreverse.i11(i11) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/pd6729.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/pd6729.c", i32 28, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/pcmcia/pd6729.c", i32 29, i32 1}
!7 = !{ptr @__param_irq_mode, !8, !"__param_irq_mode", i1 false, i1 false}
!8 = !{!"../drivers/pcmcia/pd6729.c", i32 53, i32 1}
!9 = !{ptr @__UNIQUE_ID_irq_modetype240, !8, !"__UNIQUE_ID_irq_modetype240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_irq_mode241, !11, !"__UNIQUE_ID_irq_mode241", i1 false, i1 false}
!11 = !{!"../drivers/pcmcia/pd6729.c", i32 54, i32 1}
!12 = !{ptr @__initcall__kmod_pd6729__253_777_pd6729_pci_driver_init6, !13, !"__initcall__kmod_pd6729__253_777_pd6729_pci_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/pcmcia/pd6729.c", i32 777, i32 1}
!14 = !{ptr @__exitcall_pd6729_pci_driver_exit, !13, !"__exitcall_pd6729_pci_driver_exit", i1 false, i1 false}
!15 = !{ptr @__param_str_irq_mode, !8, !"__param_str_irq_mode", i1 false, i1 false}
!16 = !{ptr @irq_mode, !17, !"irq_mode", i1 false, i1 false}
!17 = !{!"../drivers/pcmcia/pd6729.c", i32 51, i32 12}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pd6729_pci_driver, !20, !"pd6729_pci_driver", i1 false, i1 false}
!20 = !{!"../drivers/pcmcia/pd6729.c", i32 770, i32 26}
!21 = !{ptr @pd6729_pci_ids, !22, !"pd6729_pci_ids", i1 false, i1 false}
!22 = !{!"../drivers/pcmcia/pd6729.c", i32 764, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pcmcia/pd6729.c", i32 634, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pd6729_pci_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @pd6729_pci_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pcmcia/pd6729.c", i32 640, i32 3}
!33 = !{ptr @pd6729_pci_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pd6729_pci_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pcmcia/pd6729.c", i32 645, i32 3}
!37 = !{ptr @pd6729_pci_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pd6729_pci_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pcmcia/pd6729.c", i32 651, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pd6729_pci_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pd6729_pci_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pcmcia/pd6729.c", i32 660, i32 3}
!46 = !{ptr @pd6729_pci_probe.__UNIQUE_ID_ddebug252, !45, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pcmcia/pd6729.c", i32 667, i32 3}
!49 = !{ptr @pd6729_pci_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pd6729_pci_probe._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pcmcia/pd6729.c", i32 676, i32 3}
!53 = !{ptr @pd6729_pci_probe._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pd6729_pci_probe._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pcmcia/pd6729.c", i32 704, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pd6729_pci_probe._entry.23, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @pd6729_pci_probe._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @pd6729_pci_probe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/pcmcia/pd6729.c", i32 710, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pcmcia/pd6729.c", i32 717, i32 4}
!65 = !{ptr @pd6729_pci_probe._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pd6729_pci_probe._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pcmcia/pd6729.c", i32 598, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pd6729_isa_scan._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pd6729_isa_scan._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pcmcia/pd6729.c", i32 610, i32 2}
!74 = !{ptr @pd6729_isa_scan._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pd6729_isa_scan._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pcmcia/pd6729.c", i32 613, i32 4}
!78 = !{ptr @pd6729_isa_scan._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pd6729_isa_scan._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pcmcia/pd6729.c", i32 616, i32 3}
!84 = !{ptr @pd6729_isa_scan._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pd6729_isa_scan._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pcmcia/pd6729.c", i32 618, i32 3}
!88 = !{ptr @pd6729_isa_scan._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pd6729_isa_scan._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pcmcia/pd6729.c", i32 583, i32 57}
!92 = !{ptr @pd6729_operations, !93, !"pd6729_operations", i1 false, i1 false}
!93 = !{!"../drivers/pcmcia/pd6729.c", i32 565, i32 33}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pcmcia/pd6729.c", i32 57, i32 8}
!96 = !{ptr @port_lock, !95, !"port_lock", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pcmcia/pd6729.c", i32 322, i32 3}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug242, !98, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pcmcia/pd6729.c", i32 326, i32 3}
!103 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug243, !102, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pcmcia/pd6729.c", i32 334, i32 3}
!106 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug244, !105, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pcmcia/pd6729.c", i32 341, i32 3}
!109 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug245, !108, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pcmcia/pd6729.c", i32 348, i32 3}
!112 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug246, !111, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pcmcia/pd6729.c", i32 356, i32 3}
!115 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug247, !114, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pcmcia/pd6729.c", i32 361, i32 3}
!118 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug248, !117, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pcmcia/pd6729.c", i32 366, i32 3}
!121 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug249, !120, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pcmcia/pd6729.c", i32 370, i32 3}
!124 = !{ptr @pd6729_set_socket.__UNIQUE_ID_ddebug250, !123, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pcmcia/pd6729.c", i32 433, i32 3}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pd6729_set_io_map.__UNIQUE_ID_ddebug251, !126, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pcmcia/pd6729.c", i32 476, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @pd6729_set_mem_map._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @pd6729_set_mem_map._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pcmcia/pd6729.c", i32 481, i32 3}
!136 = !{ptr @pd6729_set_mem_map._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pd6729_set_mem_map._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pcmcia/pd6729.c", i32 184, i32 4}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @pd6729_interrupt._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @pd6729_interrupt._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i64 2148708325, i64 2148708330, i64 2148708343, i64 2148708387, i64 2148708421, i64 2148708442}
!154 = !{i64 2154459777}
!155 = !{i64 5388636}
!156 = !{i64 2154460101}
!157 = !{i64 2154457288}
!158 = !{i64 5389031}
!159 = !{i64 2154457678}
!160 = !{i64 2154458235}
!161 = !{i64 2154458625}
!162 = !{i64 2154458830}
!163 = !{i64 2154459220}
!164 = !{i64 2154460775}
!165 = !{i64 2154461165}
!166 = !{i64 2154461370}
!167 = !{i64 2154461692}
!168 = !{i64 2154462366}
!169 = !{i64 2154462756}
!170 = !{i64 2154462961}
!171 = !{i64 2154463283}
!172 = !{i64 2154463957}
!173 = !{i64 2154464279}
!174 = !{i64 2154464601}
!175 = !{i64 2154464923}
